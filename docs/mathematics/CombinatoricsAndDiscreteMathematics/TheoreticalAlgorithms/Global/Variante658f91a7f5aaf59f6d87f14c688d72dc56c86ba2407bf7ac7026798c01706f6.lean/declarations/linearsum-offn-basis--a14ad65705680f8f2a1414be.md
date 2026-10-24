# linearSum_ofFn_basis

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1d5a6348-68a0-1506-9b58-ba4445abb35d",
  "kind": "theorem",
  "lexical_name": "linearSum_ofFn_basis",
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
  "slug": "linearsum-offn-basis--a14ad65705680f8f2a1414be",
  "source": {
    "blob": "ac681ead2ed956a45e57a66e7775a728788e8eb8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1641,
    "line": 1601,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Global/Variante658f91a7f5aaf59f6d87f14c688d72dc56c86ba2407bf7ac7026798c01706f6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a14ad65705680f8f2a1414be2532f4df7ed6ac635905e88a1255b1e06ed3484f",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Global/Variante658f91a7f5aaf59f6d87f14c688d72dc56c86ba2407bf7ac7026798c01706f6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1d5a6348-68a0-1506-9b58-ba4445abb35d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1601–1641.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem linearSum_ofFn_basis {n : Nat} (idx : Nat) (rad : ℚ) (eps : Fin n → ℝ) :
    AffineForm.linearSum
      (List.ofFn (fun i : Fin n => if i.val = idx then rad else 0))
      (List.ofFn eps)
      = (rad : ℝ) * (if h : idx < n then eps ⟨idx, h⟩ else 0) := by
  unfold AffineForm.linearSum
  induction n generalizing idx with
  | zero => simp
  | succ n ih =>
    simp only [List.ofFn_succ, List.zipWith_cons_cons, List.sum_cons, Fin.val_zero]
    cases idx with
    | zero =>
      simp only [↓reduceDIte, Nat.zero_lt_succ, Fin.mk_zero]
      have hcoeffs : (List.ofFn (fun i : Fin n => if i.succ.val = 0 then rad else 0)) =
          (List.ofFn (fun _ : Fin n => (0 : ℚ))) := by
        apply List.ext_getElem <;> simp
      have htail : (List.zipWith (fun (c : ℚ) e => (c : ℝ) * e)
          (List.ofFn (fun i : Fin n => if i.succ.val = 0 then rad else 0))
          (List.ofFn (fun i => eps i.succ))).sum = 0 := by
        simp only [hcoeffs]
        exact linearSum_ofFn_zero (fun i => eps i.succ)
      simp only [htail, add_zero, ↓reduceIte]
    | succ idx' =>
      have hne : ¬(0 = idx' + 1) := Nat.zero_ne_add_one idx'
      simp only [hne, ↓reduceIte, Rat.cast_zero, zero_mul, zero_add, Nat.succ_lt_succ_iff]
      have hcoeffs : (List.ofFn (fun i : Fin n => if i.succ.val = Nat.succ idx' then rad else 0)) =
          (List.ofFn (fun i : Fin n => if i.val = idx' then rad else 0)) := by
        apply List.ext_getElem
        · simp
        · intro k h1 h2
          simp only [List.getElem_ofFn, Fin.val_succ, Nat.succ_eq_add_one, Nat.add_right_cancel_iff]
      simp only [hcoeffs]
      have hrec := ih idx' (fun i => eps i.succ)
      unfold AffineForm.linearSum at hrec
      rw [hrec]
      -- Now need to show: rad * (if h : idx' < n then eps ⟨idx', h⟩.succ else 0)
      --                 = rad * (if h : idx' < n then eps ⟨idx' + 1, h⟩ else 0)
      by_cases hidx : idx' < n
      · simp only [hidx, ↓reduceDIte, Fin.succ_mk]
      · simp only [hidx, ↓reduceDIte]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Global/Variante658f91a7f5aaf59f6d87f14c688d72dc56c86ba2407bf7ac7026798c01706f6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Global/Variante658f91a7f5aaf59f6d87f14c688d72dc56c86ba2407bf7ac7026798c01706f6.lean#L1601).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ac681ead2ed956a45e57a66e7775a728788e8eb8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
