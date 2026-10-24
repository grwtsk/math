# turanNumber_add

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4f9a0698-619b-8d45-75cd-7eec5c38ad64",
  "kind": "lemma",
  "lexical_name": "turanNumber_add",
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
  "slug": "turannumber-add--3b43e217bf694e1921a49d92",
  "source": {
    "blob": "3f231edf97a6473d17beef716418cc486190271a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 380,
    "line": 360,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Turan/Variant3807063d8df0f3bfe23d66ad6504746af77c0131f6c6503bd5e92bd11a3481d2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3b43e217bf694e1921a49d92a6914f5b32912b2e9242d79e37af432a241840ce",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Turan/Variant3807063d8df0f3bfe23d66ad6504746af77c0131f6c6503bd5e92bd11a3481d2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4f9a0698-619b-8d45-75cd-7eec5c38ad64`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 360–380.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma turanNumber_add : turanNumber (n + r) r = turanNumber n r + n * (r - 1) + r.choose 2 := by
  rw [← mul_right_inj' two_ne_zero]
  simp_rw [mul_add, ← sum_degrees_eq_twice_card_edges,
    degree, neighborFinset_eq_filter, turanGraph, card_filter]
  conv_lhs =>
    enter [2, v]
    rw [Fin.sum_univ_eq_sum_range fun w ↦ if v % r ≠ w % r then 1 else 0, sum_range_add]
  rw [sum_add_distrib,
    Fin.sum_univ_eq_sum_range fun v ↦ ∑ w ∈ range n, if v % r ≠ w % r then 1 else 0,
    Fin.sum_univ_eq_sum_range fun v ↦ ∑ w ∈ range r, if v % r ≠ (n + w) % r then 1 else 0,
    sum_range_add, sum_range_add, add_assoc, add_assoc]
  congr 1; · simp [← Fin.sum_univ_eq_sum_range]
  rw [← add_assoc, sum_comm]; simp_rw [ne_comm, ← two_mul]; congr
  · conv_rhs => rw [← card_range n, ← smul_eq_mul, ← sum_const]
    congr!; exact sum_ne_add_mod_eq_sub_one
  · rw [mul_comm 2, Nat.choose_two_right, Nat.div_two_mul_two_of_even (Nat.even_mul_pred_self r)]
    conv_rhs => enter [1]; rw [← card_range r]
    rw [← smul_eq_mul, ← sum_const]
    congr!; exact sum_ne_add_mod_eq_sub_one

/-- The exact formula for the number of edges in `turanGraph n r`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Turan/Variant3807063d8df0f3bfe23d66ad6504746af77c0131f6c6503bd5e92bd11a3481d2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Turan/Variant3807063d8df0f3bfe23d66ad6504746af77c0131f6c6503bd5e92bd11a3481d2.lean#L360).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3f231edf97a6473d17beef716418cc486190271a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
