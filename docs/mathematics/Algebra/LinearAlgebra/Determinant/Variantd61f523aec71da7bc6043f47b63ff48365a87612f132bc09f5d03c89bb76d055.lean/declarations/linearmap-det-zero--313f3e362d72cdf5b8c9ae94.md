# LinearMap.det_zero''

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2c47b329-0bed-daad-bf70-66277dc07782",
  "kind": "theorem",
  "lexical_name": "LinearMap.det_zero''",
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
  "slug": "linearmap-det-zero--313f3e362d72cdf5b8c9ae94",
  "source": {
    "blob": "20f8208d787c15c9ed5e890f9320a7706c20c408",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 35,
    "line": 31,
    "path": "GRWTSK/Algebra/LinearAlgebra/Determinant/Variantd61f523aec71da7bc6043f47b63ff48365a87612f132bc09f5d03c89bb76d055.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:313f3e362d72cdf5b8c9ae94a710bf9444c135f2362d1b3373237cff09b62eed",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Determinant/Variantd61f523aec71da7bc6043f47b63ff48365a87612f132bc09f5d03c89bb76d055.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2c47b329-0bed-daad-bf70-66277dc07782`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 31–35.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem LinearMap.det_zero'' {R M : Type*} [CommRing R] [AddCommGroup M] [Module R M]
    [Module.Free R M] [Module.Finite R M] [Nontrivial M] : LinearMap.det (0 : M →ₗ[R] M) = 0 := by
  letI : Nonempty (Module.Free.ChooseBasisIndex R M) := (Module.Free.chooseBasis R M).index_nonempty
  nontriviality R
  exact LinearMap.det_zero' (Module.Free.chooseBasis R M)
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Determinant/Variantd61f523aec71da7bc6043f47b63ff48365a87612f132bc09f5d03c89bb76d055.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Determinant/Variantd61f523aec71da7bc6043f47b63ff48365a87612f132bc09f5d03c89bb76d055.lean#L31).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `20f8208d787c15c9ed5e890f9320a7706c20c408` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
