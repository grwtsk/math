# BudgetDimension.exceeded

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e2991b591e36f810ce395f196793b2e0695d4b53d09e65562a868b58ca132c5c",
  "kind": "def",
  "lexical_name": "BudgetDimension.exceeded",
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
  "slug": "budgetdimension-exceeded--91f9e139f1d7b38de1f4fc45",
  "source": {
    "blob": "c98b0133285e7a4f98f0f234211ff729b5eea082",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 108,
    "line": 80,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Budget/Variantabe14429fe9d465b95aefe983b9082d080228ccc6429c83d0a75d2cc6aa24704.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:91f9e139f1d7b38de1f4fc45bfdcc4b6a8e7bb2d3659098e632445084a07009b",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Budget/Variantabe14429fe9d465b95aefe983b9082d080228ccc6429c83d0a75d2cc6aa24704.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e2991b591e36f810ce395f196793b2e0695d4b53d09e65562a868b58ca132c5c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 80–108.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def BudgetDimension.exceeded
    (usage : TraversalUsage)
    (budget : TraversalBudget) :
    BudgetDimension → Bool
  | .steps =>
      decide (budget.maxSteps < usage.steps)
  | .visitedNodes =>
      decide
        (budget.maxVisitedNodes < usage.visitedNodes)
  | .frontierSize =>
      decide
        (budget.maxFrontierSize <
          usage.peakFrontierSize)
  | .pathLength =>
      decide
        (budget.maxPathLength <
          usage.peakPathLength)
  | .persistedBytes =>
      decide
        (budget.maxPersistedBytes <
          usage.persistedBytes)
  | .verifierSubmissions =>
      decide
        (budget.maxVerifierSubmissions <
          usage.verifierSubmissions)
  | .proposals =>
      decide
        (budget.maxProposals < usage.proposals)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Budget/Variantabe14429fe9d465b95aefe983b9082d080228ccc6429c83d0a75d2cc6aa24704.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Budget/Variantabe14429fe9d465b95aefe983b9082d080228ccc6429c83d0a75d2cc6aa24704.lean#L80).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c98b0133285e7a4f98f0f234211ff729b5eea082` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
