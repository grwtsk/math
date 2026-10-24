# eulerMascheroni_eq_neg_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f1444762eec9a3ce15b7d30b8945e3fb6d87d5f8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 146,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8f/8f71720857296849f4a00075101e7a0e2adc86171a457909b220d2bcaf91e34f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5f2918bc-f865-da8b-9c81-bc578671d75c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ff104036-2ea7-003e-fe03-0eb196837531",
  "kind": "theorem",
  "lexical_name": "eulerMascheroni_eq_neg_integral",
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
  "slug": "eulermascheroni-eq-neg-integral--197d72d2e91c190ba9bc9bb6",
  "source": {
    "blob": "f1444762eec9a3ce15b7d30b8945e3fb6d87d5f8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 184,
    "line": 146,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/LiSeries/Variant8f71720857296849f4a00075101e7a0e2adc86171a457909b220d2bcaf91e34f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:197d72d2e91c190ba9bc9bb606cf19b59be98876a2542a0685e15ca9c043f95d",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/LiSeries/Variant8f71720857296849f4a00075101e7a0e2adc86171a457909b220d2bcaf91e34f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ff104036-2ea7-003e-fe03-0eb196837531`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 146–184.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eulerMascheroni_eq_neg_integral :
    eulerMascheroniConstant = -(∫ t in Ioi (0 : ℝ), log t * exp (-t)) := by
  -- Step 1: Get the complex derivative of GammaIntegral at s = 1
  have hpos : (0 : ℝ) < (1 : ℂ).re := by simp
  have hderiv_integral := Complex.hasDerivAt_GammaIntegral hpos
  -- Step 2: Gamma = GammaIntegral on {s | 0 < s.re}, which is a nhd of 1
  have heq : Complex.Gamma =ᶠ[𝓝 1] Complex.GammaIntegral := by
    have : {s : ℂ | 0 < s.re} ∈ 𝓝 (1 : ℂ) := by
      apply IsOpen.mem_nhds
      · exact isOpen_lt continuous_const Complex.continuous_re
      · simp
    exact Filter.eventuallyEq_iff_exists_mem.mpr ⟨{s : ℂ | 0 < s.re}, this,
      fun s hs => Complex.Gamma_eq_integral hs⟩
  -- Step 3: So Gamma has the same derivative as GammaIntegral at 1
  have hderiv_Gamma := hderiv_integral.congr_of_eventuallyEq heq
  -- Step 4: But we also know the derivative of complex Gamma at 1
  have hderiv_known := Complex.hasDerivAt_Gamma_one
  -- Step 5: By uniqueness of derivatives
  have key := hderiv_Gamma.unique hderiv_known
  -- Step 6: Simplify the integral in `key`
  -- The integrand is ↑t ^ (1 - 1) * (↑(log t) * ↑(rexp (-t)))
  -- Simplify to ↑(log t * exp(-t)) using t^0 = 1
  have simp_integral : (∫ t : ℝ in Ioi 0,
      (t : ℂ) ^ ((1 : ℂ) - 1) * (↑(log t) * ↑(rexp (-t)))) =
      ↑(∫ t : ℝ in Ioi 0, log t * rexp (-t)) := by
    rw [show (1 : ℂ) - 1 = 0 from sub_self 1]
    simp_rw [Complex.cpow_zero, one_mul, ← Complex.ofReal_mul]
    exact integral_ofReal
  rw [simp_integral] at key
  -- key : ↑(∫ t in Ioi 0, log t * rexp (-t)) = -↑eulerMascheroniConstant
  rw [← Complex.ofReal_neg] at key
  have := Complex.ofReal_injective key.symm
  linarith


namespace FubiniLogExpNeg

/-! ## Integrability lemmas -/

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/LiSeries/Variant8f71720857296849f4a00075101e7a0e2adc86171a457909b220d2bcaf91e34f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/LiSeries/Variant8f71720857296849f4a00075101e7a0e2adc86171a457909b220d2bcaf91e34f.lean#L146).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f1444762eec9a3ce15b7d30b8945e3fb6d87d5f8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
