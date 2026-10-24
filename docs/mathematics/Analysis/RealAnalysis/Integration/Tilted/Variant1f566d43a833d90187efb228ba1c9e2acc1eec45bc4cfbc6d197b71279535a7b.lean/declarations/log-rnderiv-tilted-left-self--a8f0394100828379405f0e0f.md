# log_rnDeriv_tilted_left_self

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b2a77d80e74ed9d0096077c531a77dda5c728e46",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 365,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1f/1f566d43a833d90187efb228ba1c9e2acc1eec45bc4cfbc6d197b71279535a7b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:889bea8e-5dcc-1fe6-53d4-0f719f8b1bd8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:61193cf6-475d-a9be-283b-2afb62219b5b",
  "kind": "lemma",
  "lexical_name": "log_rnDeriv_tilted_left_self",
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
  "slug": "log-rnderiv-tilted-left-self--a8f0394100828379405f0e0f",
  "source": {
    "blob": "b2a77d80e74ed9d0096077c531a77dda5c728e46",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 376,
    "line": 365,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Tilted/Variant1f566d43a833d90187efb228ba1c9e2acc1eec45bc4cfbc6d197b71279535a7b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a8f0394100828379405f0e0ffa8f958049a80f83e8b5def939624615174a4b3a",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Tilted/Variant1f566d43a833d90187efb228ba1c9e2acc1eec45bc4cfbc6d197b71279535a7b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:61193cf6-475d-a9be-283b-2afb62219b5b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 365–376.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma log_rnDeriv_tilted_left_self [SigmaFinite μ] (hf : Integrable (fun x ↦ exp (f x)) μ) :
    (fun x ↦ log ((μ.tilted f).rnDeriv μ x).toReal)
      =ᵐ[μ] fun x ↦ f x - log (∫ x, exp (f x) ∂μ) := by
  cases eq_zero_or_neZero μ with
  | inl h => simp_rw [h, ae_zero, Filter.EventuallyEq]; exact Filter.eventually_bot
  | inr h0 =>
    have hf' : AEMeasurable f μ := aemeasurable_of_aemeasurable_exp hf.1.aemeasurable
    filter_upwards [rnDeriv_tilted_left_self hf'] with x hx
    rw [hx, ENNReal.toReal_ofReal (by positivity), log_div (exp_pos _).ne', log_exp]
    exact (integral_exp_pos hf).ne'

end MeasureTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Tilted/Variant1f566d43a833d90187efb228ba1c9e2acc1eec45bc4cfbc6d197b71279535a7b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Tilted/Variant1f566d43a833d90187efb228ba1c9e2acc1eec45bc4cfbc6d197b71279535a7b.lean#L365).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b2a77d80e74ed9d0096077c531a77dda5c728e46` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
