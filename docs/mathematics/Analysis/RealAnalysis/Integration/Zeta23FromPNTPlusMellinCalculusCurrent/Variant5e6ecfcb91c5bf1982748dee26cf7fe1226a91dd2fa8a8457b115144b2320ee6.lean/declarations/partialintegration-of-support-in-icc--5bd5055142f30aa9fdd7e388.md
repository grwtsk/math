# PartialIntegration_of_support_in_Icc

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:76a0c24f-369b-5a43-6c2a-48972f33eca9",
  "kind": "lemma",
  "lexical_name": "PartialIntegration_of_support_in_Icc",
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
  "slug": "partialintegration-of-support-in-icc--5bd5055142f30aa9fdd7e388",
  "source": {
    "blob": "fe0aad58186aa1be22aa6f6c63491354d123fa9c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 261,
    "line": 236,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Zeta23FromPNTPlusMellinCalculusCurrent/Variant5e6ecfcb91c5bf1982748dee26cf7fe1226a91dd2fa8a8457b115144b2320ee6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5bd5055142f30aa9fdd7e3889bb91f4b74e2ee5dd8334b921f7fda8c524632dd",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Zeta23FromPNTPlusMellinCalculusCurrent/Variant5e6ecfcb91c5bf1982748dee26cf7fe1226a91dd2fa8a8457b115144b2320ee6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:76a0c24f-369b-5a43-6c2a-48972f33eca9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 236–261.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma PartialIntegration_of_support_in_Icc {a b : ℝ} (f g : ℝ → ℂ) (ha : 0 < a)
    (h : a ≤ b)
    (fSupp : f.support ⊆ Set.Icc a b)
    (fDiff : DifferentiableOn ℝ f (Ioi 0))
    (gDiff : DifferentiableOn ℝ g (Ioi 0))
    (fderivCont : ContinuousOn (deriv f) (Ioi 0))
    (gderivCont : ContinuousOn (deriv g) (Ioi 0)) :
    ∫ x in Ioi 0, f x * deriv g x = -∫ x in Ioi 0, deriv f x * g x := by
  have Icc_sub : Icc a b ⊆ Ioi 0 := (Icc_subset_Ioi_iff h).mpr ha
  have fderivSupp := Function.support_deriv_subset_Icc fSupp
  have fgSupp : (f * g).support ⊆ Icc a b := Function.support_mul_subset_of_subset fSupp
  have fDerivgInt : IntegrableOn (f * deriv g) (Ioi 0) := by
    apply (integrableOn_iff_integrable_of_support_subset <|
           Function.support_mul_subset_of_subset fSupp).mp
    exact fDiff.continuousOn.mono Icc_sub |>.mul (gderivCont.mono Icc_sub) |>.integrableOn_Icc
  have gDerivfInt : IntegrableOn (deriv f * g) (Ioi 0) := by
    apply (integrableOn_iff_integrable_of_support_subset <|
           Function.support_mul_subset_of_subset fderivSupp).mp
    exact fderivCont.mono Icc_sub |>.mul (gDiff.continuousOn.mono Icc_sub) |>.integrableOn_Icc
  have lim_at_zero : Tendsto (f * g) (𝓝[>]0) (𝓝 0) :=
    TendstoAtZero_of_support_in_Icc (f * g) ha fgSupp
  have lim_at_inf : Tendsto (f * g) atTop (𝓝 0) := TendstoAtTop_of_support_in_Icc (f * g) fgSupp
  apply PartialIntegration f g fDiff gDiff fDerivgInt gDerivfInt lim_at_zero lim_at_inf

local notation (name := mellintransform) "𝓜" => mellin

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Zeta23FromPNTPlusMellinCalculusCurrent/Variant5e6ecfcb91c5bf1982748dee26cf7fe1226a91dd2fa8a8457b115144b2320ee6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Zeta23FromPNTPlusMellinCalculusCurrent/Variant5e6ecfcb91c5bf1982748dee26cf7fe1226a91dd2fa8a8457b115144b2320ee6.lean#L236).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fe0aad58186aa1be22aa6f6c63491354d123fa9c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
