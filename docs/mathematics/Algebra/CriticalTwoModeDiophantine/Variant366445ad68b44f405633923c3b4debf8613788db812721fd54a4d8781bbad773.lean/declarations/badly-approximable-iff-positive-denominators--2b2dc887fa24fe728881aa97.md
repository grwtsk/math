# badly_approximable_iff_positive_denominators

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:023b3bdd-7ad5-a895-c9e4-3dffa5c29aef",
  "kind": "theorem",
  "lexical_name": "badly_approximable_iff_positive_denominators",
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
  "slug": "badly-approximable-iff-positive-denominators--2b2dc887fa24fe728881aa97",
  "source": {
    "blob": "dfb2d5c40b93fe8c353093184ad762e0b858f1bc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 54,
    "line": 29,
    "path": "GRWTSK/Algebra/CriticalTwoModeDiophantine/Variant366445ad68b44f405633923c3b4debf8613788db812721fd54a4d8781bbad773.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2b2dc887fa24fe728881aa970993b4be767bb08c6f95ae147bf5c22c1b777fdf",
  "verification": {
    "reference": "docs/verification/Algebra/CriticalTwoModeDiophantine/Variant366445ad68b44f405633923c3b4debf8613788db812721fd54a4d8781bbad773.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:023b3bdd-7ad5-a895-c9e4-3dffa5c29aef`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 29–54.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem badly_approximable_iff_positive_denominators (α : ℝ) :
    BadlyApproximable α ↔ ∃ c : ℝ, 0 < c ∧ ∀ m : ℕ, 1 ≤ m → ∀ n : ℤ,
      c/(m : ℝ) ≤ |α*(m : ℝ)-(n : ℝ)| := by
  constructor
  · rintro ⟨c,hc,hbad⟩
    refine ⟨c,hc,?_⟩
    intro m hm n
    have hm0 : m ≠ 0 := by omega
    have hmZ : (m : ℤ) ≠ 0 := by exact_mod_cast hm0
    simpa only [Int.cast_natCast,abs_of_nonneg (Nat.cast_nonneg (α := ℝ) m)] using hbad (m : ℤ) hmZ n
  · rintro ⟨c,hc,hbad⟩
    refine ⟨c,hc,?_⟩
    have hpos (m : ℤ) (hm : 0 < m) (n : ℤ) :
        c/|(m : ℝ)| ≤ |α*(m : ℝ)-(n : ℝ)| := by
      have he : (m.toNat : ℝ) = (m : ℝ) := by exact_mod_cast Int.toNat_of_nonneg hm.le
      have hmR : (0 : ℝ) < (m : ℝ) := by exact_mod_cast hm
      simpa only [he,abs_of_pos hmR] using hbad m.toNat (by omega) n
    intro m hm n
    rcases lt_or_gt_of_ne hm with hmneg | hmpos
    · have h := hpos (-m) (neg_pos.mpr hmneg) (-n)
      simp only [Int.cast_neg,abs_neg] at h
      have he : α*(-(m : ℝ))-(-(n : ℝ)) = -(α*(m : ℝ)-(n : ℝ)) := by ring
      rw [he,abs_neg] at h
      exact h
    · exact hpos m hmpos n

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/CriticalTwoModeDiophantine/Variant366445ad68b44f405633923c3b4debf8613788db812721fd54a4d8781bbad773.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CriticalTwoModeDiophantine/Variant366445ad68b44f405633923c3b4debf8613788db812721fd54a4d8781bbad773.lean#L29).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dfb2d5c40b93fe8c353093184ad762e0b858f1bc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
