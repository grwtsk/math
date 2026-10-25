# evalIntMod.go

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ea9b8bf0e51201f08ffbe311afbe40a5b26489974a7bcc1e1a7d92d80e547a8a",
  "kind": "def",
  "lexical_name": "evalIntMod.go",
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
  "slug": "evalintmod-go--869843474c89fbeb811adac8",
  "source": {
    "blob": "cec2568c179cb94819a365f6858ac128ccaa9482",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 148,
    "line": 113,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DivMod/Variant0da1736a17f394df8b4361fe8e4f4240867f6be120ef489ef72e992ed027106f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:869843474c89fbeb811adac8bb226c237662788f250c97a4e0643ae5fe1cbbf4",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DivMod/Variant0da1736a17f394df8b4361fe8e4f4240867f6be120ef489ef72e992ed027106f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ea9b8bf0e51201f08ffbe311afbe40a5b26489974a7bcc1e1a7d92d80e547a8a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 113–148.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def evalIntMod.go (a na : Q(ℤ)) (za : ℤ) (pa : Q(IsInt $a $na))
    (b : Q(ℤ)) : Result (u := .zero) b → Option (Result q($a % $b))
  | .isNat _ nb pb => do
    assumeInstancesCommute
    if nb.natLit! == 0 then
      have _ : $nb =Q nat_lit 0 := ⟨⟩
      return .isInt q(Int.instRing) na za q(isInt_emod_zero $pa $pb)
    else
      let ⟨r, p⟩ := core a na za pa b nb pb
      return .isNat q(instAddMonoidWithOne) r p
  | .isNegNat _ nb pb => do
    assumeInstancesCommute
    let ⟨r, p⟩ := core a na za pa q(-$b) nb q(isNat_neg_of_isNegNat $pb)
    return .isNat q(instAddMonoidWithOne) r q(isInt_emod_neg $p)
  | _ => none
where
  /-- Given a result for evaluating `a b` in `ℤ` where `b > 0`, evaluate `a % b`. -/
  core (a na : Q(ℤ)) (za : ℤ) (pa : Q(IsInt $a $na))
      (b : Q(ℤ)) (nb : Q(ℕ)) (pb : Q(IsNat $b $nb)) :
      (r : Q(ℕ)) × Q(IsNat ($a % $b) $r) :=
    let b := nb.natLit!
    let q := za / b
    have nq := mkRawIntLit q
    let r := za.natMod b
    have nr : Q(ℕ) := mkRawNatLit r
    let m := q * b
    have nm := mkRawIntLit m
    have pf₁ : Q($nq * $nb = $nm) := (q(Eq.refl $nm) :)
    have pf₂ : Q($nr + $nm = $na) := (q(Eq.refl $na) :)
    have pf₃ : Q(Nat.blt $nr $nb = true) := (q(Eq.refl true) :)
    ⟨nr, q(isInt_emod $pa $pb $pf₁ $pf₂ $pf₃)⟩

attribute [local instance] monadLiftOptionMetaM in
/-- The `norm_num` extension which identifies expressions of the form `Int.emod a b`,
such that `norm_num` successfully recognises both `a` and `b`. -/
@[norm_num (_ : ℤ) % _, Int.emod _ _]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DivMod/Variant0da1736a17f394df8b4361fe8e4f4240867f6be120ef489ef72e992ed027106f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DivMod/Variant0da1736a17f394df8b4361fe8e4f4240867f6be120ef489ef72e992ed027106f.lean#L113).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cec2568c179cb94819a365f6858ac128ccaa9482` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
