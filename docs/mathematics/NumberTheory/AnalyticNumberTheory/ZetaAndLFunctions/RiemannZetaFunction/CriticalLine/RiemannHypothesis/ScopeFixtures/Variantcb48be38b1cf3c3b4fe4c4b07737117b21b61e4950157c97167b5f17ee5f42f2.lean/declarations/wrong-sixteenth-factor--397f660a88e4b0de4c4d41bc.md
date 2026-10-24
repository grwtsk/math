# wrong_sixteenth_factor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "04cd0284f752ba12ac05ba6934440acbaeaa428d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 15,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/cb/cb48be38b1cf3c3b4fe4c4b07737117b21b61e4950157c97167b5f17ee5f42f2.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2e1323f2-d628-0a03-f196-1a2965bb445b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:de924f5d-5dd5-60e7-0532-6037dc1c2003",
  "kind": "theorem",
  "lexical_name": "wrong_sixteenth_factor",
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
  "slug": "wrong-sixteenth-factor--397f660a88e4b0de4c4d41bc",
  "source": {
    "blob": "04cd0284f752ba12ac05ba6934440acbaeaa428d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 27,
    "line": 15,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ScopeFixtures/Variantcb48be38b1cf3c3b4fe4c4b07737117b21b61e4950157c97167b5f17ee5f42f2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:397f660a88e4b0de4c4d41bc4e26ad4fdb2e2609186ac292040ed39cd3c48b4e",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ScopeFixtures/Variantcb48be38b1cf3c3b4fe4c4b07737117b21b61e4950157c97167b5f17ee5f42f2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:de924f5d-5dd5-60e7-0532-6037dc1c2003`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 15–27.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem wrong_sixteenth_factor {A : ℝ} (hA : 1 ≤ A) :
    (1 / 16 : ℝ) * (∫ s in 0..2 * A, primitiveCorrelationZero A s) ≠
      diagonalMainCoefficient A * A := by
  have hZ := source_normalization_pos A hA
  have hk : 0 < diagonalMainCoefficient A := by
    unfold diagonalMainCoefficient
    positivity
  have hm : 0 < diagonalMainCoefficient A * A := mul_pos hk (by linarith)
  have he := primitive_zero_mode_main hA
  intro h
  linarith

/-- The independent linear source term includes A and cannot be called kappa alone. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ScopeFixtures/Variantcb48be38b1cf3c3b4fe4c4b07737117b21b61e4950157c97167b5f17ee5f42f2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ScopeFixtures/Variantcb48be38b1cf3c3b4fe4c4b07737117b21b61e4950157c97167b5f17ee5f42f2.lean#L15).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `04cd0284f752ba12ac05ba6934440acbaeaa428d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
