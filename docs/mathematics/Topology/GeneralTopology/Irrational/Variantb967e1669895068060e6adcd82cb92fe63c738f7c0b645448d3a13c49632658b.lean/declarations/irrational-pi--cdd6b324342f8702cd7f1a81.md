# irrational_pi

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ed44ac65-e185-c18f-4b94-26971914b13b",
  "kind": "theorem",
  "lexical_name": "irrational_pi",
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
  "slug": "irrational-pi--cdd6b324342f8702cd7f1a81",
  "source": {
    "blob": "8f18a360eaa0fbee0771677cc30345db94506fe5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 314,
    "line": 284,
    "path": "GRWTSK/Topology/GeneralTopology/Irrational/Variantb967e1669895068060e6adcd82cb92fe63c738f7c0b645448d3a13c49632658b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cdd6b324342f8702cd7f1a817a88c0ddefba0489a9376dec1621b28d95261be3",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Irrational/Variantb967e1669895068060e6adcd82cb92fe63c738f7c0b645448d3a13c49632658b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ed44ac65-e185-c18f-4b94-26971914b13b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 284–314.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] theorem irrational_pi : Irrational π := by
  apply Irrational.of_div_natCast 2
  rw [Nat.cast_two]
  by_contra h'
  obtain ⟨a, b, hb, h⟩ := not_irrational_exists_rep h'
  have ha : (0 : ℝ) < a := by
    have : 0 < (a : ℝ) / b := h ▸ pi_div_two_pos
    rwa [lt_div_iff₀ (by positivity), zero_mul] at this
  have k (n : ℕ) : 0 < (a : ℝ) ^ (2 * n + 1) / n ! := by positivity
  have j : ∀ᶠ n : ℕ in atTop, (a : ℝ) ^ (2 * n + 1) / n ! * I n (π / 2) < 1 := by
    have := (tendsto_pow_div_factorial_at_top_aux a).eventually_lt_const
      (show (0 : ℝ) < 1 / 2 by norm_num)
    filter_upwards [this] with n hn
    rw [lt_div_iff₀ (zero_lt_two : (0 : ℝ) < 2)] at hn
    exact hn.trans_le' (mul_le_mul_of_nonneg_left (I_le _) (by positivity))
  obtain ⟨n, hn⟩ := j.exists
  have hn' : 0 < a ^ (2 * n + 1) / n ! * I n (π / 2) := mul_pos (k _) I_pos
  obtain ⟨z, hz⟩ : ∃ z : ℤ, (sinPoly n).eval₂ (Int.castRingHom ℝ) (a / b) * b ^ (2 * n + 1) = z :=
    is_integer a b ((sinPoly_natDegree_le _).trans (by omega))
  have e := sinPoly_add_cosPoly_eval (π / 2) n
  rw [cos_pi_div_two, sin_pi_div_two, mul_zero, mul_one, add_zero] at e
  have : a ^ (2 * n + 1) / n ! * I n (π / 2) =
      eval₂ (Int.castRingHom ℝ) (π / 2) (sinPoly n) * b ^ (2 * n + 1) := by
    nth_rw 2 [h] at e
    field_simp at e ⊢
    linear_combination e
  have : (0 : ℝ) < z ∧ (z : ℝ) < 1 := by simp [← hz, ← h, ← this, hn', hn]
  norm_cast at this
  omega

end
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Irrational/Variantb967e1669895068060e6adcd82cb92fe63c738f7c0b645448d3a13c49632658b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Irrational/Variantb967e1669895068060e6adcd82cb92fe63c738f7c0b645448d3a13c49632658b.lean#L284).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8f18a360eaa0fbee0771677cc30345db94506fe5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
