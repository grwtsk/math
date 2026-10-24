# eulerMascheroni_eq_neg_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:38320f87-8a45-49c2-06f9-5346abe5c4f1",
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
  "slug": "eulermascheroni-eq-neg-integral--c36e95696839162af7d9134c",
  "source": {
    "blob": "89ef6f525685569b90716827903f2340987df587",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 192,
    "line": 154,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/LiSeries/Variant0ebd4538e079e4ec2eea8ca1e91a32ab71b1260de4640b928bb885e3bee7f795.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c36e95696839162af7d9134c07ef06f6c73980c070fdb86cde5edd3ef6c38365",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/LiSeries/Variant0ebd4538e079e4ec2eea8ca1e91a32ab71b1260de4640b928bb885e3bee7f795.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:38320f87-8a45-49c2-06f9-5346abe5c4f1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 154–192.

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

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/LiSeries/Variant0ebd4538e079e4ec2eea8ca1e91a32ab71b1260de4640b928bb885e3bee7f795.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/LiSeries/Variant0ebd4538e079e4ec2eea8ca1e91a32ab71b1260de4640b928bb885e3bee7f795.lean#L154).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `89ef6f525685569b90716827903f2340987df587` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
