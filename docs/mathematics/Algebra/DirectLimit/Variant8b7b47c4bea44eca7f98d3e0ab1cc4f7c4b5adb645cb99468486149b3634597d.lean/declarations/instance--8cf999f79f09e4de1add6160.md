# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:33d0eca1e1be87acee9fac02657ff1f32317f02f7832dc06d4d5b0a86775f02f",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--8cf999f79f09e4de1add6160",
  "source": {
    "blob": "47869bdda224c06a2d2f5a97fd9af2c096e778b3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 279,
    "line": 265,
    "path": "GRWTSK/Algebra/DirectLimit/Variant8b7b47c4bea44eca7f98d3e0ab1cc4f7c4b5adb645cb99468486149b3634597d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8cf999f79f09e4de1add6160d9291417c5600c272d9a501354e9163d1434bc9b",
  "verification": {
    "reference": "docs/verification/Algebra/DirectLimit/Variant8b7b47c4bea44eca7f98d3e0ab1cc4f7c4b5adb645cb99468486149b3634597d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:33d0eca1e1be87acee9fac02657ff1f32317f02f7832dc06d4d5b0a86775f02f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 265–279.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[to_additive] instance : Group (DirectLimit G f) where
  inv := map _ _ (fun _ ↦ (·⁻¹)) fun _ _ _ ↦ map_inv _
  div := map₂ _ _ _ (fun _ ↦ (· / ·)) fun _ _ _ ↦ map_div _
  zpow n := map _ _ (fun _ ↦ (· ^ n)) fun _ _ _ x ↦ map_zpow _ x n
  div_eq_mul_inv := DirectLimit.induction₂ _ fun i _ _ ↦ show map₂ .. = _ * map .. by
    simp_rw [map₂_def, map_def, div_eq_mul_inv, mul_def]
  zpow_zero' := DirectLimit.induction _ fun i _ ↦ by
    simp_rw [HPow.hPow, Pow.pow, map_def, zpow_zero, one_def i]
  zpow_succ' n := DirectLimit.induction _ fun i x ↦ by
    simp_rw [HPow.hPow, Pow.pow, map_def, mul_def]; congr; apply DivInvMonoid.zpow_succ'
  zpow_neg' n := DirectLimit.induction _ fun i x ↦ by
    simp_rw [HPow.hPow, Pow.pow, map_def]; congr; apply DivInvMonoid.zpow_neg'
  inv_mul_cancel := DirectLimit.induction _ fun i _ ↦ by
    simp_rw [map_def, mul_def, inv_mul_cancel, one_def i]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/DirectLimit/Variant8b7b47c4bea44eca7f98d3e0ab1cc4f7c4b5adb645cb99468486149b3634597d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/DirectLimit/Variant8b7b47c4bea44eca7f98d3e0ab1cc4f7c4b5adb645cb99468486149b3634597d.lean#L265).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `47869bdda224c06a2d2f5a97fd9af2c096e778b3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
