# minIdxOn_eq_go_drop

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:831f37bd-254f-56fc-f0ae-f9e21947aa46",
  "kind": "theorem",
  "lexical_name": "minIdxOn_eq_go_drop",
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
  "slug": "minidxon-eq-go-drop--05917e8c247060848b7da14a",
  "source": {
    "blob": "0b88f7fa1af57c91a6cad52f061d6e0d652c69a6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 172,
    "line": 142,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MinMaxIdx/Variant3a8b64588848d663ef14d5a9213a6f936c5a361de199ec2c1d369c5dc68d179d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:05917e8c247060848b7da14a700844352fbf42381a4ed981810682b305c6b822",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MinMaxIdx/Variant3a8b64588848d663ef14d5a9213a6f936c5a361de199ec2c1d369c5dc68d179d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:831f37bd-254f-56fc-f0ae-f9e21947aa46`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 142–172.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem minIdxOn_eq_go_drop [LE β] [DecidableLE β] [IsLinearPreorder β] {f : α → β}
    {xs : List α} (h : xs ≠ []) {k : Nat} :
    ∃ (i : Nat) (hlt : i < xs.length), i ≤ k ∧ xs[i] = (xs.take (k + 1)).minOn f (by simpa) ∧
        xs.minIdxOn f h = List.minIdxOn.go f ((xs.take (k + 1)).minOn f (by cases xs <;> simp_all)) i (k + 1) (xs.drop (k + 1)) := by
  match xs with
  | y :: ys =>
    simp only [drop_succ_cons]
    induction k
    · simp [minIdxOn]
    · rename_i k ih
      specialize ih
      obtain ⟨i, hlt, hi, ih⟩ := ih
      simp only [ih, ← drop_drop]
      simp only [length_cons] at hlt
      match h : drop k ys with
      | [] =>
        have : ys.length ≤ k := by simp_all
        simp [drop_nil, minIdxOn.go, take_of_length_le, hi, ih, hlt, this, Nat.le_succ_of_le]
      | z :: zs =>
        simp only [minIdxOn.go]
        have : take (k + 1 + 1) (y :: ys) = take (k + 1) (y :: ys) ++ [z] := by apply take_succ_eq_append_of_drop_eq_cons ‹_›
        simp only [this, List.minOn_append (xs := take (k + 1) (y :: ys)) (by simp) (cons_ne_nil _ _)]
        simp only [take_succ_cons] at this
        split
        · simp only [List.minOn_singleton, minOn_eq_left, length_cons, *]
          exact ⟨i, by omega, Nat.le_succ_of_le ‹i ≤ k›, by simp [ih], rfl⟩
        · simp only [List.minOn_singleton, not_false_eq_true, minOn_eq_right, length_cons, *]
          obtain ⟨hlt, rfl⟩ := exists_getElem_eq_of_drop_eq_cons h
          exact ⟨k + 1, by omega, Nat.le_refl _, by simp, rfl⟩

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MinMaxIdx/Variant3a8b64588848d663ef14d5a9213a6f936c5a361de199ec2c1d369c5dc68d179d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MinMaxIdx/Variant3a8b64588848d663ef14d5a9213a6f936c5a361de199ec2c1d369c5dc68d179d.lean#L142).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0b88f7fa1af57c91a6cad52f061d6e0d652c69a6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
