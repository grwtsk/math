# UniqueFactorizationMonoid.toGCDMonoid

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fae614cd1e531c488a8396c1b68a5bb3281d70bf684b447acc7a5edd27fa0d23",
  "kind": "def",
  "lexical_name": "UniqueFactorizationMonoid.toGCDMonoid",
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
  "slug": "uniquefactorizationmonoid-togcdmonoid--b84ae1726a1dcfc7cc6e2d24",
  "source": {
    "blob": "35c291d382c6d9d4e59536769a537c8fce1dfb3e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1929,
    "line": 1899,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/UniqueFactorizationDomain/Variantdf2a448084744bfa924e2513fa820878aaec42db1eb8ce8a8b4ac6393dd355d0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b84ae1726a1dcfc7cc6e2d24efa2c07178dc49e1f1d9aa9f6807b2e692df7310",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/UniqueFactorizationDomain/Variantdf2a448084744bfa924e2513fa820878aaec42db1eb8ce8a8b4ac6393dd355d0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fae614cd1e531c488a8396c1b68a5bb3281d70bf684b447acc7a5edd27fa0d23`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1899–1929.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def UniqueFactorizationMonoid.toGCDMonoid (α : Type*) [CancelCommMonoidWithZero α]
    [UniqueFactorizationMonoid α] [DecidableEq (Associates α)] [DecidableEq α] : GCDMonoid α where
  gcd a b := Quot.out (Associates.mk a ⊓ Associates.mk b : Associates α)
  lcm a b := Quot.out (Associates.mk a ⊔ Associates.mk b : Associates α)
  gcd_dvd_left a b := by
    rw [← mk_dvd_mk, (Associates.mk a ⊓ Associates.mk b).quot_out, congr_fun₂ dvd_eq_le]
    exact inf_le_left
  gcd_dvd_right a b := by
    rw [← mk_dvd_mk, (Associates.mk a ⊓ Associates.mk b).quot_out, congr_fun₂ dvd_eq_le]
    exact inf_le_right
  dvd_gcd {a b c} hac hab := by
    rw [← mk_dvd_mk, (Associates.mk c ⊓ Associates.mk b).quot_out, congr_fun₂ dvd_eq_le, le_inf_iff,
      mk_le_mk_iff_dvd_iff, mk_le_mk_iff_dvd_iff]
    exact ⟨hac, hab⟩
  lcm_zero_left a := by
    have : Associates.mk (0 : α) = ⊤ := rfl
    dsimp
    rw [this, top_sup_eq, ← this, ← associated_zero_iff_eq_zero, ← mk_eq_mk_iff_associated, ←
      associated_iff_eq, Associates.quot_out]
  lcm_zero_right a := by
    have : Associates.mk (0 : α) = ⊤ := rfl
    dsimp
    rw [this, sup_top_eq, ← this, ← associated_zero_iff_eq_zero, ← mk_eq_mk_iff_associated, ←
      associated_iff_eq, Associates.quot_out]
  gcd_mul_lcm a b := by
    rw [← mk_eq_mk_iff_associated, ← Associates.mk_mul_mk, ← associated_iff_eq, Associates.quot_out,
      Associates.quot_out, mul_comm, sup_mul_inf, Associates.mk_mul_mk]
#align unique_factorization_monoid.to_gcd_monoid UniqueFactorizationMonoid.toGCDMonoid

/-- `toNormalizedGCDMonoid` constructs a GCD monoid out of a normalization on a
  unique factorization domain. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/UniqueFactorizationDomain/Variantdf2a448084744bfa924e2513fa820878aaec42db1eb8ce8a8b4ac6393dd355d0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/UniqueFactorizationDomain/Variantdf2a448084744bfa924e2513fa820878aaec42db1eb8ce8a8b4ac6393dd355d0.lean#L1899).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `35c291d382c6d9d4e59536769a537c8fce1dfb3e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
