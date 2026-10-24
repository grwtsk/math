# dfold_loop_succ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ed5266ae-a455-8fb9-8847-12a83f9f6f0a",
  "kind": "theorem",
  "lexical_name": "dfold_loop_succ",
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
  "slug": "dfold-loop-succ--e930b55dafd5586d384aa94b",
  "source": {
    "blob": "f41eb32a721fd60c0c7cef415e36045231fe665f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 378,
    "line": 360,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Fold/Variant961fa9ecefbc63bfa8557e125027a7b84bd7d528fe4acb3cc1a32655c0e487f5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e930b55dafd5586d384aa94bf2814f8e4ac495869528033d88db85a4d15c69fa",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Fold/Variant961fa9ecefbc63bfa8557e125027a7b84bd7d528fe4acb3cc1a32655c0e487f5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ed5266ae-a455-8fb9-8847-12a83f9f6f0a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 360–378.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem dfold_loop_succ
    {α : (i : Nat) → (h : i ≤ n + 1 := by omega) → Type u}
    (f : (i : Nat) → (h : i < n + 1) → α i → α (i + 1))
    (a : α (n + 1 - (j + 1))) (w : j ≤ n):
    dfold.loop (n + 1) f (j + 1) (by omega) a =
      f n (by omega)
        (dfold.loop n (α := fun i h => α i) (fun i h => f i (by omega)) j w (dfoldCast @α (by omega) a)) := by
  induction j with
  | zero => simp [dfold.loop]
  | succ j ih =>
    rw [dfold.loop, ih _ (by omega)]
    congr 2
    simp only [succ_eq_add_one, dfoldCast_trans]
    rw [apply_dfoldCast (h := by omega) f]
    · erw [dfoldCast_trans (h := by omega)]
      erw [dfoldCast_eq_dfoldCast_iff]
      omega

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Fold/Variant961fa9ecefbc63bfa8557e125027a7b84bd7d528fe4acb3cc1a32655c0e487f5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Fold/Variant961fa9ecefbc63bfa8557e125027a7b84bd7d528fe4acb3cc1a32655c0e487f5.lean#L360).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f41eb32a721fd60c0c7cef415e36045231fe665f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
