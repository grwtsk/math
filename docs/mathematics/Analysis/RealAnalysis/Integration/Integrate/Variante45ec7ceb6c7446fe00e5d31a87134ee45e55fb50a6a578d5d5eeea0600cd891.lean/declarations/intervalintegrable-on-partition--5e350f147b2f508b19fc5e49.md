# intervalIntegrable_on_partition

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d3d8275605f9330d9f6c605d3575ae249178b6eb",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 279,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e4/e45ec7ceb6c7446fe00e5d31a87134ee45e55fb50a6a578d5d5eeea0600cd891.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ec1c8c6d-b964-6d5e-c718-a941c490efbf",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e7ea83f3-0220-08ba-2fcd-8a23146ab5ce",
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
  "slug": "intervalintegrable-on-partition--5e350f147b2f508b19fc5e49",
  "source": {
    "blob": "d3d8275605f9330d9f6c605d3575ae249178b6eb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 326,
    "line": 279,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Integrate/Variante45ec7ceb6c7446fe00e5d31a87134ee45e55fb50a6a578d5d5eeea0600cd891.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5e350f147b2f508b19fc5e49423eaae8882d1c4eee8bdb11953b1c8ebfdf1460",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Integrate/Variante45ec7ceb6c7446fe00e5d31a87134ee45e55fb50a6a578d5d5eeea0600cd891.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e7ea83f3-0220-08ba-2fcd-8a23146ab5ce`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 279–326.

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

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Integrate/Variante45ec7ceb6c7446fe00e5d31a87134ee45e55fb50a6a578d5d5eeea0600cd891.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Integrate/Variante45ec7ceb6c7446fe00e5d31a87134ee45e55fb50a6a578d5d5eeea0600cd891.lean#L279).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d3d8275605f9330d9f6c605d3575ae249178b6eb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
