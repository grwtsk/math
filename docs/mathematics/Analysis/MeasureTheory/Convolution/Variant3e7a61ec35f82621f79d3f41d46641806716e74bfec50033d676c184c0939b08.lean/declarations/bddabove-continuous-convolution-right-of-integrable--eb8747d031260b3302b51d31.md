# BddAbove.continuous_convolution_right_of_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1ee6b93fa3151fc64ec813bc11d12698d80eac3c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 740,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3e/3e7a61ec35f82621f79d3f41d46641806716e74bfec50033d676c184c0939b08.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7d2a161d-ba35-4ce0-e0e0-a550922fe796",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b51a89b3-37a6-a63a-5ab5-f7c4c6563fd6",
  "kind": "theorem",
  "lexical_name": "BddAbove.continuous_convolution_right_of_integrable",
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
  "slug": "bddabove-continuous-convolution-right-of-integrable--eb8747d031260b3302b51d31",
  "source": {
    "blob": "1ee6b93fa3151fc64ec813bc11d12698d80eac3c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 760,
    "line": 740,
    "path": "GRWTSK/Analysis/MeasureTheory/Convolution/Variant3e7a61ec35f82621f79d3f41d46641806716e74bfec50033d676c184c0939b08.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:eb8747d031260b3302b51d3185dbceea683c707760b6304c623fd3511de21845",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Convolution/Variant3e7a61ec35f82621f79d3f41d46641806716e74bfec50033d676c184c0939b08.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b51a89b3-37a6-a63a-5ab5-f7c4c6563fd6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 740–760.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem BddAbove.continuous_convolution_right_of_integrable [SecondCountableTopologyEither G E']
    (hbg : BddAbove (range fun x => ‖g x‖)) (hf : Integrable f μ) (hg : Continuous g) :
    Continuous (f ⋆[L, μ] g) := by
  refine' continuous_iff_continuousAt.mpr fun x₀ => _
  have : ∀ᶠ x in 𝓝 x₀, ∀ᵐ t : G ∂μ, ‖L (f t) (g (x - t))‖ ≤ ‖L‖ * ‖f t‖ * ⨆ i, ‖g i‖ := by
    refine' eventually_of_forall fun x => eventually_of_forall fun t => _
    apply_rules [L.le_of_op_norm₂_le_of_le, le_rfl, le_ciSup hbg (x - t)]
  refine' continuousAt_of_dominated _ this _ _
  · exact eventually_of_forall fun x =>
      hf.aestronglyMeasurable.convolution_integrand_snd' L hg.aestronglyMeasurable
  · exact (hf.norm.const_mul _).mul_const _
  · exact eventually_of_forall fun t => (L.continuous₂.comp₂ continuous_const <|
      hg.comp <| continuous_id.sub continuous_const).continuousAt
#align bdd_above.continuous_convolution_right_of_integrable BddAbove.continuous_convolution_right_of_integrable

end Group

section CommGroup

variable [AddCommGroup G]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Convolution/Variant3e7a61ec35f82621f79d3f41d46641806716e74bfec50033d676c184c0939b08.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Convolution/Variant3e7a61ec35f82621f79d3f41d46641806716e74bfec50033d676c184c0939b08.lean#L740).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1ee6b93fa3151fc64ec813bc11d12698d80eac3c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
