# prod_alternatingWord_eq_prod_alternatingWord_sub

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b86c6755-236a-2612-f588-abdd807609e0",
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
  "slug": "prod-alternatingword-eq-prod-alternatingword-sub--bdcb31c0055fadf15b455d8c",
  "source": {
    "blob": "dfa999789ee38a183e816fdea3b4f0b41d8df338",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 526,
    "line": 500,
    "path": "GRWTSK/Algebra/GroupTheory/Basic/Varianta8da850c5618ef5dfeb0341eca2d59277ea89e9046139044ec9209def69ed3f6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bdcb31c0055fadf15b455d8c906aed7c79deab0dbb44ee3685e300feea37557a",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Basic/Varianta8da850c5618ef5dfeb0341eca2d59277ea89e9046139044ec9209def69ed3f6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b86c6755-236a-2612-f588-abdd807609e0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 500–526.

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
  · rw [ite_eq_left (by use k; ring), ite_eq_left (by use -k + (M i i'); ring), mul_comm 2 k,
      ← sub_mul]
    repeat rw [Int.mul_ediv_cancel _ (by simp)]
    rw [zpow_sub, zpow_natCast, simple_mul_simple_pow' cs i i', ← inv_zpow]
    simp
  · have : ¬Even (2 * k + 1) := Int.not_even_iff_odd.2 ⟨k, rfl⟩
    rw [ite_eq_right this]
    have : ¬Even (↑(M i i') * 2 - (2 * k + 1)) :=
      Int.not_even_iff_odd.2 ⟨↑(M i i') - k - 1, by ring⟩
    rw [ite_eq_right this]
    rw [(by ring : ↑(M i i') * 2 - (2 * k + 1) = -1 + (-k + ↑(M i i')) * 2),
      (by ring : 2 * k + 1 = 1 + k * 2)]
    repeat rw [Int.add_mul_ediv_right _ _ (by simp)]
    simp [zpow_add, simple_mul_simple_pow', ← inv_zpow, ← mul_assoc]

/-- The two words of length `M i i'` that alternate between `i` and `i'` have the same product.
This is known as the "braid relation" or "Artin-Tits relation". -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Basic/Varianta8da850c5618ef5dfeb0341eca2d59277ea89e9046139044ec9209def69ed3f6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Basic/Varianta8da850c5618ef5dfeb0341eca2d59277ea89e9046139044ec9209def69ed3f6.lean#L500).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dfa999789ee38a183e816fdea3b4f0b41d8df338` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
