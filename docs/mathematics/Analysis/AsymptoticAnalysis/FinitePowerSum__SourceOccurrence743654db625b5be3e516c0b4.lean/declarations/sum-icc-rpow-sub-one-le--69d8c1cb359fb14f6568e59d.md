# sum_Icc_rpow_sub_one_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3bc58c3e-bc50-770a-775f-95256a75e895",
  "kind": "theorem",
  "lexical_name": "sum_Icc_rpow_sub_one_le",
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
  "slug": "sum-icc-rpow-sub-one-le--69d8c1cb359fb14f6568e59d",
  "source": {
    "blob": "798f47e25e5d862c487555be0e1bc4158e4aa8e2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 71,
    "line": 24,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/FinitePowerSum.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:69d8c1cb359fb14f6568e59dffeda194a2c4775eb3dd3c74c008d42e7f19bb8a",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/FinitePowerSum__SourceOccurrence743654db625b5be3e516c0b4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3bc58c3e-bc50-770a-775f-95256a75e895`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 24–71.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sum_Icc_rpow_sub_one_le {β : ℝ}
    (hβ0 : 0 < β) (hβ1 : β ≤ 1) (N : ℕ) :
    (∑ k ∈ Finset.Icc 1 N, (k : ℝ) ^ (β - 1)) ≤
      (N : ℝ) ^ β / β := by
  induction N with
  | zero => simp [Real.zero_rpow hβ0.ne']
  | succ N ih =>
      rw [Finset.sum_Icc_succ_top (by omega : 1 ≤ N + 1)]
      by_cases hN : N = 0
      · subst N
        norm_num
        have hβinv : (1 : ℝ) ≤ 1 / β :=
          (le_div_iff₀ hβ0).2 (by simpa using hβ1)
        simpa using hβinv
      · have hNpos : 0 < N := Nat.pos_of_ne_zero hN
        have hNposR : (0 : ℝ) < N := by exact_mod_cast hNpos
        have hanti : AntitoneOn (fun x : ℝ => x ^ (β - 1))
            (Icc (N : ℝ) ((N : ℝ) + ((1 : ℕ) : ℝ))) :=
          (Real.antitoneOn_rpow_Ioi_of_exponent_nonpos (by linarith)).mono (by
            intro x hx
            show 0 < x
            exact hNposR.trans_le hx.1)
        have hstep :
            (∑ i ∈ Finset.range 1,
              (((N : ℝ) + (i + 1 : ℕ)) : ℝ) ^ (β - 1)) ≤
              ∫ x in (N : ℝ)..(N : ℝ) + ((1 : ℕ) : ℝ), x ^ (β - 1) :=
          hanti.sum_le_integral
        have hstep' : ((N + 1 : ℕ) : ℝ) ^ (β - 1) ≤
            ∫ x in (N : ℝ)..(N + 1 : ℕ), x ^ (β - 1) := by
          simpa only [Finset.range_one, Finset.sum_singleton, Nat.cast_zero,
            Nat.cast_one, add_zero, zero_add, Nat.cast_add] using hstep
        rw [integral_rpow (Or.inl (by linarith : -1 < β - 1))] at hstep'
        have hstep'' : ((N + 1 : ℕ) : ℝ) ^ (β - 1) ≤
            (((N + 1 : ℕ) : ℝ) ^ β - (N : ℝ) ^ β) / β := by
          simpa only [sub_add_cancel] using hstep'
        have hcalc :
            (N : ℝ) ^ β / β + ((N + 1 : ℕ) : ℝ) ^ (β - 1) ≤
              ((N + 1 : ℕ) : ℝ) ^ β / β := by
          calc
            _ ≤ (N : ℝ) ^ β / β +
                ((((N + 1 : ℕ) : ℝ) ^ β - (N : ℝ) ^ β) / β) :=
              add_le_add le_rfl hstep''
            _ = _ := by field_simp [hβ0.ne']; ring_nf
        exact (add_le_add ih le_rfl).trans hcalc

end GRWTSK.Analysis.Asymptotics.FinitePowerSum

#print axioms GRWTSK.Analysis.Asymptotics.FinitePowerSum.sum_Icc_rpow_sub_one_le
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/AsymptoticAnalysis/FinitePowerSum__SourceOccurrence743654db625b5be3e516c0b4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/FinitePowerSum.lean#L24).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `798f47e25e5d862c487555be0e1bc4158e4aa8e2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
