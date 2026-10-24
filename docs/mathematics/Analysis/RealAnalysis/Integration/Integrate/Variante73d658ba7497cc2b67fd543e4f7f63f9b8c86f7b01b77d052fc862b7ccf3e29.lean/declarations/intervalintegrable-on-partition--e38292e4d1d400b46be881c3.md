# intervalIntegrable_on_partition

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:86921420-caff-9eec-8d73-1d597bdc6c93",
  "kind": "theorem",
  "lexical_name": "intervalIntegrable_on_partition",
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
  "slug": "intervalintegrable-on-partition--e38292e4d1d400b46be881c3",
  "source": {
    "blob": "e31ac66ba8caa25b8a447a90a5bb70073f093845",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 334,
    "line": 287,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Integrate/Variante73d658ba7497cc2b67fd543e4f7f63f9b8c86f7b01b77d052fc862b7ccf3e29.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e38292e4d1d400b46be881c3c0d39357cd800d0d95d6d1745214c05fbe1df556",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Integrate/Variante73d658ba7497cc2b67fd543e4f7f63f9b8c86f7b01b77d052fc862b7ccf3e29.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:86921420-caff-9eec-8d73-1d597bdc6c93`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 287–334.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem intervalIntegrable_on_partition (e : Expr) (I : IntervalRat) (n : ℕ) (hn : 0 < n)
    (hInt : IntervalIntegrable (fun x => Expr.eval (fun _ => x) e) volume I.lo I.hi)
    (k : ℕ) (hk : k < n) :
    IntervalIntegrable (fun x => Expr.eval (fun _ => x) e) volume
      ((partitionInterval I n hn k hk).lo : ℝ) ((partitionInterval I n hn k hk).hi : ℝ) := by
  apply hInt.mono_set
  simp only [Set.uIcc_of_le (by exact_mod_cast (partitionInterval I n hn k hk).le :
    ((partitionInterval I n hn k hk).lo : ℝ) ≤ (partitionInterval I n hn k hk).hi)]
  simp only [Set.uIcc_of_le (by exact_mod_cast I.le : (I.lo : ℝ) ≤ I.hi)]
  intro x ⟨hxlo, hxhi⟩
  constructor
  · calc (I.lo : ℝ) ≤ ((partitionInterval I n hn k hk).lo : ℝ) := by
           rw [partitionInterval_lo]
           simp only [Rat.cast_add, Rat.cast_mul, Rat.cast_div, Rat.cast_natCast, Rat.cast_sub]
           apply le_add_of_nonneg_right
           apply mul_nonneg
           · apply div_nonneg
             · have := I.le
               have h : (I.lo : ℝ) ≤ I.hi := by exact_mod_cast this
               linarith
             · exact Nat.cast_nonneg n
           · exact Nat.cast_nonneg k
       _ ≤ x := hxlo
  · calc x ≤ ((partitionInterval I n hn k hk).hi : ℝ) := hxhi
       _ ≤ I.hi := by
           rw [partitionInterval_hi]
           simp only [Rat.cast_add, Rat.cast_mul, Rat.cast_div, Rat.cast_natCast, Rat.cast_sub]
           have hi_bound : (k : ℚ) + 1 ≤ n := by
             have : k + 1 ≤ n := hk
             exact_mod_cast this
           have hn_pos : (0 : ℚ) < n := by exact_mod_cast hn
           have hwidth_nn : (0 : ℝ) ≤ ((I.hi : ℝ) - I.lo) / n := by
             apply div_nonneg
             · have := I.le
               have h : (I.lo : ℝ) ≤ I.hi := by exact_mod_cast this
               linarith
             · exact Nat.cast_nonneg n
           have hkp1_le : (k : ℝ) + 1 ≤ n := by exact_mod_cast hi_bound
           calc (I.lo : ℝ) + ((I.hi : ℝ) - I.lo) / n * ((k : ℕ) + (1 : ℕ))
               ≤ I.lo + (I.hi - I.lo) / n * n := by
                   gcongr
                   grind only
             _ = I.lo + (I.hi - I.lo) := by
                   have hn' : (n : ℝ) ≠ 0 := Nat.cast_ne_zero.mpr (Nat.pos_iff_ne_zero.mp hn)
                   field_simp
             _ = I.hi := by ring

/-- Integrability using partition points -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Integrate/Variante73d658ba7497cc2b67fd543e4f7f63f9b8c86f7b01b77d052fc862b7ccf3e29.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Integrate/Variante73d658ba7497cc2b67fd543e4f7f63f9b8c86f7b01b77d052fc862b7ccf3e29.lean#L287).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e31ac66ba8caa25b8a447a90a5bb70073f093845` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
