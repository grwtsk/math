# runReductiveStage_input_candidates

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ff830267cbc064a477a0cde223af54c31b070c12",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 748,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/eb/eb033bfdaafb26a8a2036a036c897a2f3995a5a1a14cf61c56214155b7801516.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:755e3e56-97df-a592-36fd-9255c09ebb79",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f788e346-1774-9913-113b-993b89fc48fb",
  "kind": "theorem",
  "lexical_name": "runReductiveStage_input_candidates",
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
  "slug": "runreductivestage-input-candidates--1981958effbbc440d8ed48e9",
  "source": {
    "blob": "ff830267cbc064a477a0cde223af54c31b070c12",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 763,
    "line": 748,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ReductiveSiteSelection/Varianteb033bfdaafb26a8a2036a036c897a2f3995a5a1a14cf61c56214155b7801516.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1981958effbbc440d8ed48e9e7e5124c5c4a60bdd4e3150498aea22c34342c85",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/ReductiveSiteSelection/Varianteb033bfdaafb26a8a2036a036c897a2f3995a5a1a14cf61c56214155b7801516.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f788e346-1774-9913-113b-993b89fc48fb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 748–763.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem runReductiveStage_input_candidates
    {State : Type u}
    [AddCommMonoid State]
    [Module ℝ State]
    {cone : PositiveCone State}
    (decomposition : FiniteDecomposition)
    (objective : SurgicalObjective State decomposition.Piece)
    (siteUniverse : SurgicalSiteUniverse decomposition)
    (stage : ReductiveSelectionStage State cone decomposition objective)
    (state : State)
    (input : Finset decomposition.Piece) :
    (runReductiveStage decomposition objective siteUniverse stage state input).inputCandidates =
      input :=
  rfl

/-- Runtime ordering and cache contents are explicitly non-semantic hints. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/ReductiveSiteSelection/Varianteb033bfdaafb26a8a2036a036c897a2f3995a5a1a14cf61c56214155b7801516.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/ReductiveSiteSelection/Varianteb033bfdaafb26a8a2036a036c897a2f3995a5a1a14cf61c56214155b7801516.lean#L748).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ff830267cbc064a477a0cde223af54c31b070c12` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
