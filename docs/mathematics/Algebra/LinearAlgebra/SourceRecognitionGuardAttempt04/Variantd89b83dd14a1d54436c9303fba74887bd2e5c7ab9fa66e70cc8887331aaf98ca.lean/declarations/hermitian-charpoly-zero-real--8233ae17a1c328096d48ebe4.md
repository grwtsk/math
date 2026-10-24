# hermitian_charpoly_zero_real

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:adf4a3ff-47a4-f72e-d5b6-d2a268280729",
  "kind": "theorem",
  "lexical_name": "hermitian_charpoly_zero_real",
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
  "slug": "hermitian-charpoly-zero-real--8233ae17a1c328096d48ebe4",
  "source": {
    "blob": "b8f67d710f0d4950b6cd7bc2269839a8f1ab4f63",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 39,
    "line": 30,
    "path": "GRWTSK/Algebra/LinearAlgebra/SourceRecognitionGuardAttempt04/Variantd89b83dd14a1d54436c9303fba74887bd2e5c7ab9fa66e70cc8887331aaf98ca.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8233ae17a1c328096d48ebe4abaf9eaff8985672276e16ff195731c8d9cb541f",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/SourceRecognitionGuardAttempt04/Variantd89b83dd14a1d54436c9303fba74887bd2e5c7ab9fa66e70cc8887331aaf98ca.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:adf4a3ff-47a4-f72e-d5b6-d2a268280729`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 30–39.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hermitian_charpoly_zero_real {n : Type*} [Fintype n] [DecidableEq n]
    {A : Matrix n n ℂ} (hA : A.IsHermitian) {z : ℂ}
    (hz : A.charpoly.eval z = 0) : z.im = 0 := by
  apply Complex.conj_eq_iff_im.mp
  apply (Matrix.isSymmetric_toEuclideanLin_iff.mpr hA).conj_eigenvalue_eq_self
  apply Module.End.HasEigenvalue.of_mem_spectrum
  rw [Matrix.spectrum_toLpLin 2]
  exact Matrix.mem_spectrum_of_isRoot_charpoly hz

/-- Exact zero transport is separate from the reality of the boundary zeros. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/SourceRecognitionGuardAttempt04/Variantd89b83dd14a1d54436c9303fba74887bd2e5c7ab9fa66e70cc8887331aaf98ca.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/SourceRecognitionGuardAttempt04/Variantd89b83dd14a1d54436c9303fba74887bd2e5c7ab9fa66e70cc8887331aaf98ca.lean#L30).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b8f67d710f0d4950b6cd7bc2269839a8f1ab4f63` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
