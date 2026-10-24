# fourierIntegral_iteratedDeriv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8b0bd0ff-f966-746f-d2fd-d9ceb260766f",
  "kind": "theorem",
  "lexical_name": "fourierIntegral_iteratedDeriv",
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
  "slug": "fourierintegral-iteratedderiv--9a737babdfd59deb765fb77f",
  "source": {
    "blob": "0c09287ffc79cc80115f3e70237dffca6ab50a28",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 837,
    "line": 824,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FourierTransformDeriv/Variant443ffe4c8b32d3c70a2d777807eada6c9cd0cd329e7344509cd77c0de3444646.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9a737babdfd59deb765fb77f8fa1df557ce26b0eda64aa45a8667ec9c89f07af",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/FourierTransformDeriv/Variant443ffe4c8b32d3c70a2d777807eada6c9cd0cd329e7344509cd77c0de3444646.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8b0bd0ff-f966-746f-d2fd-d9ceb260766f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 824–837.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem fourierIntegral_iteratedDeriv {f : ℝ → E} {N : ℕ∞} {n : ℕ} (hf : ContDiff ℝ N f)
    (h'f : ∀ (n : ℕ), n ≤ N → Integrable (iteratedDeriv n f)) (hn : n ≤ N) :
    𝓕 (iteratedDeriv n f) = fun (x : ℝ) ↦ (2 * π * I * x) ^ n • (𝓕 f x) := by
  ext x : 1
  have A : ∀ (n : ℕ), n ≤ N → Integrable (iteratedFDeriv ℝ n f) := by
    intro n hn
    rw [iteratedFDeriv_eq_equiv_comp]
    exact (LinearIsometryEquiv.integrable_comp_iff _).2 (h'f n hn)
  change 𝓕 (fun x ↦ iteratedDeriv n f x) x = _
  simp_rw [iteratedDeriv, ← fourierIntegral_continuousMultilinearMap_apply (A n hn),
    fourierIntegral_iteratedFDeriv hf A hn]
  simp [← coe_smul, smul_smul, ← mul_pow]

end Real
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/FourierTransformDeriv/Variant443ffe4c8b32d3c70a2d777807eada6c9cd0cd329e7344509cd77c0de3444646.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FourierTransformDeriv/Variant443ffe4c8b32d3c70a2d777807eada6c9cd0cd329e7344509cd77c0de3444646.lean#L824).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0c09287ffc79cc80115f3e70237dffca6ab50a28` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
