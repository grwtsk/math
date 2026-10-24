# chineseRemainder'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b671c2302f08ff3f868338417b42065d7629c91b7994ca05def3033836ad18f6",
  "kind": "def",
  "lexical_name": "chineseRemainder'",
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
  "slug": "chineseremainder--48d42c560cd52f2c0f5cb00a",
  "source": {
    "blob": "e2eeca0e81620eec3c350508c2c1d4187eb28cad",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 328,
    "line": 287,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ModEq/Variant456da603f2c807512e5ceb4f66400d7e5a540cb95e095143c35809b7ea5a4559.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:48d42c560cd52f2c0f5cb00a9284139319ee345af9a02637ca013c0781e34b5c",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/ModEq/Variant456da603f2c807512e5ceb4f66400d7e5a540cb95e095143c35809b7ea5a4559.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b671c2302f08ff3f868338417b42065d7629c91b7994ca05def3033836ad18f6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 287–328.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def chineseRemainder' (h : a ≡ b [MOD gcd n m]) : { k // k ≡ a [MOD n] ∧ k ≡ b [MOD m] } :=
  if hn : n = 0 then ⟨a, by
    rw [hn, gcd_zero_left] at h; constructor
    · rfl
    · exact h⟩
  else
    if hm : m = 0 then ⟨b, by
      rw [hm, gcd_zero_right] at h; constructor
      · exact h.symm
      · rfl⟩
    else
      ⟨let (c, d) := xgcd n m; Int.toNat ((n * c * b + m * d * a) / gcd n m % lcm n m), by
        rw [xgcd_val]
        dsimp
        rw [modEq_iff_dvd, modEq_iff_dvd,
          Int.toNat_of_nonneg (Int.emod_nonneg _ (Int.natCast_ne_zero.2 (lcm_ne_zero hn hm)))]
        have hnonzero : (gcd n m : ℤ) ≠ 0 := by
          norm_cast
          rw [Nat.gcd_eq_zero_iff, not_and]
          exact fun _ => hm
        have hcoedvd : ∀ t, (gcd n m : ℤ) ∣ t * (b - a) := fun t => h.dvd.mul_left _
        have := gcd_eq_gcd_ab n m
        constructor <;> rw [Int.emod_def, ← sub_add] <;>
            refine Int.dvd_add ?_ (dvd_mul_of_dvd_left ?_ _) <;>
          try norm_cast
        · rw [← sub_eq_iff_eq_add'] at this
          rw [← this, Int.sub_mul, ← add_sub_assoc, add_comm, add_sub_assoc, ← Int.mul_sub,
            Int.add_ediv_of_dvd_left, Int.mul_ediv_cancel_left _ hnonzero,
            Int.mul_ediv_assoc _ h.dvd, ← sub_sub, sub_self, zero_sub, Int.dvd_neg, mul_assoc]
          · exact dvd_mul_right _ _
          norm_cast
          exact dvd_mul_right _ _
        · exact dvd_lcm_left n m
        · rw [← sub_eq_iff_eq_add] at this
          rw [← this, Int.sub_mul, sub_add, ← Int.mul_sub, Int.sub_ediv_of_dvd,
            Int.mul_ediv_cancel_left _ hnonzero, Int.mul_ediv_assoc _ h.dvd, ← sub_add, sub_self,
            zero_add, mul_assoc]
          · exact dvd_mul_right _ _
          · exact hcoedvd _
        · exact dvd_lcm_right n m⟩

/-- The natural number less than `n*m` congruent to `a` mod `n` and `b` mod `m` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/ModEq/Variant456da603f2c807512e5ceb4f66400d7e5a540cb95e095143c35809b7ea5a4559.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/ModEq/Variant456da603f2c807512e5ceb4f66400d7e5a540cb95e095143c35809b7ea5a4559.lean#L287).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e2eeca0e81620eec3c350508c2c1d4187eb28cad` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
