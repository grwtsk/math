# integral_exp_eq_correctedTransform

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "82ccdbbdaffa2ba8e19cc0cbb65dbf46a3726b34",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 142,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/db/db43314861068a020204dca99a179ed3b523e989cf54ad20ada258411ab86edc.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ab7ac1a2-d149-ff9e-b4c5-2692efa080ce",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:89e3efcb-82f1-ecaf-b3cf-dec09b2137a1",
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
  "slug": "integral-exp-eq-correctedtransform--15b89ef503677d56e5f07001",
  "source": {
    "blob": "82ccdbbdaffa2ba8e19cc0cbb65dbf46a3726b34",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 164,
    "line": 142,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Bridge/Variantdb43314861068a020204dca99a179ed3b523e989cf54ad20ada258411ab86edc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:15b89ef503677d56e5f07001da9bc643a9ec8ab93f2f2957ec50d1be3a83a129",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Bridge/Variantdb43314861068a020204dca99a179ed3b523e989cf54ad20ada258411ab86edc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:89e3efcb-82f1-ecaf-b3cf-dec09b2137a1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 142–164.

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

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Bridge/Variantdb43314861068a020204dca99a179ed3b523e989cf54ad20ada258411ab86edc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Bridge/Variantdb43314861068a020204dca99a179ed3b523e989cf54ad20ada258411ab86edc.lean#L142).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `82ccdbbdaffa2ba8e19cc0cbb65dbf46a3726b34` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
