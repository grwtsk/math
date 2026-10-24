# abs_thetaModeScore_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2646414326a26657b7d03e76103a0a75d64c5ac9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 173,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e5/e5e28e15354e347f073eef8b03b989d9050e0b2f4cf190beabab34664d7861a8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:46adad9c-3135-9f0f-ad97-45d75d5441ac",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4fde07ca-d4ce-61b8-9b95-f64cc403c390",
  "kind": "theorem",
  "lexical_name": "abs_thetaModeScore_le",
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
  "slug": "abs-thetamodescore-le--2a210c24529bb38ee41c7e08",
  "source": {
    "blob": "2646414326a26657b7d03e76103a0a75d64c5ac9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 185,
    "line": 173,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variante5e28e15354e347f073eef8b03b989d9050e0b2f4cf190beabab34664d7861a8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2a210c24529bb38ee41c7e087eef2f9cd9c53fe3c9d84aacb4a61f75fa37f934",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variante5e28e15354e347f073eef8b03b989d9050e0b2f4cf190beabab34664d7861a8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4fde07ca-d4ce-61b8-9b95-f64cc403c390`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 173–185.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem abs_thetaModeScore_le (m : ℕ) {t : ℝ} (ht : 0 ≤ t) :
    |thetaModeScore m t| ≤ 9 * thetaModeY m t := by
  have hy : 3 ≤ thetaModeY m t :=
    (thetaModeA_gt_three ht).le.trans (thetaModeA_le_thetaModeY m t)
  have hd := thetaMode_den_pos m ht
  have hdiv0 : 0 ≤ 12 / (2 * thetaModeY m t - 3) := by positivity
  have hdiv : 12 / (2 * thetaModeY m t - 3) ≤ 4 :=
    (div_le_iff₀ hd).2 (by linarith)
  unfold thetaModeScore
  rw [abs_le]
  constructor <;> linarith

/-- A polynomial curvature bound used for absolutely convergent weighted sums. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variante5e28e15354e347f073eef8b03b989d9050e0b2f4cf190beabab34664d7861a8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variante5e28e15354e347f073eef8b03b989d9050e0b2f4cf190beabab34664d7861a8.lean#L173).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2646414326a26657b7d03e76103a0a75d64c5ac9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
