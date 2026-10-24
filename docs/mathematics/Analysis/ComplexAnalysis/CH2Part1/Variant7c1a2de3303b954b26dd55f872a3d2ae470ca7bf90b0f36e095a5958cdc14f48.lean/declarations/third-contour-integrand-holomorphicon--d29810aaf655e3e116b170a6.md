# third_contour_integrand_holomorphicOn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9ef2608fe2b2171a00303ea2d042ad23b0efe93d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 4407,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7c/7c1a2de3303b954b26dd55f872a3d2ae470ca7bf90b0f36e095a5958cdc14f48.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d0a7c4b8-238f-9ac4-4692-b8deda5354e6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1fef2bb5-872e-ec67-eebd-df82f5ee497e",
  "kind": "lemma",
  "lexical_name": "third_contour_integrand_holomorphicOn",
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
  "slug": "third-contour-integrand-holomorphicon--d29810aaf655e3e116b170a6",
  "source": {
    "blob": "9ef2608fe2b2171a00303ea2d042ad23b0efe93d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 4435,
    "line": 4407,
    "path": "GRWTSK/Analysis/ComplexAnalysis/CH2Part1/Variant7c1a2de3303b954b26dd55f872a3d2ae470ca7bf90b0f36e095a5958cdc14f48.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d29810aaf655e3e116b170a659462dffdc04e1930c7468eb9945b45b607262b2",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/CH2Part1/Variant7c1a2de3303b954b26dd55f872a3d2ae470ca7bf90b0f36e095a5958cdc14f48.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1fef2bb5-872e-ec67-eebd-df82f5ee497e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 4407–4435.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma third_contour_integrand_holomorphicOn (ν ε x : ℝ) (U : ℝ) (_hU : U ≥ 0) :
    HolomorphicOn (fun z ↦ Phi_star ν ε z * E (-z * x)) (Rectangle (0 : ℂ) (1/2 - I * U)) := by
  intro z hz
  apply DifferentiableWithinAt.mul
  · apply AnalyticAt.differentiableWithinAt
    apply Phi_star.analyticAt_of_not_pole_nz
    intro n hn h_eq
    have h_z_re : z.re = n := by
      replace h_eq := congr_arg Complex.re h_eq
      simp only [sub_re, intCast_re, pole_re, sub_zero] at h_eq
      exact h_eq
    have h_re := hz.1
    simp only [Set.mem_preimage, Complex.zero_re, Complex.sub_re, Complex.mul_re,
      Complex.I_re, Complex.I_im, Complex.ofReal_re, Complex.ofReal_im] at h_re
    rw [h_z_re] at h_re
    exact hn (unique_int_in_Icc n 0 h_re (by norm_num) (by norm_num))
  · dsimp [E]; apply DifferentiableAt.differentiableWithinAt; fun_prop

@[blueprint
  "third-contour-limit"
  (title := "Third contour limit")
  (statement := /--
\[
\int_0^{\frac{1}{2}} \Phi^{\pm,\star}_{\nu}(z)\, e(-zx)\, dz + \int_{\frac{1}{2}}^{\frac{1}{2}-i\infty} \Phi^{\pm,\star}_{\nu}(z)\, e(-zx)\, dz = -\int_{-i\infty}^{0} \Phi^{\pm,\star}_{\nu}(z)\, e(-zx)\, dz.
\]
  -/)
  (proof := /-- Similar to previous. -/)
  (latexEnv := "sublemma")
  (discussion := 1087)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/CH2Part1/Variant7c1a2de3303b954b26dd55f872a3d2ae470ca7bf90b0f36e095a5958cdc14f48.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/CH2Part1/Variant7c1a2de3303b954b26dd55f872a3d2ae470ca7bf90b0f36e095a5958cdc14f48.lean#L4407).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9ef2608fe2b2171a00303ea2d042ad23b0efe93d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
