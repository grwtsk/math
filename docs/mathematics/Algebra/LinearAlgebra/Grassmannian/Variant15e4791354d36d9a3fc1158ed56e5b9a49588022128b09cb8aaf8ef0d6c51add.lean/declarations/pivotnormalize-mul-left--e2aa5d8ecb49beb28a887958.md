# pivotNormalize_mul_left

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:aec6c189-d654-9b0c-6ed4-d4ecfe8b827d",
  "kind": "theorem",
  "lexical_name": "pivotNormalize_mul_left",
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
  "slug": "pivotnormalize-mul-left--e2aa5d8ecb49beb28a887958",
  "source": {
    "blob": "b48efab06cae25d2d8ed36dce09a7100e89360a5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 127,
    "line": 118,
    "path": "GRWTSK/Algebra/LinearAlgebra/Grassmannian/Variant15e4791354d36d9a3fc1158ed56e5b9a49588022128b09cb8aaf8ef0d6c51add.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e2aa5d8ecb49beb28a887958499fed2a170af6d65fa29d509ef36e26ac131f36",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Grassmannian/Variant15e4791354d36d9a3fc1158ed56e5b9a49588022128b09cb8aaf8ef0d6c51add.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:aec6c189-d654-9b0c-6ed4-d4ecfe8b827d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 118–127.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pivotNormalize_mul_left (O : Matrix (Fin k) (Fin k) ℝ)
    (A : Matrix (Fin k) (Fin n) ℝ) (c : Fin k → Fin n)
    (hO : O.det ≠ 0) (hc : columnMinor A c ≠ 0) :
    pivotNormalize (O * A) c = pivotNormalize A c := by
  apply (pivotNormalize_eq_iff_rowSpace _ _ c ?_ hc).mpr
    (frameRowSpace_mul_left_eq O A hO)
  rw [columnMinor_mul_left]
  exact mul_ne_zero hO hc

/-- Transition matrices are invariant under orthogonal, and all invertible, row changes. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Grassmannian/Variant15e4791354d36d9a3fc1158ed56e5b9a49588022128b09cb8aaf8ef0d6c51add.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Grassmannian/Variant15e4791354d36d9a3fc1158ed56e5b9a49588022128b09cb8aaf8ef0d6c51add.lean#L118).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b48efab06cae25d2d8ed36dce09a7100e89360a5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
