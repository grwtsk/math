# normalizedGCDMonoidOfGCD

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:74d47ecb2f64c7b26fe0375fe9a5c95afa394d8906b875beaed9d3b4e31de837",
  "kind": "def",
  "lexical_name": "normalizedGCDMonoidOfGCD",
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
  "slug": "normalizedgcdmonoidofgcd--3245a5a027a25cc137b4084b",
  "source": {
    "blob": "5bd393597fdb26b189614093565aba54ead9d1d7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1023,
    "line": 970,
    "path": "GRWTSK/Algebra/Basic/Variant7b73e08586066af0e75003ae12a781d19ce90ea4e2d084420b717994d40f363e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3245a5a027a25cc137b4084b3e29992574b6fda17f7194a3d36ea7140ea8b90b",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variant7b73e08586066af0e75003ae12a781d19ce90ea4e2d084420b717994d40f363e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:74d47ecb2f64c7b26fe0375fe9a5c95afa394d8906b875beaed9d3b4e31de837`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 970–1023.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def normalizedGCDMonoidOfGCD [NormalizationMonoid α] [DecidableEq α] (gcd : α → α → α)
    (gcd_dvd_left : ∀ a b, gcd a b ∣ a) (gcd_dvd_right : ∀ a b, gcd a b ∣ b)
    (dvd_gcd : ∀ {a b c}, a ∣ c → a ∣ b → a ∣ gcd c b)
    (normalize_gcd : ∀ a b, normalize (gcd a b) = gcd a b) : NormalizedGCDMonoid α :=
  { (inferInstance : NormalizationMonoid α) with
    gcd
    gcd_dvd_left
    gcd_dvd_right
    dvd_gcd := fun {_ _ _} => dvd_gcd
    normalize_gcd
    lcm := fun a b =>
      if a = 0 then 0
      else Classical.choose (dvd_normalize_iff.2 ((gcd_dvd_left a b).trans (Dvd.intro b rfl)))
    normalize_lcm := fun a b => by
      dsimp [normalize]
      split_ifs with a0
      · exact @normalize_zero α _ _
      · have := (Classical.choose_spec
          (dvd_normalize_iff.2 ((gcd_dvd_left a b).trans (Dvd.intro b rfl)))).symm
        set l := Classical.choose (dvd_normalize_iff.2 ((gcd_dvd_left a b).trans (Dvd.intro b rfl)))
        obtain rfl | hb := eq_or_ne b 0
        · rw [mul_zero a, normalize_zero, mul_eq_zero] at this
          obtain ha | hl := this
          · apply (a0 _).elim
            rw [← zero_dvd_iff, ← ha]
            exact gcd_dvd_left _ _
          · rw [hl, zero_mul]
        have h1 : gcd a b ≠ 0 := by
          have hab : a * b ≠ 0 := mul_ne_zero a0 hb
          contrapose! hab
          rw [← normalize_eq_zero, ← this, hab, zero_mul]
        have h2 : normalize (gcd a b * l) = gcd a b * l := by rw [this, normalize_idem]
        rw [← normalize_gcd] at this
        rwa [normalize.map_mul, normalize_gcd, mul_right_inj' h1] at h2
    gcd_mul_lcm := fun a b => by
      split_ifs with a0
      · rw [mul_zero, a0, zero_mul]
      · rw [← Classical.choose_spec (dvd_normalize_iff.2 ((gcd_dvd_left a b).trans (.intro b rfl)))]
        exact normalize_associated (a * b)
    lcm_zero_left := fun _ => if_pos rfl
    lcm_zero_right := fun a => by
      split_ifs with a0
      · rfl
      rw [← normalize_eq_zero] at a0
      have h :=
        (Classical.choose_spec (dvd_normalize_iff.2 ((gcd_dvd_left a 0).trans (.intro 0 rfl)))).symm
      have gcd0 : gcd a 0 = normalize a := by
        rw [← normalize_gcd]
        exact normalize_eq_normalize (gcd_dvd_left _ _) (dvd_gcd (dvd_refl a) (dvd_zero a))
      rw [← gcd0] at a0
      apply Or.resolve_left (mul_eq_zero.1 _) a0
      rw [h, mul_zero, normalize_zero] }

/-- Define `GCDMonoid` on a structure just from the `lcm` and its properties. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variant7b73e08586066af0e75003ae12a781d19ce90ea4e2d084420b717994d40f363e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variant7b73e08586066af0e75003ae12a781d19ce90ea4e2d084420b717994d40f363e.lean#L970).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5bd393597fdb26b189614093565aba54ead9d1d7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
