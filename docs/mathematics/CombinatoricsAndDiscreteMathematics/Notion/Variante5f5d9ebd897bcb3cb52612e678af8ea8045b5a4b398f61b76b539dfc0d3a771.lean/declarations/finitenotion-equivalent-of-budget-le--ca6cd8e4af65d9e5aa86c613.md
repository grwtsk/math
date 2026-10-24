# FiniteNotion.equivalent_of_budget_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3b4e873d-4e13-1749-b817-cbe4f86ec816",
  "kind": "theorem",
  "lexical_name": "FiniteNotion.equivalent_of_budget_le",
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
  "slug": "finitenotion-equivalent-of-budget-le--ca6cd8e4af65d9e5aa86c613",
  "source": {
    "blob": "f520d84a0ccfea9f902f5dc8c6ac0a2f027d71a4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 95,
    "line": 89,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Notion/Variante5f5d9ebd897bcb3cb52612e678af8ea8045b5a4b398f61b76b539dfc0d3a771.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ca6cd8e4af65d9e5aa86c6134be88db1dece3f063132deef8878ef4fd35fd352",
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

Occurrence: `result:3b4e873d-4e13-1749-b817-cbe4f86ec816`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 89–95.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem FiniteNotion.equivalent_of_budget_le {Object Test Value : Type*}
    {notion : FiniteNotion Object Test Value} {small large : ℕ} {x y : Object}
    (hbudget : small ≤ large) (h : notion.Equivalent large x y) :
    notion.Equivalent small x y :=
  fun test hmem hcost => h test hmem (hcost.trans hbudget)

/-- Full semantic equivalence implies equivalence in each finite subfamily. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Notion/Variante5f5d9ebd897bcb3cb52612e678af8ea8045b5a4b398f61b76b539dfc0d3a771.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Notion/Variante5f5d9ebd897bcb3cb52612e678af8ea8045b5a4b398f61b76b539dfc0d3a771.lean#L89).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f520d84a0ccfea9f902f5dc8c6ac0a2f027d71a4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
