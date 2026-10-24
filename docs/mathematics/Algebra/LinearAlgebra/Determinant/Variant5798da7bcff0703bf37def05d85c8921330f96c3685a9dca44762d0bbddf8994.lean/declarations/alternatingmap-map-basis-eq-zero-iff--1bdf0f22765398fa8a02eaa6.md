# AlternatingMap.map_basis_eq_zero_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:036da586-c9a4-ae1c-4bef-58d7bb3dde85",
  "kind": "theorem",
  "lexical_name": "AlternatingMap.map_basis_eq_zero_iff",
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
  "slug": "alternatingmap-map-basis-eq-zero-iff--1bdf0f22765398fa8a02eaa6",
  "source": {
    "blob": "0e9579694b898742a80ba221afe136e8d655c2d6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 597,
    "line": 589,
    "path": "GRWTSK/Algebra/LinearAlgebra/Determinant/Variant5798da7bcff0703bf37def05d85c8921330f96c3685a9dca44762d0bbddf8994.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1bdf0f22765398fa8a02eaa640b0c5d8b88503041f2429f9a3712f47aafb155c",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Determinant/Variant5798da7bcff0703bf37def05d85c8921330f96c3685a9dca44762d0bbddf8994.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:036da586-c9a4-ae1c-4bef-58d7bb3dde85`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 589–597.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem AlternatingMap.map_basis_eq_zero_iff {ι : Type*} [Finite ι] (e : Basis ι R M)
    (f : AlternatingMap R M R ι) : f e = 0 ↔ f = 0 :=
  ⟨fun h => by
    cases nonempty_fintype ι
    letI := Classical.decEq ι
    simpa [h] using f.eq_smul_basis_det e,
   fun h => h.symm ▸ AlternatingMap.zero_apply _⟩
#align alternating_map.map_basis_eq_zero_iff AlternatingMap.map_basis_eq_zero_iff

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Determinant/Variant5798da7bcff0703bf37def05d85c8921330f96c3685a9dca44762d0bbddf8994.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Determinant/Variant5798da7bcff0703bf37def05d85c8921330f96c3685a9dca44762d0bbddf8994.lean#L589).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0e9579694b898742a80ba221afe136e8d655c2d6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
