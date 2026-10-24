# integral_exp_eq_correctedTransform

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2100d695-76fa-e4a1-4fcd-26ff03128c31",
  "kind": "theorem",
  "lexical_name": "integral_exp_eq_correctedTransform",
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
  "slug": "integral-exp-eq-correctedtransform--9eae37d50ba6732f6b77d01b",
  "source": {
    "blob": "323b8c336ff4a89b3f22c7b89317789d6afac106",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 172,
    "line": 150,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Bridge/Variant1f84d50d023b987c40c56de5e52b6a598b13a208d5597f2d66acef538dbb9a92.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9eae37d50ba6732f6b77d01bd4daaea049390850063a5d44111e1e88b2b64d4b",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Bridge/Variant1f84d50d023b987c40c56de5e52b6a598b13a208d5597f2d66acef538dbb9a92.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2100d695-76fa-e4a1-4fcd-26ff03128c31`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 150–172.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integral_exp_eq_correctedTransform
    (C : ℝ)
    (hpos : ∀ A : ℝ, 1 ≤ A → 0 ≤ correctedSource C A)
    (s : ℂ) (hs : 1 < s.re) :
    (∫ A : ℝ,
      Complex.exp (-s * A) ∂sourceMeasure C) =
      correctedTransform C s := by
  rw [sourceMeasure,
    integral_withDensity_eq_integral_toReal_smul₀
      (density_aemeasurable C) (density_lt_top C)]
  calc
    _ =
        ∫ A : ℝ,
          Complex.exp (-s * A) *
            (correctedSource C A : ℂ) ∂baseMeasure := by
      apply integral_congr_ae
      filter_upwards [density_toReal_ae C hpos]
        with A hA
      rw [hA, Complex.real_smul]
      exact mul_comm _ _
    _ = _ :=
      integral_corrected_source C s hs

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Bridge/Variant1f84d50d023b987c40c56de5e52b6a598b13a208d5597f2d66acef538dbb9a92.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Bridge/Variant1f84d50d023b987c40c56de5e52b6a598b13a208d5597f2d66acef538dbb9a92.lean#L150).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `323b8c336ff4a89b3f22c7b89317789d6afac106` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
