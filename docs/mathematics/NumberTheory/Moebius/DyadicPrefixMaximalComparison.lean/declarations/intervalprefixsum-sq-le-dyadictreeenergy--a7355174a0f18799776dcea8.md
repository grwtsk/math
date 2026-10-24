# intervalPrefixSum_sq_le_dyadicTreeEnergy

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d1eaed08-d86c-a3ba-a32f-0b7f2e486b27",
  "kind": "theorem",
  "lexical_name": "intervalPrefixSum_sq_le_dyadicTreeEnergy",
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
  "slug": "intervalprefixsum-sq-le-dyadictreeenergy--a7355174a0f18799776dcea8",
  "source": {
    "blob": "a48f1478b662e4895cf30c6544cc14872b71f474",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 233,
    "line": 117,
    "path": "GRWTSK/NumberTheory/Moebius/DyadicPrefixMaximalComparison.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a7355174a0f18799776dcea8a5e7fed9b0ff3ec216035ced5c69dbe4dd9177a0",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/DyadicPrefixMaximalComparison.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d1eaed08-d86c-a3ba-a32f-0b7f2e486b27`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 117–233.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem intervalPrefixSum_sq_le_dyadicTreeEnergy
    (a : ℕ → ℝ) :
    ∀ m start N : ℕ, N ≤ 2 ^ m →
      intervalPrefixSum a start N ^ 2 ≤
        ((m : ℝ) + 1) * dyadicTreeEnergy a start m := by
  intro m
  induction m with
  | zero =>
      intro start N hN
      have hcases : N = 0 ∨ N = 1 := by omega
      rcases hcases with rfl | rfl
      · simp [intervalPrefixSum, dyadicTreeEnergy]
        exact sq_nonneg _
      · simp [intervalPrefixSum, dyadicBlockSum, dyadicTreeEnergy]
  | succ m ih =>
      intro start N hN
      let H : ℕ := 2 ^ m
      have hpow : 2 ^ (m + 1) = H + H := by
        dsimp [H]
        rw [Nat.pow_succ]
        omega
      by_cases hleft : N ≤ H
      · have hIH := ih start N hleft
        have hEL : 0 ≤ dyadicTreeEnergy a start m :=
          dyadicTreeEnergy_nonneg a start m
        have hER : 0 ≤ dyadicTreeEnergy a (start + H) m := by
          simpa [H] using dyadicTreeEnergy_nonneg a (start + 2 ^ m) m
        have hroot :
            dyadicTreeEnergy a start m ≤
              dyadicTreeEnergy a start (m + 1) := by
          simp only [dyadicTreeEnergy]
          have hs := sq_nonneg (dyadicBlockSum a start (m + 1))
          nlinarith
        have hcoef :
            ((m : ℝ) + 1) * dyadicTreeEnergy a start m ≤
              ((m : ℝ) + 2) * dyadicTreeEnergy a start m := by
          exact mul_le_mul_of_nonneg_right (by linarith) hEL
        have hrootmul :
            ((m : ℝ) + 2) * dyadicTreeEnergy a start m ≤
              ((m : ℝ) + 2) * dyadicTreeEnergy a start (m + 1) := by
          exact mul_le_mul_of_nonneg_left hroot (by positivity)
        calc
          intervalPrefixSum a start N ^ 2 ≤
              ((m : ℝ) + 1) * dyadicTreeEnergy a start m := hIH
          _ ≤ ((m : ℝ) + 2) * dyadicTreeEnergy a start m := hcoef
          _ ≤ ((m : ℝ) + 2) * dyadicTreeEnergy a start (m + 1) := hrootmul
          _ = (((m + 1 : ℕ) : ℝ) + 1) *
              dyadicTreeEnergy a start (m + 1) := by
                push_cast
                ring
      · have hright : H < N := by omega
        let Rn : ℕ := N - H
        have hRn : Rn ≤ H := by
          dsimp [Rn]
          rw [hpow] at hN
          omega
        have hsplitN : N = H + Rn := by
          dsimp [Rn]
          omega
        have hsplit :
            intervalPrefixSum a start N =
              dyadicBlockSum a start m +
                intervalPrefixSum a (start + H) Rn := by
          rw [hsplitN, intervalPrefixSum_add]
          rfl
        have hR :=
          ih (start + H) Rn hRn
        have hL :
            dyadicBlockSum a start m ^ 2 ≤
              dyadicTreeEnergy a start m :=
          dyadicBlockSum_sq_le_treeEnergy a start m
        have hpair :
            (dyadicBlockSum a start m +
              intervalPrefixSum a (start + H) Rn) ^ 2 ≤
              ((m : ℝ) + 2) *
                (dyadicTreeEnergy a start m +
                  dyadicTreeEnergy a (start + H) m) := by
          convert add_sq_le_succ_mul_energy
            (k := (m : ℝ) + 1)
            (L := dyadicBlockSum a start m)
            (R := intervalPrefixSum a (start + H) Rn)
            (EL := dyadicTreeEnergy a start m)
            (ER := dyadicTreeEnergy a (start + H) m)
            (by positivity) hL hR using 1
          ring
        have hsubtree :
            dyadicTreeEnergy a start m +
                dyadicTreeEnergy a (start + H) m ≤
              dyadicTreeEnergy a start (m + 1) := by
          simp only [dyadicTreeEnergy]
          have hs := sq_nonneg (dyadicBlockSum a start (m + 1))
          dsimp [H]
          nlinarith
        have hsubtreeMul :
            ((m : ℝ) + 2) *
                (dyadicTreeEnergy a start m +
                  dyadicTreeEnergy a (start + H) m) ≤
              ((m : ℝ) + 2) *
                dyadicTreeEnergy a start (m + 1) := by
          exact mul_le_mul_of_nonneg_left hsubtree (by positivity)
        rw [hsplit]
        calc
          (dyadicBlockSum a start m +
              intervalPrefixSum a (start + H) Rn) ^ 2 ≤
              ((m : ℝ) + 2) *
                (dyadicTreeEnergy a start m +
                  dyadicTreeEnergy a (start + H) m) := hpair
          _ ≤ ((m : ℝ) + 2) *
              dyadicTreeEnergy a start (m + 1) := hsubtreeMul
          _ = (((m + 1 : ℕ) : ℝ) + 1) *
              dyadicTreeEnergy a start (m + 1) := by
                push_cast
                ring

end GRWTSK.RiemannHypothesis.CCC.DyadicPrefixComparison

#print axioms GRWTSK.RiemannHypothesis.CCC.DyadicPrefixComparison.intervalPrefixSum_sq_le_dyadicTreeEnergy
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/DyadicPrefixMaximalComparison.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/DyadicPrefixMaximalComparison.lean#L117).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a48f1478b662e4895cf30c6544cc14872b71f474` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
