# weierstrass_remainder

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:aa21882c-0f4f-bc4d-35f3-6e5e34ba1e32",
  "kind": "theorem",
  "lexical_name": "weierstrass_remainder",
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
  "slug": "weierstrass-remainder--c55985324ed5f3f9bb4d54e1",
  "source": {
    "blob": "3d039fe7399d5773bf04d9bd72575f5fee7bf6ec",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 243,
    "line": 161,
    "path": "GRWTSK/Topology/GeneralTopology/NowhereDifferentiable/Variant7b1541db10ce2b0d90ccc2c4912fffc8d46e0cf29111b4724d04f034bc6efe2d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c55985324ed5f3f9bb4d54e1f9733880a8003d5f6d80f20c46813fd4d10714cb",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/NowhereDifferentiable/Variant7b1541db10ce2b0d90ccc2c4912fffc8d46e0cf29111b4724d04f034bc6efe2d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:aa21882c-0f4f-bc4d-35f3-6e5e34ba1e32`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 161–243.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem weierstrass_remainder {a : ℝ} (ha : 0 < a) {b : ℕ} (hb : Odd b) {x : ℝ} {m : ℕ}
    (hsum : Summable fun n ↦
      a ^ (n + m) * (cos (b ^ (n + m) * π * seq b x m) - cos (b ^ (n + m) * π * x))) :
    |seq b x m - x| * (2 / 3 * (a * b) ^ m) ≤
      |∑' n, a ^ (n + m) * (cos (b ^ (n + m) * π * seq b x m) - cos (b ^ (n + m) * π * x))| := by
  have hb0 : b ≠ 0 := fun h ↦ Nat.not_odd_zero (h ▸ hb)
  have hb0' : (0 : ℝ) < b := by simpa using Nat.pos_of_ne_zero hb0
  -- We are going to show that all terms in the sum have the same sign,
  -- and we only need to use the first term to get the lower bound
  trans a ^ m * (1 + cos ((b ^ m * x - ⌊b ^ m * x + 2⁻¹⌋) * π))
  · -- Show that the first term (after simplification) satisfies the bound
    suffices a ^ m * (2 / 3 * b ^ m * |seq b x m - x|) ≤
        a ^ m * (1 + cos ((b ^ m * x - ⌊b ^ m * x + 2⁻¹⌋) * π)) by
      convert! this using 1
      ring
    refine mul_le_mul_of_nonneg_left ?_ (pow_nonneg ha.le _)
    trans 1
    · rw [abs_of_nonneg (by simpa using (lt_seq hb0' _ _).le), seq]
      grw [Int.floor_le]
      apply le_of_eq
      have : b ^ m ≠ (0 : ℝ) := by simp [hb0]
      field_simp
      ring
    · rw [le_add_iff_nonneg_right]
      refine cos_nonneg_of_mem_Icc (Set.mem_Icc.mpr ⟨?_, ?_⟩)
      · grw [Int.floor_le]
        grind
      · grw [← Int.sub_one_lt_floor]
        apply le_of_eq
        ring
  -- Show that the first cos in each term is always ±1
  have h1 (n : ℕ) : cos (b ^ (n + m) * π * seq b x m) = - (-1) ^ (⌊b ^ m * x + 2⁻¹⌋) :=
    calc
      _ = cos ((b ^ n * (⌊b ^ m * x + 2⁻¹⌋ + 1) : ℤ) * π) := by
        push_cast
        rw [← seq_mul_pow (by simp [hb0])]
        ring_nf
      _ = ((-1) ^ b ^ n) ^ (⌊b ^ m * x + 2⁻¹⌋) * (-1) ^ b ^ n := by
        rw [cos_int_mul_pi, mul_add_one, zpow_add₀ (by simp), zpow_mul]
        norm_cast
      _ = _ := by
        simp [Odd.neg_one_pow (show Odd (b ^ n) from hb.pow)]
  -- Show that the second cos in each term is always ±cos(...)
  have h2 (n : ℕ) : cos (b ^ (n + m) * π * x) =
      (-1) ^ (⌊b ^ m * x + 2⁻¹⌋) * cos (b ^ n * (b ^ m * x - ⌊b ^ m * x + 2⁻¹⌋) * π) :=
    calc
      _ = cos (b ^ n * (b ^ m * x - ⌊b ^ m * x + 2⁻¹⌋) * π +
          (b ^ n * (⌊b ^ m * x + 2⁻¹⌋) : ℤ) * π) := by
        push_cast
        ring_nf
      _ = ((-1) ^ b ^ n) ^ (⌊b ^ m * x + 2⁻¹⌋) *
          cos (b ^ n * (b ^ m * x - ⌊b ^ m * x + 2⁻¹⌋) * π) := by
        rw [cos_add_int_mul_pi, zpow_mul]
        norm_cast
      _ = _ := by
        simp [Odd.neg_one_pow (show Odd (b ^ n) from hb.pow)]
  -- Show that all terms have the same sign, and the first term agrees with the one we previously
  -- assumed
  have h3 (n : ℕ) : a ^ (n + m) * (cos (b ^ (n + m) * π * seq b x m) - cos (b ^ (n + m) * π * x))
      = - (-1) ^ (⌊b ^ m * x + 2⁻¹⌋) *
        (a ^ (n + m) * (1 + cos (b ^ n * (b ^ m * x - ⌊b ^ m * x + 2⁻¹⌋) * π))) := by
    rw [h1, h2]
    ring
  simp_rw [h3, tsum_mul_left] at ⊢ hsum
  rw [summable_mul_left_iff (by grind [zpow_ne_zero])] at hsum
  rw [abs_mul, abs_neg, abs_neg_one_zpow, one_mul]
  have h (n : ℕ) : 0 ≤ a ^ (n + m) * (1 + cos (b ^ n * (b ^ m * x - ⌊b ^ m * x + 2⁻¹⌋) * π)) := by
    apply mul_nonneg (by positivity)
    grind [neg_one_le_cos]
  -- extract first term
  rw [abs_of_nonneg (tsum_nonneg h), Summable.tsum_eq_zero_add hsum]
  simpa using tsum_nonneg (fun n ↦ h (n + 1))

/-!
With bounds for $|A|$ and $|B|$ found, we have

$$ |f(x_m) - f(x)| = |A + B| \ge |B| - |A| \ge
  |x_m - x| (ab)^m \left(\frac{2}{3} - \frac{\pi}{ab - 1}\right) $$

It is obvious that $|f(x_m) - f(x)| / |x_m - x|$ grows exponentially and gives no limit for the
derivative.
-/

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/NowhereDifferentiable/Variant7b1541db10ce2b0d90ccc2c4912fffc8d46e0cf29111b4724d04f034bc6efe2d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/NowhereDifferentiable/Variant7b1541db10ce2b0d90ccc2c4912fffc8d46e0cf29111b4724d04f034bc6efe2d.lean#L161).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3d039fe7399d5773bf04d9bd72575f5fee7bf6ec` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
