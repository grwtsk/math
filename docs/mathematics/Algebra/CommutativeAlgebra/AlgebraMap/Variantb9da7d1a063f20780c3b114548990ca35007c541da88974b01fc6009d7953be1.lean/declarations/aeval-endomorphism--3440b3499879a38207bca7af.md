# aeval_endomorphism

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f3f0a33f-9505-964d-9450-f0c3582eda8e",
  "kind": "theorem",
  "lexical_name": "aeval_endomorphism",
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
  "slug": "aeval-endomorphism--3440b3499879a38207bca7af",
  "source": {
    "blob": "ad77ac2de76769e5d07c802ee0d75491401807e4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 524,
    "line": 518,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/AlgebraMap/Variantb9da7d1a063f20780c3b114548990ca35007c541da88974b01fc6009d7953be1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3440b3499879a38207bca7af9bb3a7874b8e561c747830710dbda9510fb3f383",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/AlgebraMap/Variantb9da7d1a063f20780c3b114548990ca35007c541da88974b01fc6009d7953be1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f3f0a33f-9505-964d-9450-f0c3582eda8e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 518–524.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem aeval_endomorphism {M : Type*} [CommRing R] [AddCommGroup M] [Module R M] (f : M →ₗ[R] M)
    (v : M) (p : R[X]) : aeval f p v = p.sum fun n b => b • (f ^ n) v := by
  rw [aeval_def, eval₂_eq_sum]
  exact (LinearMap.applyₗ v).map_sum
#align polynomial.aeval_endomorphism Polynomial.aeval_endomorphism

end Polynomial
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/AlgebraMap/Variantb9da7d1a063f20780c3b114548990ca35007c541da88974b01fc6009d7953be1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/AlgebraMap/Variantb9da7d1a063f20780c3b114548990ca35007c541da88974b01fc6009d7953be1.lean#L518).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ad77ac2de76769e5d07c802ee0d75491401807e4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
