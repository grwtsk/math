# llr_tilted_right

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8059a462929f9cf7b5daa80f6b5fe657a1027ef5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 171,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/cf/cf5c8fa7b9ef3d95f8e9fda6600b626e30ea027aa8b7bcdab2860ff328a7552b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d45be2f4-bd5e-af50-7f73-6d13f4709ff7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8d6431fe-2c4c-3c31-3ddb-8f734f7d1d01",
  "kind": "lemma",
  "lexical_name": "llr_tilted_right",
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
  "slug": "llr-tilted-right--33e8300f08f8ae89a028c602",
  "source": {
    "blob": "8059a462929f9cf7b5daa80f6b5fe657a1027ef5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 185,
    "line": 171,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/LogLikelihoodRatio/Variantcf5c8fa7b9ef3d95f8e9fda6600b626e30ea027aa8b7bcdab2860ff328a7552b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:33e8300f08f8ae89a028c602ae0c7b992c75a160edbc8460a5ca2759d23ff35b",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/LogLikelihoodRatio/Variantcf5c8fa7b9ef3d95f8e9fda6600b626e30ea027aa8b7bcdab2860ff328a7552b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8d6431fe-2c4c-3c31-3ddb-8f734f7d1d01`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 171–185.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma llr_tilted_right [SigmaFinite μ] [SigmaFinite ν]
    (hμν : μ ≪ ν) (hf : Integrable (fun x ↦ exp (f x)) ν) :
    (llr μ (ν.tilted f)) =ᵐ[μ] fun x ↦ - f x + log (∫ z, exp (f z) ∂ν) + llr μ ν x := by
  cases eq_zero_or_neZero ν with
  | inl h =>
    have hμ : μ = 0 := by ext s _; exact hμν (by simp [h])
    simp only [hμ, ae_zero, Filter.EventuallyEq]; exact Filter.eventually_bot
  | inr h0 =>
    filter_upwards [hμν.ae_le (toReal_rnDeriv_tilted_right μ ν hf), Measure.rnDeriv_pos hμν,
      hμν.ae_le (Measure.rnDeriv_lt_top μ ν)] with x hx hx_pos hx_lt_top
    rw [llr, hx, log_mul, log_mul (exp_pos _).ne', log_exp, llr]
    · exact (integral_exp_pos hf).ne'
    · refine (mul_pos (exp_pos _) (integral_exp_pos hf)).ne'
    · simp [ENNReal.toReal_eq_zero_iff, hx_lt_top.ne, hx_pos.ne']

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/LogLikelihoodRatio/Variantcf5c8fa7b9ef3d95f8e9fda6600b626e30ea027aa8b7bcdab2860ff328a7552b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/LogLikelihoodRatio/Variantcf5c8fa7b9ef3d95f8e9fda6600b626e30ea027aa8b7bcdab2860ff328a7552b.lean#L171).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8059a462929f9cf7b5daa80f6b5fe657a1027ef5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
