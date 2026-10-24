# observationallyEquivalent_of_budget_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7355d6ed-f281-60e1-40fc-805be2ac19ff",
  "kind": "theorem",
  "lexical_name": "observationallyEquivalent_of_budget_le",
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
  "slug": "observationallyequivalent-of-budget-le--6fa786dfe9b9d205866ae2bb",
  "source": {
    "blob": "f520d84a0ccfea9f902f5dc8c6ac0a2f027d71a4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 53,
    "line": 47,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Notion/Variante5f5d9ebd897bcb3cb52612e678af8ea8045b5a4b398f61b76b539dfc0d3a771.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6fa786dfe9b9d205866ae2bb35ac72ac0bc7234b6b6a6b5e39047c5265341473",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Notion/Variante5f5d9ebd897bcb3cb52612e678af8ea8045b5a4b398f61b76b539dfc0d3a771.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7355d6ed-f281-60e1-40fc-805be2ac19ff`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 47–53.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem observationallyEquivalent_of_budget_le {Object Test Value : Type*}
    {policy : ObservationPolicy Object Test Value} {small large : ℕ} {x y : Object}
    (hbudget : small ≤ large) (h : ObservationallyEquivalent policy large x y) :
    ObservationallyEquivalent policy small x y :=
  fun test hcost => h test (hcost.trans hbudget)

/-- A source-bound finite realization specifies exactly which tests were made available. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Notion/Variante5f5d9ebd897bcb3cb52612e678af8ea8045b5a4b398f61b76b539dfc0d3a771.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Notion/Variante5f5d9ebd897bcb3cb52612e678af8ea8045b5a4b398f61b76b539dfc0d3a771.lean#L47).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f520d84a0ccfea9f902f5dc8c6ac0a2f027d71a4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
