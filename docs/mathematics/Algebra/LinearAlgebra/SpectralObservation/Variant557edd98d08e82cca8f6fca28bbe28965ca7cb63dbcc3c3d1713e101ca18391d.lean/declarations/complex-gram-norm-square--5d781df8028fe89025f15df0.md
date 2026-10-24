# complex_gram_norm_square

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:69e84b10-2169-90e1-234d-819033f32994",
  "kind": "theorem",
  "lexical_name": "complex_gram_norm_square",
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
  "slug": "complex-gram-norm-square--5d781df8028fe89025f15df0",
  "source": {
    "blob": "f87a7df61a341a0532862fe39aaafe6370272a62",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 39,
    "line": 33,
    "path": "GRWTSK/Algebra/LinearAlgebra/SpectralObservation/Variant557edd98d08e82cca8f6fca28bbe28965ca7cb63dbcc3c3d1713e101ca18391d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5d781df8028fe89025f15df0986b5f244df9f1039c98fb8a0158374818b861bf",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/SpectralObservation/Variant557edd98d08e82cca8f6fca28bbe28965ca7cb63dbcc3c3d1713e101ca18391d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:69e84b10-2169-90e1-234d-819033f32994`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 33–39.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem complex_gram_norm_square (F : Matrix m n ℂ) (v : n → ℂ) :
    star v ⬝ᵥ (featureGram F *ᵥ v) = ∑ k, (Complex.normSq ((F *ᵥ v) k) : ℂ) := by
  rw [featureGram, ← mulVec_mulVec, dotProduct_mulVec, vecMul_conjTranspose, star_star]
  simp only [dotProduct, Pi.star_apply, Complex.normSq_eq_conj_mul_self]
  rfl

/-- The same finite identity specializes to a sum of real squares. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/SpectralObservation/Variant557edd98d08e82cca8f6fca28bbe28965ca7cb63dbcc3c3d1713e101ca18391d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/SpectralObservation/Variant557edd98d08e82cca8f6fca28bbe28965ca7cb63dbcc3c3d1713e101ca18391d.lean#L33).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f87a7df61a341a0532862fe39aaafe6370272a62` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
