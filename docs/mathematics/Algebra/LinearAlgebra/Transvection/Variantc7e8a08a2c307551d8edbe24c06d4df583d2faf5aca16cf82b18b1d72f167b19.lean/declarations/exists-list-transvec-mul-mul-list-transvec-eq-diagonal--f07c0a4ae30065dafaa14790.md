# exists_list_transvec_mul_mul_list_transvec_eq_diagonal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3019458a-9e92-d336-0c62-1c5c01804269",
  "kind": "theorem",
  "lexical_name": "exists_list_transvec_mul_mul_list_transvec_eq_diagonal",
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
  "slug": "exists-list-transvec-mul-mul-list-transvec-eq-diagonal--f07c0a4ae30065dafaa14790",
  "source": {
    "blob": "988de09fad2e152432ddd4bf1e6f388f5e904ce2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 686,
    "line": 677,
    "path": "GRWTSK/Algebra/LinearAlgebra/Transvection/Variantc7e8a08a2c307551d8edbe24c06d4df583d2faf5aca16cf82b18b1d72f167b19.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f07c0a4ae30065dafaa14790afcd4469f8b30936234ee20ef22c0644eb9814d5",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Transvection/Variantc7e8a08a2c307551d8edbe24c06d4df583d2faf5aca16cf82b18b1d72f167b19.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3019458a-9e92-d336-0c62-1c5c01804269`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 677–686.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_list_transvec_mul_mul_list_transvec_eq_diagonal (M : Matrix n n 𝕜) :
    ∃ (L L' : List (TransvectionStruct n 𝕜)) (D : n → 𝕜),
      (L.map toMatrix).prod * M * (L'.map toMatrix).prod = diagonal D := by
  have e : n ≃ Fin (Fintype.card n) := Fintype.equivOfCardEq (by simp)
  apply reindex_exists_list_transvec_mul_mul_list_transvec_eq_diagonal M e
  apply exists_list_transvec_mul_mul_list_transvec_eq_diagonal_aux
#align matrix.pivot.exists_list_transvec_mul_mul_list_transvec_eq_diagonal Matrix.Pivot.exists_list_transvec_mul_mul_list_transvec_eq_diagonal

/-- Any matrix can be written as the product of transvections, a diagonal matrix, and
transvections.-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Transvection/Variantc7e8a08a2c307551d8edbe24c06d4df583d2faf5aca16cf82b18b1d72f167b19.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Transvection/Variantc7e8a08a2c307551d8edbe24c06d4df583d2faf5aca16cf82b18b1d72f167b19.lean#L677).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `988de09fad2e152432ddd4bf1e6f388f5e904ce2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
