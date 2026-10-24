# integrable_count_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a1a8ba1c3a319d72ca4abd600932379e812abb7e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 737,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/07/0772aed554d6ee7ec70db98f4ee851f7bdabeca201d040d24557d3276b874fc5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8a711bc8-ced9-6592-f354-3723db836922",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b8b2d9a0-4750-d14c-3b4c-6dc4c979db25",
  "kind": "lemma",
  "lexical_name": "integrable_count_iff",
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
  "slug": "integrable-count-iff--771e92f791ed99b43d1c60b9",
  "source": {
    "blob": "a1a8ba1c3a319d72ca4abd600932379e812abb7e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 766,
    "line": 737,
    "path": "GRWTSK/Analysis/MeasureTheory/Integrable/Variant0772aed554d6ee7ec70db98f4ee851f7bdabeca201d040d24557d3276b874fc5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:771e92f791ed99b43d1c60b90f2747f9d7df1b932607c1889839e5e4b3da8013",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Integrable/Variant0772aed554d6ee7ec70db98f4ee851f7bdabeca201d040d24557d3276b874fc5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b8b2d9a0-4750-d14c-3b4c-6dc4c979db25`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 737–766.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma integrable_count_iff :
    Integrable f Measure.count ↔ Summable (‖f ·‖) := by
  -- Note: this proof would be much easier if we assumed `SecondCountableTopology G`. Without
  -- this we have to justify the claim that `f` lands a.e. in a separable subset, which is true
  -- (because summable functions have countable range) but slightly tedious to check.
  rw [Integrable, hasFiniteIntegral_count_iff, and_iff_right_iff_imp]
  intro hs
  have hs' : (Function.support f).Countable := by
    simpa only [Ne, Pi.zero_apply, eq_comm, Function.support, norm_eq_zero]
      using hs.countable_support
  letI : MeasurableSpace β := borel β
  haveI : BorelSpace β := ⟨rfl⟩
  refine aestronglyMeasurable_iff_aemeasurable_separable.mpr ⟨?_, ?_⟩
  · refine (measurable_zero.measurable_of_countable_ne ?_).aemeasurable
    simpa only [Ne, Pi.zero_apply, eq_comm, Function.support] using hs'
  · refine ⟨f '' univ, ?_, ae_of_all _ fun a ↦ ⟨a, ⟨mem_univ _, rfl⟩⟩⟩
    suffices f '' univ ⊆ (f '' f.support) ∪ {0} from
      (((hs'.image f).union (countable_singleton 0)).mono this).isSeparable
    intro g hg
    rcases eq_or_ne g 0 with rfl | hg'
    · exact Or.inr (mem_singleton _)
    · obtain ⟨x, -, rfl⟩ := (mem_image ..).mp hg
      exact Or.inl ⟨x, hg', rfl⟩

end count

section

variable {E : Type*} [NormedAddCommGroup E] [NormedSpace ℝ E]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Integrable/Variant0772aed554d6ee7ec70db98f4ee851f7bdabeca201d040d24557d3276b874fc5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Integrable/Variant0772aed554d6ee7ec70db98f4ee851f7bdabeca201d040d24557d3276b874fc5.lean#L737).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a1a8ba1c3a319d72ca4abd600932379e812abb7e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
