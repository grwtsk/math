# positiveMass_eventually_gt_polynomial

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "de7bca87fe727185ec95b7566a4bfe705ad23915",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 61,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/54/540c8970c99ee0eb66663c12c9b33e81ea0c9e53d8afa7e365e17d7c2b1a66fa.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3da566c9-bb07-4e9c-5cc0-f17c0deb67d8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:92a3a33c-b57d-74ec-90c2-069cbe0f0d01",
  "kind": "theorem",
  "lexical_name": "positiveMass_eventually_gt_polynomial",
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
  "slug": "positivemass-eventually-gt-polynomial--071b4e2e8bcd4c0d54d3941f",
  "source": {
    "blob": "de7bca87fe727185ec95b7566a4bfe705ad23915",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 68,
    "line": 61,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/SourcePhasePolynomialBudget/Variant540c8970c99ee0eb66663c12c9b33e81ea0c9e53d8afa7e365e17d7c2b1a66fa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:071b4e2e8bcd4c0d54d3941f58f8712c1d3ba6a73a94ba1a398072528c52ee07",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/SourcePhasePolynomialBudget/Variant540c8970c99ee0eb66663c12c9b33e81ea0c9e53d8afa7e365e17d7c2b1a66fa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:92a3a33c-b57d-74ec-90c2-069cbe0f0d01`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 61–68.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem positiveMass_eventually_gt_polynomial (d : ℕ) (C : ℝ) :
    ∃ R : ℝ, 1 ≤ R ∧ ∀ A : ℝ, R ≤ A → C * A ^ d < positiveMass A := by
  refine ⟨max 1 ((C + 2) / phasePolynomialCoefficient d), le_max_left _ _, ?_⟩
  intro A hA
  exact positiveMass_gt_polynomial d ((le_max_left _ _).trans hA)
    ((le_max_right _ _).trans hA)

/-- This hostile guard excludes only scalar phase-mass budgets, not a signed arithmetic estimate. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/SourcePhasePolynomialBudget/Variant540c8970c99ee0eb66663c12c9b33e81ea0c9e53d8afa7e365e17d7c2b1a66fa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/SourcePhasePolynomialBudget/Variant540c8970c99ee0eb66663c12c9b33e81ea0c9e53d8afa7e365e17d7c2b1a66fa.lean#L61).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `de7bca87fe727185ec95b7566a4bfe705ad23915` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
