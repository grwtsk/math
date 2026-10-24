# centralizer_tensorProduct_eq_center_tensorProduct_left

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b107a8ea-9c35-72ae-0d72-9255783d61cf",
  "kind": "lemma",
  "lexical_name": "centralizer_tensorProduct_eq_center_tensorProduct_left",
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
  "slug": "centralizer-tensorproduct-eq-center-tensorproduct-left--b83c1b604b8fdebaad3ab225",
  "source": {
    "blob": "5ea0953db1113018ab668d03c5f7f3620b4dc6f2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 193,
    "line": 187,
    "path": "GRWTSK/Algebra/LinearAlgebra/Centralizer/Varianta677f557607aa789249ad171c649c05d96c4b58b5d76d6abfb2320c24528e75b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b83c1b604b8fdebaad3ab2250612d88dccbb0973d42270116e331237b216c26f",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Centralizer/Varianta677f557607aa789249ad171c649c05d96c4b58b5d76d6abfb2320c24528e75b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b107a8ea-9c35-72ae-0d72-9255783d61cf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 187–193.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma centralizer_tensorProduct_eq_center_tensorProduct_left [Module.Free R B] :
    Subalgebra.centralizer R
      (Algebra.TensorProduct.map (AlgHom.id R A) (Algebra.ofId R B)).range =
    (Algebra.TensorProduct.map (Subalgebra.center R A).val (AlgHom.id R B)).range := by
  rw [← centralizer_coe_range_includeLeft_eq_center_tensorProduct]
  simp [Algebra.TensorProduct.map_range]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Centralizer/Varianta677f557607aa789249ad171c649c05d96c4b58b5d76d6abfb2320c24528e75b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Centralizer/Varianta677f557607aa789249ad171c649c05d96c4b58b5d76d6abfb2320c24528e75b.lean#L187).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5ea0953db1113018ab668d03c5f7f3620b4dc6f2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
