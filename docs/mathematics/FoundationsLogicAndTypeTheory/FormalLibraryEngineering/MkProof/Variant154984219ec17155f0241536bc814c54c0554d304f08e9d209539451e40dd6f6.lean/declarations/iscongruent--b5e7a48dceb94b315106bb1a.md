# isCongruent

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:85543fb36f3b20e8633246684ee93ac49569b24c2b201b79c85b84d4d6144b60",
  "kind": "def",
  "lexical_name": "isCongruent",
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
  "slug": "iscongruent--b5e7a48dceb94b315106bb1a",
  "source": {
    "blob": "dfc379783c76d7ad01c62f53e4cc6306991feafd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 110,
    "line": 65,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MkProof/Variant154984219ec17155f0241536bc814c54c0554d304f08e9d209539451e40dd6f6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b5e7a48dceb94b315106bb1a425c0f9b456320a45d8b8d468e078fb2e513663a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MkProof/Variant154984219ec17155f0241536bc814c54c0554d304f08e9d209539451e40dd6f6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:85543fb36f3b20e8633246684ee93ac49569b24c2b201b79c85b84d4d6144b60`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 65–110.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def isCongruent (e₁ e₂ : Expr) : CCM Bool := do
  let .app f a := e₁ | failure
  let .app g b := e₂ | failure
  -- If they are non-dependent functions, then we can compare all arguments at once.
  if (← getEntry e₁).any Entry.fo then
    e₁.withApp fun f₁ args₁ =>
    e₂.withApp fun f₂ args₂ => do
      if ha : args₁.size = args₂.size then
        for hi : i in [:args₁.size] do
          if (← getRoot args₁[i]) != (← getRoot (args₂[i]'(ha.symm ▸ hi.2.1))) then
            return false
        if f₁ == f₂ then return true
        else if (← getRoot f₁) != (← getRoot f₂) then
          -- `f₁` and `f₂` are not equivalent
          return false
        else if ← pureIsDefEq (← inferType f₁) (← inferType f₂) then
          return true
        else return false
      else return false
  else
    -- Given `e₁ := f a`, `e₂ := g b`
    if (← getRoot a) != (← getRoot b) then
      -- `a` and `b` are not equivalent
      return false
    else if (← getRoot f) != (← getRoot g) then
      -- `f` and `g` are not equivalent
      return false
    else if ← pureIsDefEq (← inferType f) (← inferType g) then
      /- Case 1: `f` and `g` have the same type, then we can create a congruence proof for
         `HEq (f a) (g b)` -/
      return true
    else if f.isApp && g.isApp then
      -- Case 2: `f` and `g` are congruent
      isCongruent f g
    else
      /-
      f and g are not congruent nor they have the same type.
      We can't generate a congruence proof in this case because the following lemma
        `hcongr : HEq f₁ f₂ → HEq a₁ a₂ → HEq (f₁ a₁) (f₂ a₂)`
      is not provable.
      Remark: it is also not provable in MLTT, Coq and Agda (even if we assume UIP).
      -/
      return false

/-- Try to find a congruence theorem for an application of `fn` with `nargs` arguments, with support
for `HEq`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MkProof/Variant154984219ec17155f0241536bc814c54c0554d304f08e9d209539451e40dd6f6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MkProof/Variant154984219ec17155f0241536bc814c54c0554d304f08e9d209539451e40dd6f6.lean#L65).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dfc379783c76d7ad01c62f53e4cc6306991feafd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
