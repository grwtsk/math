# retainedAssessmentProvenance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:203c2d7063ef1dd1dbf151664655e0a5a597f9f721193f28e821b41a50c02247",
  "kind": "def",
  "lexical_name": "retainedAssessmentProvenance",
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
  "slug": "retainedassessmentprovenance--298eb116f00b47f8982d2460",
  "source": {
    "blob": "ff830267cbc064a477a0cde223af54c31b070c12",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 280,
    "line": 241,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ReductiveSiteSelection/Varianteb033bfdaafb26a8a2036a036c897a2f3995a5a1a14cf61c56214155b7801516.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:298eb116f00b47f8982d2460b34ea1e7794d180553a7c05197b4d2f69adbf20a",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/ReductiveSiteSelection/Varianteb033bfdaafb26a8a2036a036c897a2f3995a5a1a14cf61c56214155b7801516.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:203c2d7063ef1dd1dbf151664655e0a5a597f9f721193f28e821b41a50c02247`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 241–280.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def retainedAssessmentProvenance
    {State : Type u}
    [AddCommMonoid State]
    [Module ℝ State]
    {cone : PositiveCone State}
    {decomposition : FiniteDecomposition}
    {objective : SurgicalObjective State decomposition.Piece}
    (stage : ReductiveSelectionStage State cone decomposition objective)
    (state : State)
    (site : decomposition.Piece)
    (disposition : RetainedSiteDisposition) :
    List TheoremAssessmentProvenance := by
  classical
  exact stage.classificationTheorems.filterMap fun theoremAdapter =>
    let provenance := theoremAssessmentProvenance theoremAdapter
    match disposition with
    | .unknown =>
        match theoremAdapter.assess state site with
        | .undecided => some (provenance none)
        | _ => none
    | .attention =>
        match theoremAdapter.assess state site with
        | .requiresAttention reason => some (provenance (some reason))
        | _ => none
    | .blocked =>
        match theoremAdapter.assess state site with
        | .blocked obligation => some (provenance (some obligation))
        | _ => none
    | .externalOnly =>
        if ExternalOnlyAt theoremAdapter state site then
          some (provenance none)
        else
          none
    | .conflict =>
        match theoremAdapter.assess state site with
        | .safeToExclude _ => some (provenance none)
        | .requiresAttention reason => some (provenance (some reason))
        | _ => none

/-- Construct a complete stable retained-site record from declared metadata. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/ReductiveSiteSelection/Varianteb033bfdaafb26a8a2036a036c897a2f3995a5a1a14cf61c56214155b7801516.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/ReductiveSiteSelection/Varianteb033bfdaafb26a8a2036a036c897a2f3995a5a1a14cf61c56214155b7801516.lean#L241).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ff830267cbc064a477a0cde223af54c31b070c12` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
