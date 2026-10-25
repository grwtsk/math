# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2d0fd7209d36eb961429a210ab25b8f69ea3c0ecd4c54c8c887ed66dad2bd52f",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--46efad35f1fbf133e667c365",
  "source": {
    "blob": "33a3472ff632c0bbecff59f080b39da765d3b1be",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 54,
    "line": 29,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Instances/Variant0f2a6dd1b213daa86c9aaf3538809604a8feb88c540dd6b1e790d60b8b2f2333.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:46efad35f1fbf133e667c3656e20f1c077005bdb1139852d999a863628e0d748",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Instances/Variant0f2a6dd1b213daa86c9aaf3538809604a8feb88c540dd6b1e790d60b8b2f2333.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2d0fd7209d36eb961429a210ab25b8f69ea3c0ecd4c54c8c887ed66dad2bd52f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 29–54.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : CommRing Dyadic where
  nsmul := ⟨(· * ·)⟩
  zsmul := ⟨(· * ·)⟩
  add_zero := Dyadic.add_zero
  add_comm := Dyadic.add_comm
  add_assoc := Dyadic.add_assoc
  mul_assoc := Dyadic.mul_assoc
  mul_one := Dyadic.mul_one
  one_mul := Dyadic.one_mul
  zero_mul := Dyadic.zero_mul
  mul_zero := Dyadic.mul_zero
  mul_comm := Dyadic.mul_comm
  pow_zero := Dyadic.pow_zero
  pow_succ := Dyadic.pow_succ
  sub_eq_add_neg _ _ := rfl
  neg_add_cancel := Dyadic.neg_add_cancel
  neg_zsmul i a := by
    change ((-i : Int) : Dyadic) * a = -(i * a)
    simp [← toRat_inj, Rat.neg_mul]
  left_distrib := Dyadic.mul_add
  right_distrib := Dyadic.add_mul
  intCast_neg _ := by simp [← toRat_inj]
  ofNat_succ n := by
    change ((n + 1 : Int) : Dyadic) = ((n : Int) : Dyadic) + 1
    simp [← toRat_inj, Rat.intCast_add]; rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Instances/Variant0f2a6dd1b213daa86c9aaf3538809604a8feb88c540dd6b1e790d60b8b2f2333.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Instances/Variant0f2a6dd1b213daa86c9aaf3538809604a8feb88c540dd6b1e790d60b8b2f2333.lean#L29).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `33a3472ff632c0bbecff59f080b39da765d3b1be` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
