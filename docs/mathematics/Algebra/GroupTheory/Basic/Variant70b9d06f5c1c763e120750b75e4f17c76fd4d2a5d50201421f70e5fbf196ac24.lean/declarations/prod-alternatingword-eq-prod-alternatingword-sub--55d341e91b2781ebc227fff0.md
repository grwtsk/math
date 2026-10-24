# prod_alternatingWord_eq_prod_alternatingWord_sub

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c422cf3e-8784-2f59-af94-d1c87cd1e68f",
  "kind": "theorem",
  "lexical_name": "prod_alternatingWord_eq_prod_alternatingWord_sub",
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
  "slug": "prod-alternatingword-eq-prod-alternatingword-sub--55d341e91b2781ebc227fff0",
  "source": {
    "blob": "324a8712bed86b424eabc117aeb37e9fea1e1887",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 542,
    "line": 510,
    "path": "GRWTSK/Algebra/GroupTheory/Basic/Variant70b9d06f5c1c763e120750b75e4f17c76fd4d2a5d50201421f70e5fbf196ac24.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:55d341e91b2781ebc227fff036670a0baa50d686a60aef9513a505874265648f",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Basic/Variant70b9d06f5c1c763e120750b75e4f17c76fd4d2a5d50201421f70e5fbf196ac24.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c422cf3e-8784-2f59-af94-d1c87cd1e68f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 510–542.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem prod_alternatingWord_eq_prod_alternatingWord_sub (i i' : B) (m : ℕ) (hm : m ≤ M i i' * 2) :
    π (alternatingWord i i' m) = π (alternatingWord i' i (M i i' * 2 - m)) := by
  simp_rw [prod_alternatingWord_eq_mul_pow, ← Int.even_coe_nat]

  /- Rewrite everything in terms of an integer m' which is equal to m.
  The resulting equation holds for all integers m'. -/
  simp_rw [← zpow_natCast, Int.natCast_ediv, Int.ofNat_sub hm]
  generalize (m : ℤ) = m'
  clear hm
  push_cast

  rcases Int.even_or_odd' m' with ⟨k, rfl | rfl⟩
  · rw [if_pos (by use k; ring), if_pos (by use -k + (M i i'); ring), mul_comm 2 k, ← sub_mul]
    repeat rw [Int.mul_ediv_cancel _ (by norm_num)]
    rw [zpow_sub, zpow_natCast, simple_mul_simple_pow' cs i i', ← inv_zpow]
    simp
  · have : ¬Even (2 * k + 1) := Int.not_even_iff_odd.2 ⟨k, rfl⟩
    rw [if_neg this]
    have : ¬Even (↑(M i i') * 2 - (2 * k + 1)) :=
      Int.not_even_iff_odd.2 ⟨↑(M i i') - k - 1, by ring⟩
    rw [if_neg this]

    rw [(by ring : ↑(M i i') * 2 - (2 * k + 1) = -1 + (-k + ↑(M i i')) * 2),
      (by ring : 2 * k + 1 = 1 + k * 2)]
    repeat rw [Int.add_mul_ediv_right _ _ (by norm_num)]
    norm_num

    rw [zpow_add, zpow_add, zpow_natCast, simple_mul_simple_pow', zpow_neg, ← inv_zpow, zpow_neg,
      ← inv_zpow]
    simp [← mul_assoc]

/-- The two words of length `M i i'` that alternate between `i` and `i'` have the same product.
This is known as the "braid relation" or "Artin-Tits relation". -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Basic/Variant70b9d06f5c1c763e120750b75e4f17c76fd4d2a5d50201421f70e5fbf196ac24.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Basic/Variant70b9d06f5c1c763e120750b75e4f17c76fd4d2a5d50201421f70e5fbf196ac24.lean#L510).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `324a8712bed86b424eabc117aeb37e9fea1e1887` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
