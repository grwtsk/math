# natDegree_eq_reverse_natDegree_add_natTrailingDegree

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:44e54bb9-52d5-6fc1-92f4-f63f4e9e274a",
  "kind": "theorem",
  "lexical_name": "natDegree_eq_reverse_natDegree_add_natTrailingDegree",
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
  "slug": "natdegree-eq-reverse-natdegree-add-nattrailingdegree--b7f03cf00bbcc50460ca7aa5",
  "source": {
    "blob": "29062b5ab82c0ee24904586a14ad4c76993c79af",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 263,
    "line": 250,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Reverse/Variant495bd4ea05d31e61793fdd8954ec12435e0240ee74f685ef4b30f35e7c485bec.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b7f03cf00bbcc50460ca7aa5ed004f3762d9cb87be01729fecd9ab4d616953b7",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Reverse/Variant495bd4ea05d31e61793fdd8954ec12435e0240ee74f685ef4b30f35e7c485bec.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:44e54bb9-52d5-6fc1-92f4-f63f4e9e274a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 250–263.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem natDegree_eq_reverse_natDegree_add_natTrailingDegree (f : R[X]) :
    f.natDegree = f.reverse.natDegree + f.natTrailingDegree := by
  by_cases hf : f = 0
  · rw [hf, reverse_zero, natDegree_zero, natTrailingDegree_zero]
  apply le_antisymm
  · refine tsub_le_iff_right.mp ?_
    apply le_natDegree_of_ne_zero
    rw [reverse, coeff_reflect, ← revAt_le f.natTrailingDegree_le_natDegree, revAt_invol]
    exact trailingCoeff_nonzero_iff_nonzero.mpr hf
  · rw [← le_tsub_iff_left f.reverse_natDegree_le]
    apply natTrailingDegree_le_of_ne_zero
    have key := mt leadingCoeff_eq_zero.mp (mt reverse_eq_zero.mp hf)
    rwa [leadingCoeff, coeff_reverse, revAt_le f.reverse_natDegree_le] at key

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Reverse/Variant495bd4ea05d31e61793fdd8954ec12435e0240ee74f685ef4b30f35e7c485bec.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Reverse/Variant495bd4ea05d31e61793fdd8954ec12435e0240ee74f685ef4b30f35e7c485bec.lean#L250).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `29062b5ab82c0ee24904586a14ad4c76993c79af` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
