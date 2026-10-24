# exists_set_sigmaFinite

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a5eb2e67bf1ad9dfb2928149c16c5a2a148030ea",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 969,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/14/14ac3ace6912a63bec974d56db7b171c199032fe7bb34758f82360b7683cab86.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b17a46b3-5885-d121-80ca-5ba88a680b9a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:097c49e4-cc69-5d04-0bc5-a0a599c62067",
  "kind": "theorem",
  "lexical_name": "exists_set_sigmaFinite",
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
  "slug": "exists-set-sigmafinite--823c0076a7fe9fccf629a262",
  "source": {
    "blob": "a5eb2e67bf1ad9dfb2928149c16c5a2a148030ea",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 980,
    "line": 969,
    "path": "GRWTSK/Analysis/MeasureTheory/AEStronglyMeasurable/Variant14ac3ace6912a63bec974d56db7b171c199032fe7bb34758f82360b7683cab86.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:823c0076a7fe9fccf629a262b9366a97f836de6e9dd86830c143e8d639860c75",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/AEStronglyMeasurable/Variant14ac3ace6912a63bec974d56db7b171c199032fe7bb34758f82360b7683cab86.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:097c49e4-cc69-5d04-0bc5-a0a599c62067`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 969–980.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_set_sigmaFinite (hf : AEFinStronglyMeasurable f μ) :
    ∃ t, MeasurableSet t ∧ f =ᵐ[μ.restrict tᶜ] 0 ∧ SigmaFinite (μ.restrict t) := by
  rcases hf with ⟨g, hg, hfg⟩
  obtain ⟨t, ht, hgt_zero, htμ⟩ := hg.exists_set_sigmaFinite
  refine ⟨t, ht, ?_, htμ⟩
  refine EventuallyEq.trans (ae_restrict_of_ae hfg) ?_
  rw [EventuallyEq, ae_restrict_iff' ht.compl]
  exact Eventually.of_forall hgt_zero

/-- A measurable set `t` such that `f =ᵐ[μ.restrict tᶜ] 0` and `sigma_finite (μ.restrict t)`. -/
-- Note: `Set` has no computational content, but Lean still attempts to compile it.
-- See https://github.com/leanprover/lean4/issues/14084.
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/AEStronglyMeasurable/Variant14ac3ace6912a63bec974d56db7b171c199032fe7bb34758f82360b7683cab86.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/AEStronglyMeasurable/Variant14ac3ace6912a63bec974d56db7b171c199032fe7bb34758f82360b7683cab86.lean#L969).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a5eb2e67bf1ad9dfb2928149c16c5a2a148030ea` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
