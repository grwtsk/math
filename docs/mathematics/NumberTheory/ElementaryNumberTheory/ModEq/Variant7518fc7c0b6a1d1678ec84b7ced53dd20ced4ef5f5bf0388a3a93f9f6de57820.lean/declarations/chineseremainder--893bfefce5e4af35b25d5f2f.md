# chineseRemainder'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:51825a5841de238fafea8567797568bcb09a072ab43aa582772f3dbbbf10b42c",
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
  "slug": "chineseremainder--893bfefce5e4af35b25d5f2f",
  "source": {
    "blob": "63f9190dcb369537651d0142c3361a5a9689de7b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 375,
    "line": 339,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ModEq/Variant7518fc7c0b6a1d1678ec84b7ced53dd20ced4ef5f5bf0388a3a93f9f6de57820.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:893bfefce5e4af35b25d5f2fcf4bf50125b5ef82423ccf64c77420fdd7c94559",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/ModEq/Variant7518fc7c0b6a1d1678ec84b7ced53dd20ced4ef5f5bf0388a3a93f9f6de57820.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:51825a5841de238fafea8567797568bcb09a072ab43aa582772f3dbbbf10b42c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 339–375.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def chineseRemainder' (h : a ≡ b [MOD gcd n m]) : { k // k ≡ a [MOD n] ∧ k ≡ b [MOD m] } :=
  if hn : n = 0 then ⟨a, by rw [hn, gcd_zero_left] at h; constructor; rfl; exact h⟩
  else
    if hm : m = 0 then ⟨b, by rw [hm, gcd_zero_right] at h; constructor; exact h.symm; rfl⟩
    else
      ⟨let (c, d) := xgcd n m; Int.toNat ((n * c * b + m * d * a) / gcd n m % lcm n m), by
        rw [xgcd_val]
        dsimp
        rw [modEq_iff_dvd, modEq_iff_dvd,
          Int.toNat_of_nonneg (Int.emod_nonneg _ (Int.coe_nat_ne_zero.2 (lcm_ne_zero hn hm)))]
        have hnonzero : (gcd n m : ℤ) ≠ 0 := by
          norm_cast
          rw [Nat.gcd_eq_zero_iff, not_and]
          exact fun _ => hm
        have hcoedvd : ∀ t, (gcd n m : ℤ) ∣ t * (b - a) := fun t => h.dvd.mul_left _
        have := gcd_eq_gcd_ab n m
        constructor <;> rw [Int.emod_def, ← sub_add] <;>
            refine' dvd_add _ (dvd_mul_of_dvd_left _ _) <;>
          try norm_cast
        · rw [← sub_eq_iff_eq_add'] at this
          rw [← this, sub_mul, ← add_sub_assoc, add_comm, add_sub_assoc, ← mul_sub,
            Int.add_ediv_of_dvd_left, Int.mul_ediv_cancel_left _ hnonzero,
            Int.mul_ediv_assoc _ h.dvd, ← sub_sub, sub_self, zero_sub, dvd_neg, mul_assoc]
          exact dvd_mul_right _ _
          norm_cast
          exact dvd_mul_right _ _
        · exact dvd_lcm_left n m
        · rw [← sub_eq_iff_eq_add] at this
          rw [← this, sub_mul, sub_add, ← mul_sub, Int.sub_ediv_of_dvd,
            Int.mul_ediv_cancel_left _ hnonzero, Int.mul_ediv_assoc _ h.dvd, ← sub_add, sub_self,
            zero_add, mul_assoc]
          exact dvd_mul_right _ _
          exact hcoedvd _
        · exact dvd_lcm_right n m⟩
#align nat.chinese_remainder' Nat.chineseRemainder'

/-- The natural number less than `n*m` congruent to `a` mod `n` and `b` mod `m` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/ModEq/Variant7518fc7c0b6a1d1678ec84b7ced53dd20ced4ef5f5bf0388a3a93f9f6de57820.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/ModEq/Variant7518fc7c0b6a1d1678ec84b7ced53dd20ced4ef5f5bf0388a3a93f9f6de57820.lean#L339).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `63f9190dcb369537651d0142c3361a5a9689de7b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
