# norm_sq_prime_term

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f9b50b1a-423c-fd0f-b8b4-3364a9ed31a1",
  "kind": "lemma",
  "lexical_name": "norm_sq_prime_term",
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
  "slug": "norm-sq-prime-term--a7effa29e9604d101731acee",
  "source": {
    "blob": "0a151c94a90a39e74a77c3833894b3bb4fcf98dc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 42,
    "line": 34,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/LayerOne/Variantf5c72cc1fb3fa38d2d697d8114c5dcb5b733d97de9e6237789746a3999e502a7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a7effa29e9604d101731aceec0658ba9351bd60135f42cd845cc2e80778cad7d",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/LayerOne/Variantf5c72cc1fb3fa38d2d697d8114c5dcb5b733d97de9e6237789746a3999e502a7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f9b50b1a-423c-fd0f-b8b4-3364a9ed31a1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 34–42.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma norm_sq_prime_term (L : ℝ) (z : ℂ) :
    ‖-(L : ℂ) + z * (L : ℂ) ^ 2‖ ^ 2 = L ^ 2 - 2 * z.re * L ^ 3 + (z.re ^ 2 + z.im ^ 2) * L ^ 4 := by
  have hL2 : ((L : ℂ)) ^ 2 = ((L ^ 2 : ℝ) : ℂ) := by push_cast; ring
  rw [hL2, Complex.sq_norm, Complex.normSq_apply]
  simp only [Complex.add_re, Complex.neg_re, Complex.ofReal_re, Complex.mul_re, Complex.add_im,
    Complex.neg_im, Complex.ofReal_im, Complex.mul_im]
  ring

/-- `(Re Λ⁻¹)² + (Im Λ⁻¹)² = ‖Λ‖⁻²`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/LayerOne/Variantf5c72cc1fb3fa38d2d697d8114c5dcb5b733d97de9e6237789746a3999e502a7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/LayerOne/Variantf5c72cc1fb3fa38d2d697d8114c5dcb5b733d97de9e6237789746a3999e502a7.lean#L34).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0a151c94a90a39e74a77c3833894b3bb4fcf98dc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
