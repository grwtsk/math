# binary_perfect_reconstruction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:66005a5f-dea4-32d9-cb25-23f053335a8b",
  "kind": "theorem",
  "lexical_name": "binary_perfect_reconstruction",
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
  "slug": "binary-perfect-reconstruction--c9cdb636390629d3d221c6e0",
  "source": {
    "blob": "0179d75ae7b6734ceaa4a27ce127360553d3009b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 152,
    "line": 145,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RefinementTree/Variant7473bda6e8ef4f396fd6c4959f3d6d958bb22a9d42b1344460fc52a0f0fd6dcc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c9cdb636390629d3d221c6e0d891758f3ebc4740df12074f08138b08ab276553",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RefinementTree/Variant7473bda6e8ef4f396fd6c4959f3d6d958bb22a9d42b1344460fc52a0f0fd6dcc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:66005a5f-dea4-32d9-cb25-23f053335a8b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 145–152.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem binary_perfect_reconstruction {w₁ w₂ : ℝ} (h₁ : 0 < w₁) (h₂ : 0 < w₂)
    (v₁ v₂ : ℝ) :
    (w₁ * (v₁ + v₂) + (w₂ * v₁ - w₁ * v₂)) / (w₁ + w₂) = v₁ ∧
      (w₂ * (v₁ + v₂) - (w₂ * v₁ - w₁ * v₂)) / (w₁ + w₂) = v₂ := by
  constructor <;> field_simp [(add_pos h₁ h₂).ne'] <;> ring

end
end GRWTSK.RiemannHypothesis.Conversation.RefinementTree
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RefinementTree/Variant7473bda6e8ef4f396fd6c4959f3d6d958bb22a9d42b1344460fc52a0f0fd6dcc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RefinementTree/Variant7473bda6e8ef4f396fd6c4959f3d6d958bb22a9d42b1344460fc52a0f0fd6dcc.lean#L145).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0179d75ae7b6734ceaa4a27ce127360553d3009b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
