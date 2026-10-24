# positiveMass_eventually_gt_polynomial

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "042ebba1bdda0d2faa19767b1b6b631923ec03bc",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 62,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/eb/ebaf4ab66094e26b99cfd90cf2e5ee762babb9ee83ce793041464524c1d8a4ff.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3a7ee4d0-d5c0-9265-d75b-f3e0103293b9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6e25dbf0-2b72-c8a0-2f17-e270510cc7fc",
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
  "slug": "positivemass-eventually-gt-polynomial--79593d5b6d6885aecc9ff2e9",
  "source": {
    "blob": "042ebba1bdda0d2faa19767b1b6b631923ec03bc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 69,
    "line": 62,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/PhasePolynomialBudget/Variantebaf4ab66094e26b99cfd90cf2e5ee762babb9ee83ce793041464524c1d8a4ff.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:79593d5b6d6885aecc9ff2e93b942b467ab00e943f768dab1c94a4f0f5375b5f",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/PhasePolynomialBudget/Variantebaf4ab66094e26b99cfd90cf2e5ee762babb9ee83ce793041464524c1d8a4ff.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6e25dbf0-2b72-c8a0-2f17-e270510cc7fc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 62–69.

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

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/PhasePolynomialBudget/Variantebaf4ab66094e26b99cfd90cf2e5ee762babb9ee83ce793041464524c1d8a4ff.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/PhasePolynomialBudget/Variantebaf4ab66094e26b99cfd90cf2e5ee762babb9ee83ce793041464524c1d8a4ff.lean#L62).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `042ebba1bdda0d2faa19767b1b6b631923ec03bc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
