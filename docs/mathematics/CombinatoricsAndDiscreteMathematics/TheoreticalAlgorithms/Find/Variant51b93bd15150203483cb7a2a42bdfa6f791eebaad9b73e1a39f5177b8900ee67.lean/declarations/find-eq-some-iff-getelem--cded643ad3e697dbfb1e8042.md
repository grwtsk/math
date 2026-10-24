# find?_eq_some_iff_getElem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bf3eca71-7caf-f995-41e7-ac9d79fdeda5",
  "kind": "theorem",
  "lexical_name": "find?_eq_some_iff_getElem",
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
  "slug": "find-eq-some-iff-getelem--cded643ad3e697dbfb1e8042",
  "source": {
    "blob": "1242afcbd791bbcc4c70eafb6ec11e8d213b70ef",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 61,
    "line": 38,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Find/Variant51b93bd15150203483cb7a2a42bdfa6f791eebaad9b73e1a39f5177b8900ee67.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cded643ad3e697dbfb1e8042e48ad7b4be2a21d3dcc927cd0ff331a995e7ab25",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Find/Variant51b93bd15150203483cb7a2a42bdfa6f791eebaad9b73e1a39f5177b8900ee67.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bf3eca71-7caf-f995-41e7-ac9d79fdeda5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 38–61.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem find?_eq_some_iff_getElem {xs : List α} {p : α → Bool} {b : α} :
    xs.find? p = some b ↔ p b ∧ ∃ (i : Nat) (h : i < xs.length), xs[i] = b ∧ ∀ j : Nat, (hj : j < i) → !p xs[j] := by
  rw [find?_eq_some_iff_append]
  simp only [Bool.not_eq_eq_eq_not, Bool.not_true, exists_and_right, and_congr_right_iff]
  intro w
  constructor
  · rintro ⟨as, ⟨bs, rfl⟩, h⟩
    refine ⟨as.length, ⟨?_, ?_, ?_⟩⟩
    · simp only [length_append, length_cons]
      refine Nat.lt_add_of_pos_right (zero_lt_succ bs.length)
    · rw [getElem_append_right (Nat.le_refl as.length)]
      simp
    · intro j h'
      rw [getElem_append_left h']
      exact h _ (getElem_mem h')
  · rintro ⟨i, h, rfl, h'⟩
    refine ⟨xs.take i, ⟨xs.drop (i+1), ?_⟩, ?_⟩
    · rw [getElem_cons_drop, take_append_drop]
    · intro a m
      rw [mem_take_iff_getElem] at m
      obtain ⟨j, h, rfl⟩ := m
      apply h'
      omega

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Find/Variant51b93bd15150203483cb7a2a42bdfa6f791eebaad9b73e1a39f5177b8900ee67.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Find/Variant51b93bd15150203483cb7a2a42bdfa6f791eebaad9b73e1a39f5177b8900ee67.lean#L38).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1242afcbd791bbcc4c70eafb6ec11e8d213b70ef` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
