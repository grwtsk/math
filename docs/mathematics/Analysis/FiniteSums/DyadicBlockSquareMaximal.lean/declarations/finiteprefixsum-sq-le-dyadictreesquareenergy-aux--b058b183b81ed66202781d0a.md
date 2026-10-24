# finitePrefixSum_sq_le_dyadicTreeSquareEnergy_aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1b1d24bd-bc66-2bbc-863d-88ea5bc8443d",
  "kind": "theorem",
  "lexical_name": "finitePrefixSum_sq_le_dyadicTreeSquareEnergy_aux",
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
  "slug": "finiteprefixsum-sq-le-dyadictreesquareenergy-aux--b058b183b81ed66202781d0a",
  "source": {
    "blob": "b18f90584b0f3e181a90fe40dd127c04fc20d844",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 260,
    "line": 157,
    "path": "GRWTSK/Analysis/FiniteSum/DyadicBlockSquareMaximal.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b058b183b81ed66202781d0a56d905de37aeb7ff72841d39a698d25ea029b938",
  "verification": {
    "reference": "docs/verification/Analysis/FiniteSums/DyadicBlockSquareMaximal.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1b1d24bd-bc66-2bbc-863d-88ea5bc8443d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 157–260.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem finitePrefixSum_sq_le_dyadicTreeSquareEnergy_aux
    (m : ℕ) (a : ℕ → ℝ) (N : ℕ) (hN : N ≤ 2 ^ m) :
    finitePrefixSum a N ^ 2 ≤
      dyadicLevelCount m * dyadicTreeSquareEnergy m a := by
  induction m generalizing a N with
  | zero =>
      have hcases : N = 0 ∨ N = 1 := by
        norm_num at hN
        omega
      rcases hcases with rfl | rfl
      · simpa [finitePrefixSum, dyadicLevelCount,
          dyadicTreeSquareEnergy, alignedDyadicBlockSum,
          shiftedSequence] using sq_nonneg (a 0)
      · simp [finitePrefixSum, dyadicLevelCount,
          dyadicTreeSquareEnergy, alignedDyadicBlockSum,
          shiftedSequence]
  | succ m ih =>
      let H : ℕ := 2 ^ m
      let right : ℕ → ℝ := shiftedSequence a H
      have hpow : 2 ^ Nat.succ m = H + H := by
        dsimp [H]
        rw [Nat.pow_succ]
        omega
      rw [hpow] at hN
      have hleftEnergy : 0 ≤ dyadicTreeSquareEnergy m a :=
        dyadicTreeSquareEnergy_nonneg m a
      have hrightEnergy : 0 ≤ dyadicTreeSquareEnergy m right :=
        dyadicTreeSquareEnergy_nonneg m right
      have hlevel : 0 < dyadicLevelCount m := dyadicLevelCount_pos m
      by_cases hleft : N ≤ H
      · have hprefix := ih a N (by simpa [H] using hleft)
        have htree :
            dyadicTreeSquareEnergy m a ≤
              alignedDyadicBlockSum a (Nat.succ m) 0 ^ 2 +
                dyadicTreeSquareEnergy m a +
                dyadicTreeSquareEnergy m right := by
          nlinarith [sq_nonneg
            (alignedDyadicBlockSum a (Nat.succ m) 0)]
        calc
          finitePrefixSum a N ^ 2 ≤
              dyadicLevelCount m * dyadicTreeSquareEnergy m a := hprefix
          _ ≤ (dyadicLevelCount m + 1) *
              dyadicTreeSquareEnergy m a := by
                nlinarith
          _ ≤ (dyadicLevelCount m + 1) *
              (alignedDyadicBlockSum a (Nat.succ m) 0 ^ 2 +
                dyadicTreeSquareEnergy m a +
                dyadicTreeSquareEnergy m right) := by
                exact mul_le_mul_of_nonneg_left htree (by linarith)
          _ = dyadicLevelCount (Nat.succ m) *
              dyadicTreeSquareEnergy (Nat.succ m) a := by
                simp [dyadicLevelCount, dyadicTreeSquareEnergy,
                  right, H]
      · have hHlt : H < N := Nat.lt_of_not_ge hleft
        have hrem : N - H ≤ H := by omega
        have hrightPrefix := ih right (N - H)
          (by simpa [H] using hrem)
        have hdecomp : H + (N - H) = N :=
          Nat.add_sub_of_le hHlt.le
        have hsplit :
            finitePrefixSum a N =
              finitePrefixSum a H + finitePrefixSum right (N - H) := by
          calc
            finitePrefixSum a N = finitePrefixSum a (H + (N - H)) := by
              rw [hdecomp]
            _ = finitePrefixSum a H +
                finitePrefixSum right (N - H) := by
              simpa [right] using finitePrefixSum_add a H (N - H)
        have hcombine :
            (finitePrefixSum a H + finitePrefixSum right (N - H)) ^ 2 ≤
              (dyadicLevelCount m + 1) *
                (finitePrefixSum a H ^ 2 +
                  dyadicTreeSquareEnergy m right) :=
          add_sq_le_succ_weight hlevel hrightPrefix
        have htopLeft :
            finitePrefixSum a H ^ 2 ≤ dyadicTreeSquareEnergy m a := by
          simpa [H] using
            alignedTopBlock_sq_le_dyadicTreeSquareEnergy m a
        have htree :
            finitePrefixSum a H ^ 2 + dyadicTreeSquareEnergy m right ≤
              alignedDyadicBlockSum a (Nat.succ m) 0 ^ 2 +
                dyadicTreeSquareEnergy m a +
                dyadicTreeSquareEnergy m right := by
          nlinarith [sq_nonneg
            (alignedDyadicBlockSum a (Nat.succ m) 0)]
        calc
          finitePrefixSum a N ^ 2 =
              (finitePrefixSum a H + finitePrefixSum right (N - H)) ^ 2 := by
                rw [hsplit]
          _ ≤ (dyadicLevelCount m + 1) *
              (finitePrefixSum a H ^ 2 +
                dyadicTreeSquareEnergy m right) := hcombine
          _ ≤ (dyadicLevelCount m + 1) *
              (alignedDyadicBlockSum a (Nat.succ m) 0 ^ 2 +
                dyadicTreeSquareEnergy m a +
                dyadicTreeSquareEnergy m right) := by
                exact mul_le_mul_of_nonneg_left htree (by linarith)
          _ = dyadicLevelCount (Nat.succ m) *
              dyadicTreeSquareEnergy (Nat.succ m) a := by
                simp [dyadicLevelCount, dyadicTreeSquareEnergy,
                  right, H]

/-- Every prefix of a real sequence on `[0,2^m)` is controlled by `m+1` times
the complete aligned dyadic-tree square energy. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/FiniteSums/DyadicBlockSquareMaximal.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FiniteSum/DyadicBlockSquareMaximal.lean#L157).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b18f90584b0f3e181a90fe40dd127c04fc20d844` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
