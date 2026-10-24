# integrable_count_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2ad180afca8fb23408d5408050a8965089375ae5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 765,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/27/27797fe4384b5a8f3fab05c4c5b7d1b4f98c3801a9c441d7f75272d4f095df42.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9ce9de27-0cfd-8d03-ddac-106b6ef11746",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e1cad387-5fad-c2d4-7457-010d5025663e",
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
  "slug": "integrable-count-iff--68a6ce7ea24c1a54eb85a39e",
  "source": {
    "blob": "2ad180afca8fb23408d5408050a8965089375ae5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 790,
    "line": 765,
    "path": "GRWTSK/Analysis/MeasureTheory/Integrable/Variant27797fe4384b5a8f3fab05c4c5b7d1b4f98c3801a9c441d7f75272d4f095df42.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:68a6ce7ea24c1a54eb85a39e4f358c9a4d62d310412a1adc625cfb4fda75cc42",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Integrable/Variant27797fe4384b5a8f3fab05c4c5b7d1b4f98c3801a9c441d7f75272d4f095df42.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e1cad387-5fad-c2d4-7457-010d5025663e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 765–790.

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
  let : MeasurableSpace β := borel β
  have : BorelSpace β := ⟨rfl⟩
  refine aestronglyMeasurable_iff_aemeasurable_separable.mpr ⟨?_, ?_⟩
  · refine (measurable_zero.measurable_of_countable_ne ?_).aemeasurable
    simpa only [Ne, Pi.zero_apply, eq_comm, Function.support] using hs'
  · refine ⟨f '' univ, ?_, ae_of_all _ fun a ↦ ⟨a, ⟨mem_univ _, rfl⟩⟩⟩
    suffices f '' univ ⊆ (f '' f.support) ∪ {0} from
      (((hs'.image f).union (countable_singleton 0)).mono this).isSeparable
    grind [Function.mem_support]

end count

section

variable {E : Type*} [NormedAddCommGroup E] [NormedSpace ℝ E]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Integrable/Variant27797fe4384b5a8f3fab05c4c5b7d1b4f98c3801a9c441d7f75272d4f095df42.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Integrable/Variant27797fe4384b5a8f3fab05c4c5b7d1b4f98c3801a9c441d7f75272d4f095df42.lean#L765).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2ad180afca8fb23408d5408050a8965089375ae5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
