# mem_of_insertRupUnits

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "da61d82f9deb10d6942ade1202678203edbe816f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 296,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/dc/dcb172dce1f9054753d004c03c6fcc74682256c58cc42b7e9453f0ce216a5318.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a1792512-a782-321d-9523-7e8678ee85d0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f9fb49cb-77a4-5764-0cea-a93390ea00ff",
  "kind": "theorem",
  "lexical_name": "mem_of_insertRupUnits",
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
  "slug": "mem-of-insertrupunits--e13d8d320fe82e1f0046a008",
  "source": {
    "blob": "da61d82f9deb10d6942ade1202678203edbe816f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 324,
    "line": 296,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantdcb172dce1f9054753d004c03c6fcc74682256c58cc42b7e9453f0ce216a5318.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e13d8d320fe82e1f0046a008760af62d8f9ccc0dbbe16aa10b6fd6e5e5340472",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantdcb172dce1f9054753d004c03c6fcc74682256c58cc42b7e9453f0ce216a5318.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f9fb49cb-77a4-5764-0cea-a93390ea00ff`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 296–324.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_of_insertRupUnits {n : Nat} (f : DefaultFormula n) (units : CNF.Clause (PosFin n))
    (c : DefaultClause n) :
    c ∈ toList (insertRupUnits f units).1 → c ∈ units.map Clause.unit ∨ c ∈ toList f := by
  simp only [toList, insertRupUnits, List.append_assoc, List.mem_append,
    List.mem_filterMap, id_eq, exists_eq_right, List.mem_map, Prod.exists, Bool.exists_bool]
  intro h
  have hb : ∀ l : Literal (PosFin n), l ∈ (f.rupUnits, f.assignments, false).1.toList → (l ∈ f.rupUnits.toList ∨ l ∈ units) := by
    grind
  have hl (acc : Array (Literal (PosFin n)) × Array Assignment × Bool)
    (ih : ∀ l : Literal (PosFin n), l ∈ acc.1.toList → l ∈ f.rupUnits.toList ∨ l ∈ units)
    (unit : Literal (PosFin n)) (unit_in_units : unit ∈ units) :
    ∀ l : Literal (PosFin n), l ∈ (insertUnit acc unit).1.toList → (l ∈ f.rupUnits.toList ∨ l ∈ units) := by
    intro l hl
    rw [insertUnit.eq_def] at hl
    grind
  have h_insertUnit_fold := List.foldlRecOn units insertUnit hb hl
  rcases h with h | ⟨i, ⟨h1, h2⟩ | ⟨h1, h2⟩⟩ | h
  · grind
  · rcases h_insertUnit_fold (i, false) h1 with h_insertUnit_fold | h_insertUnit_fold
    · apply Or.inr ∘ Or.inr ∘ Or.inl ∘ Exists.intro i ∘ Or.inl
      grind
    · apply Or.inl ∘ Exists.intro i ∘ Or.inl
      exact ⟨by grind, h2⟩
  · rcases h_insertUnit_fold (i, true) h1 with h_insertUnit_fold | h_insertUnit_fold
    · grind
    · apply Or.inl ∘ Exists.intro i ∘ Or.inr
      exact ⟨by grind, h2⟩
  · grind

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantdcb172dce1f9054753d004c03c6fcc74682256c58cc42b7e9453f0ce216a5318.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantdcb172dce1f9054753d004c03c6fcc74682256c58cc42b7e9453f0ce216a5318.lean#L296).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `da61d82f9deb10d6942ade1202678203edbe816f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
