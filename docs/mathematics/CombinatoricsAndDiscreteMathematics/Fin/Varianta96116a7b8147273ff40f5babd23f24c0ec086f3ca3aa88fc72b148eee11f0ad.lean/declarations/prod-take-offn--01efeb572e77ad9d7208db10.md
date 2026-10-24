# prod_take_ofFn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a224488a-94df-bfe8-c478-bea73fee11ef",
  "kind": "theorem",
  "lexical_name": "prod_take_ofFn",
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
  "slug": "prod-take-offn--01efeb572e77ad9d7208db10",
  "source": {
    "blob": "6bedabbd10d9554b6a3aae71fca725ad06c06531",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 487,
    "line": 458,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Fin/Varianta96116a7b8147273ff40f5babd23f24c0ec086f3ca3aa88fc72b148eee11f0ad.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:01efeb572e77ad9d7208db10c6d430f3d4e833028a1eca24f53fc87f0e60067f",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Fin/Varianta96116a7b8147273ff40f5babd23f24c0ec086f3ca3aa88fc72b148eee11f0ad.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a224488a-94df-bfe8-c478-bea73fee11ef`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 458–487.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem prod_take_ofFn {n : ℕ} (f : Fin n → α) (i : ℕ) :
    ((ofFn f).take i).prod = ∏ j in Finset.univ.filter fun j : Fin n => j.val < i, f j := by
  induction i with
  | zero =>
    simp
  | succ i IH =>
    by_cases h : i < n
    · have : i < length (ofFn f) := by rwa [length_ofFn f]
      rw [prod_take_succ _ _ this]
      have A : ((Finset.univ : Finset (Fin n)).filter fun j => j.val < i + 1) =
          ((Finset.univ : Finset (Fin n)).filter fun j => j.val < i) ∪ {(⟨i, h⟩ : Fin n)} := by
        ext ⟨_, _⟩
        simp [Nat.lt_succ_iff_lt_or_eq]
      have B : _root_.Disjoint (Finset.filter (fun j : Fin n => j.val < i) Finset.univ)
          (singleton (⟨i, h⟩ : Fin n)) := by simp
      rw [A, Finset.prod_union B, IH]
      simp
    · have A : (ofFn f).take i = (ofFn f).take i.succ := by
        rw [← length_ofFn f] at h
        have : length (ofFn f) ≤ i := not_lt.mp h
        rw [take_all_of_le this, take_all_of_le (le_trans this (Nat.le_succ _))]
      have B : ∀ j : Fin n, ((j : ℕ) < i.succ) = ((j : ℕ) < i) := by
        intro j
        have : (j : ℕ) < i := lt_of_lt_of_le j.2 (not_lt.mp h)
        simp [this, lt_trans this (Nat.lt_succ_self _)]
      simp [← A, B, IH]
#align list.prod_take_of_fn List.prod_take_ofFn
#align list.sum_take_of_fn List.sum_take_ofFn

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Fin/Varianta96116a7b8147273ff40f5babd23f24c0ec086f3ca3aa88fc72b148eee11f0ad.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Fin/Varianta96116a7b8147273ff40f5babd23f24c0ec086f3ca3aa88fc72b148eee11f0ad.lean#L458).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6bedabbd10d9554b6a3aae71fca725ad06c06531` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
