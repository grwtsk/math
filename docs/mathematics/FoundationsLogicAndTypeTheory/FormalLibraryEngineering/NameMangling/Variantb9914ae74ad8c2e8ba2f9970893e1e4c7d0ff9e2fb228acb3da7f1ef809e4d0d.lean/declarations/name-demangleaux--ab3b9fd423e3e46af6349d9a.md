# Name.demangleAux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bb069d3c52b4fe62d8d8d2db0bb646fd4d69446249ae0c590d56dbefc908229d",
  "kind": "def",
  "lexical_name": "Name.demangleAux",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "name-demangleaux--ab3b9fd423e3e46af6349d9a",
  "source": {
    "blob": "7e08d8ef771904ac0c8419368d637846486fc9a6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 234,
    "line": 173,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NameMangling/Variantb9914ae74ad8c2e8ba2f9970893e1e4c7d0ff9e2fb228acb3da7f1ef809e4d0d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ab3b9fd423e3e46af6349d9a07d44b2a4c201e4f67fd436e42daecffd2ef9f76",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NameMangling/Variantb9914ae74ad8c2e8ba2f9970893e1e4c7d0ff9e2fb228acb3da7f1ef809e4d0d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bb069d3c52b4fe62d8d8d2db0bb646fd4d69446249ae0c590d56dbefc908229d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 173–234.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Name.demangleAux (s : String) (p₀ : s.Pos) (res : Name)
    (acc : String) (ucount : Nat) : Name :=
  if hp₀ : p₀ = s.endPos then res.str (acc.pushn '_' (ucount / 2)) else
  let ch := p₀.get hp₀
  let p := p₀.next hp₀
  if ch = '_' then demangleAux s p res acc (ucount + 1) else
  if ucount % 2 = 0 then
    demangleAux s p res (acc.pushn '_' (ucount / 2) |>.push ch) 0
  else if ch.isDigit then
    let res := res.str (acc.pushn '_' (ucount / 2))
    if h : ch = '0' ∧ ∃ h : p ≠ s.endPos, p.get h = '0' then
      demangleAux s (p.next h.2.1) res "" 0
    else
      decodeNum s p res (ch.val - 48).toNat
  else
    match ch, h₁ : parseLowerHex? 2 s p 0 with
    | 'x', some (q, v) =>
      let acc := acc.pushn '_' (ucount / 2)
      have : p₀ < q := String.Pos.lt_trans p₀.lt_next (lt_of_parseLowerHex?_eq_some (by decide) h₁)
      demangleAux s q res (acc.push (Char.ofNat v)) 0
    | _, _ =>
      match ch, h₂ : parseLowerHex? 4 s p 0 with
      | 'u', some (q, v) =>
        let acc := acc.pushn '_' (ucount / 2)
        have : p₀ < q := String.Pos.lt_trans p₀.lt_next (lt_of_parseLowerHex?_eq_some (by decide) h₂)
        demangleAux s q res (acc.push (Char.ofNat v)) 0
      | _, _ =>
        match ch, h₃ : parseLowerHex? 8 s p 0 with
        | 'U', some (q, v) =>
          let acc := acc.pushn '_' (ucount / 2)
          have : p₀ < q := String.Pos.lt_trans p₀.lt_next (lt_of_parseLowerHex?_eq_some (by decide) h₃)
          demangleAux s q res (acc.push (Char.ofNat v)) 0
        | _, _ => demangleAux s p (res.str acc) ("".pushn '_' (ucount / 2) |>.push ch) 0
termination_by p₀
where
  decodeNum (s : String) (p : s.Pos) (res : Name) (n : Nat) : Name :=
    if h : p = s.endPos then res.num n else
    let ch := p.get h
    let p := p.next h
    if ch.isDigit then
      decodeNum s p res (n * 10 + (ch.val - 48).toNat)
    else -- assume ch = '_'
      let res := res.num n
      if h : p = s.endPos then res else
      nameStart s (p.next h) res -- assume s.get' p h = '_'
  termination_by p
  nameStart (s : String) (p : s.Pos) (res : Name) : Name :=
    if h : p = s.endPos then res else
    let ch := p.get h
    let p := p.next h
    if ch.isDigit then
      if h : ch = '0' ∧ ∃ h : p ≠ s.endPos, p.get h = '0' then
        demangleAux s (p.next h.2.1) res "" 0
      else
        decodeNum s p res (ch.val - 48).toNat
    else if ch = '_' then
      demangleAux s p res "" 1
    else
      demangleAux s p res (String.singleton ch) 0
  termination_by p

/-- Assuming `s` has been produced by `Name.mangle _ ""`, return the original name. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NameMangling/Variantb9914ae74ad8c2e8ba2f9970893e1e4c7d0ff9e2fb228acb3da7f1ef809e4d0d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NameMangling/Variantb9914ae74ad8c2e8ba2f9970893e1e4c7d0ff9e2fb228acb3da7f1ef809e4d0d.lean#L173).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7e08d8ef771904ac0c8419368d637846486fc9a6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
