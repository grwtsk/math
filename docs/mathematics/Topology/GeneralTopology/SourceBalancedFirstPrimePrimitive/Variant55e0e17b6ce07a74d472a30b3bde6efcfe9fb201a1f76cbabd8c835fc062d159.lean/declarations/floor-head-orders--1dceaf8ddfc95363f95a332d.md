# floor_head_orders

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:18ee1d46-d024-74a5-8613-3625fb202d40",
  "kind": "theorem",
  "lexical_name": "floor_head_orders",
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
  "slug": "floor-head-orders--1dceaf8ddfc95363f95a332d",
  "source": {
    "blob": "720281a45b1ec20abac1242a8ce2ba4c5d6dcf30",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 204,
    "line": 194,
    "path": "GRWTSK/Topology/GeneralTopology/SourceBalancedFirstPrimePrimitive/Variant55e0e17b6ce07a74d472a30b3bde6efcfe9fb201a1f76cbabd8c835fc062d159.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1dceaf8ddfc95363f95a332d4f2a23193832c9e79fe44f42ae3f0d5164a56a2a",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SourceBalancedFirstPrimePrimitive/Variant55e0e17b6ce07a74d472a30b3bde6efcfe9fb201a1f76cbabd8c835fc062d159.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:18ee1d46-d024-74a5-8613-3625fb202d40`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 194–204.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem floor_head_orders {A : ℝ} (hA : 91 ≤ A) :
    Real.log 7 ≤ Real.log (⌊A ^ 2⌋₊ : ℝ) ∧
    Real.log (⌊A ^ 2⌋₊ : ℝ) ≤ 2 * Real.log A := by
  have hp : 0 < A := by linarith
  have hU : 7 ≤ ⌊A ^ 2⌋₊ := Nat.le_floor (by nlinarith : (7 : ℝ) ≤ A ^ 2)
  have hUr : (7 : ℝ) ≤ (⌊A ^ 2⌋₊ : ℝ) := by exact_mod_cast hU
  have hlog := Real.log_le_log (by linarith : 0 < (⌊A ^ 2⌋₊ : ℝ))
    (Nat.floor_le (sq_nonneg A))
  rw [Real.log_pow] at hlog
  exact ⟨Real.log_le_log (by norm_num) hUr, by simpa using hlog⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SourceBalancedFirstPrimePrimitive/Variant55e0e17b6ce07a74d472a30b3bde6efcfe9fb201a1f76cbabd8c835fc062d159.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SourceBalancedFirstPrimePrimitive/Variant55e0e17b6ce07a74d472a30b3bde6efcfe9fb201a1f76cbabd8c835fc062d159.lean#L194).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `720281a45b1ec20abac1242a8ce2ba4c5d6dcf30` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
