# normalizedGCDMonoidOfLCM

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:de6e8970515ae068b1690aeb09f82a3a123f60418e3b30c675b9f339acb5e8fa",
  "kind": "def",
  "lexical_name": "normalizedGCDMonoidOfLCM",
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
  "slug": "normalizedgcdmonoidoflcm--4ea3a123734618a82ad5a014",
  "source": {
    "blob": "1f975a898c9caaaf40b3737fcbeb2a9ea6490c79",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1276,
    "line": 1221,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantd25d0648ca3de5e235e22d9b5e85635e5da2e1bec2b07d5af01d0ce7ae1bb8a0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4ea3a123734618a82ad5a014ceae7b411e09eb0d745a0c014f665ebb35d7b111",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantd25d0648ca3de5e235e22d9b5e85635e5da2e1bec2b07d5af01d0ce7ae1bb8a0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:de6e8970515ae068b1690aeb09f82a3a123f60418e3b30c675b9f339acb5e8fa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1221–1276.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def normalizedGCDMonoidOfLCM [NormalizationMonoid α] [DecidableEq α] (lcm : α → α → α)
    (dvd_lcm_left : ∀ a b, a ∣ lcm a b) (dvd_lcm_right : ∀ a b, b ∣ lcm a b)
    (lcm_dvd : ∀ {a b c}, c ∣ a → b ∣ a → lcm c b ∣ a)
    (normalize_lcm : ∀ a b, normalize (lcm a b) = lcm a b) : NormalizedGCDMonoid α :=
  let exists_gcd a b := lcm_dvd (Dvd.intro b rfl) (Dvd.intro_left a rfl)
  let := gcdMonoidOfLCM lcm dvd_lcm_left dvd_lcm_right lcm_dvd
  { (inferInstance : NormalizationMonoid α) with
    lcm
    gcd a b := normalize <|
      if a = 0 then b
      else if b = 0 then a else Classical.choose (exists_gcd a b)
    gcd_mul_lcm a b := by
      split_ifs with h h_1
      · rw [h, eq_zero_of_zero_dvd (dvd_lcm_left _ _), mul_zero, zero_mul]
      · rw [h_1, eq_zero_of_zero_dvd (dvd_lcm_right _ _), mul_zero, mul_zero]
      rw [mul_comm]
      exact ((normalize_associated _).mul_left _).trans
        (.of_eq (Classical.choose_spec (exists_gcd a b)).symm)
    normalize_lcm
    normalize_gcd a b := normalize_idem _
    lcm_zero_left _ := eq_zero_of_zero_dvd (dvd_lcm_left _ _)
    lcm_zero_right _ := eq_zero_of_zero_dvd (dvd_lcm_right _ _)
    gcd_dvd_left a b := by
      split_ifs with h h_1
      · rw [h]
        apply dvd_zero
      · exact (normalize_associated _).dvd
      have h0 : lcm a b ≠ 0 := lcm_ne_zero_iff.mpr ⟨h, h_1⟩
      rw [normalize_dvd_iff, ← mul_dvd_mul_iff_left h0, ← Classical.choose_spec (exists_gcd a b),
        mul_comm, mul_dvd_mul_iff_right h]
      apply dvd_lcm_right
    gcd_dvd_right a b := by
      split_ifs with h h_1
      · exact (normalize_associated _).dvd
      · rw [h_1]
        apply dvd_zero
      have h0 : lcm a b ≠ 0 := lcm_ne_zero_iff.mpr ⟨h, h_1⟩
      rw [normalize_dvd_iff, ← mul_dvd_mul_iff_left h0, ← Classical.choose_spec (exists_gcd a b),
        mul_dvd_mul_iff_right h_1]
      apply dvd_lcm_left
    dvd_gcd {a b c} ac ab := by
      split_ifs with h h_1
      · apply dvd_normalize_iff.2 ab
      · apply dvd_normalize_iff.2 ac
      have h0 : lcm c b ≠ 0 := lcm_ne_zero_iff.mpr ⟨h, h_1⟩
      rw [dvd_normalize_iff, ← mul_dvd_mul_iff_left h0, ← Classical.choose_spec (exists_gcd c b)]
      rcases ab with ⟨d, rfl⟩
      rw [mul_eq_zero] at h_1
      push Not at h_1
      rw [mul_comm a, ← mul_assoc, mul_dvd_mul_iff_right h_1.1]
      apply lcm_dvd (Dvd.intro d rfl)
      rw [mul_comm, mul_dvd_mul_iff_right h_1.2]
      apply ac }

/-- Define a `GCDMonoid` structure on a monoid just from the existence of a `gcd`. -/
@[instance_reducible]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantd25d0648ca3de5e235e22d9b5e85635e5da2e1bec2b07d5af01d0ce7ae1bb8a0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantd25d0648ca3de5e235e22d9b5e85635e5da2e1bec2b07d5af01d0ce7ae1bb8a0.lean#L1221).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1f975a898c9caaaf40b3737fcbeb2a9ea6490c79` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
