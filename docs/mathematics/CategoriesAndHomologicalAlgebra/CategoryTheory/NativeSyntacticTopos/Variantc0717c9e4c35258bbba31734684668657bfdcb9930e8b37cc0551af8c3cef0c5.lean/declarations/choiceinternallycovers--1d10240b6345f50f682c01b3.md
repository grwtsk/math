# choiceInternallyCovers

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:93551c1dd0788b4136385a4fb9d0aa0f944aab593d0bf1becd9402fc035b3745",
  "kind": "instance",
  "lexical_name": "choiceInternallyCovers",
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
  "slug": "choiceinternallycovers--1d10240b6345f50f682c01b3",
  "source": {
    "blob": "3b1ba50ffb78e7492c58eec2fea7836045fb759b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 3164,
    "line": 3148,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/NativeSyntacticTopos/Variantc0717c9e4c35258bbba31734684668657bfdcb9930e8b37cc0551af8c3cef0c5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1d10240b6345f50f682c01b38b485910cb6dd5f142ad4d3f4cf48903a7b86791",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/NativeSyntacticTopos/Variantc0717c9e4c35258bbba31734684668657bfdcb9930e8b37cc0551af8c3cef0c5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:93551c1dd0788b4136385a4fb9d0aa0f944aab593d0bf1becd9402fc035b3745`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 3148–3164.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance choiceInternallyCovers
    {S : Site.{u, v}}
    [rules : ChoiceInternalCoverageRules S] :
    InternallyCovers S ChoiceCoverageClaim where
  hypothesis := fun c => (rules.rule c).foundationFormula
  conclusion := fun c => (rules.rule c).coverageFormula
  forcesCoverage := fun c h => (rules.rule c).rule h
  boundary :=
    InternalBoundary.certificateRequired
      "choice_internal_coverage_rule"
      LogicalFoundation.choice
      ["choiceCoverage_requires_foundation"]
      [
        "Choice coverage is internalized only through explicit choice-foundation forcing.",
        "No internal global choice principle or excluded middle is installed."
      ]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/NativeSyntacticTopos/Variantc0717c9e4c35258bbba31734684668657bfdcb9930e8b37cc0551af8c3cef0c5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/NativeSyntacticTopos/Variantc0717c9e4c35258bbba31734684668657bfdcb9930e8b37cc0551af8c3cef0c5.lean#L3148).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3b1ba50ffb78e7492c58eec2fea7836045fb759b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
