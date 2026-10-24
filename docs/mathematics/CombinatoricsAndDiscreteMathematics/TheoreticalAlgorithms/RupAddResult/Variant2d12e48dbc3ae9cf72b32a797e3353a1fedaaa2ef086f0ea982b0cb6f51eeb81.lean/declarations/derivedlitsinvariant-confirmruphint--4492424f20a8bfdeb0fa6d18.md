# derivedLitsInvariant_confirmRupHint

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "fe8acc5a5be5740e022569f4427ed8c3582f9bdb",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 872,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2d/2d12e48dbc3ae9cf72b32a797e3353a1fedaaa2ef086f0ea982b0cb6f51eeb81.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:48abc3f5-c029-fa3c-f4ec-0c77633f6254",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:dc3a4cfd-66e6-8921-5041-36aa5672f861",
  "kind": "theorem",
  "lexical_name": "derivedLitsInvariant_confirmRupHint",
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
  "slug": "derivedlitsinvariant-confirmruphint--4492424f20a8bfdeb0fa6d18",
  "source": {
    "blob": "fe8acc5a5be5740e022569f4427ed8c3582f9bdb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 911,
    "line": 872,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RupAddResult/Variant2d12e48dbc3ae9cf72b32a797e3353a1fedaaa2ef086f0ea982b0cb6f51eeb81.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4492424f20a8bfdeb0fa6d188926b67f4876cd66a7b98d40cfe40d37fcedd945",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RupAddResult/Variant2d12e48dbc3ae9cf72b32a797e3353a1fedaaa2ef086f0ea982b0cb6f51eeb81.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dc3a4cfd-66e6-8921-5041-36aa5672f861`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 872–911.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem derivedLitsInvariant_confirmRupHint {n : Nat} (f : DefaultFormula n) (f_assignments_size : f.assignments.size = n)
    (rupHints : Array Nat) (i : Fin rupHints.size)
    (acc : Array Assignment × CNF.Clause (PosFin n) × Bool × Bool)
    (ih : ∃ hsize : acc.1.size = n, DerivedLitsInvariant f f_assignments_size acc.1 hsize acc.2.1) :
    let rupHint_res := (confirmRupHint f.clauses) acc rupHints[i]
    ∃ hsize : rupHint_res.1.size = n, DerivedLitsInvariant f f_assignments_size rupHint_res.1 hsize rupHint_res.2.1 := by
  rcases ih with ⟨hsize, ih⟩
  have hsize' : Array.size ((confirmRupHint f.clauses) acc rupHints[i]).1 = n := by
    grind [size_assignments_confirmRupHint]
  apply Exists.intro hsize'
  simp only [confirmRupHint, Fin.getElem_fin]
  split
  · exact ih
  · have rupHint_clause_options :
      f.clauses[rupHints[i.1]]? = none ∨ f.clauses[rupHints[i.1]]? = some none ∨ ∃ c, f.clauses[rupHints[i.val]]? = some (some c) := by
      match f.clauses[rupHints[i.val]]? with
      | none => exact Or.inl rfl
      | some none => exact Or.inr <| Or.inl rfl
      | some (some c) => exact (Or.inr ∘ Or.inr ∘ Exists.intro c) rfl
    rcases rupHint_clause_options with rupHint_clause_eq_none | rupHint_clause_eq_some_none | ⟨c, rupHint_clause_eq_c⟩
    · grind
    · grind
    · simp only [rupHint_clause_eq_c]
      have reduce_c_options : reduce c acc.1 = ReduceResult.encounteredBoth ∨ reduce c acc.1 = ReduceResult.reducedToEmpty ∨
        (∃ l : Literal (PosFin n), reduce c acc.1 = ReduceResult.reducedToUnit l) ∨ reduce c acc.1 = ReduceResult.reducedToNonunit := by
        match reduce c acc.fst with
        | ReduceResult.encounteredBoth => exact Or.inl rfl
        | ReduceResult.reducedToEmpty => exact (Or.inr ∘ Or.inl) rfl
        | ReduceResult.reducedToUnit l => exact (Or.inr ∘ Or.inr ∘ Or.inl ∘ Exists.intro l) rfl
        | ReduceResult.reducedToNonunit => exact (Or.inr ∘ Or.inr ∘ Or.inr) rfl
      rcases reduce_c_options with hencounteredBoth | hreducedToEmpty | ⟨l, hreducedToUnit⟩ | hreducedToNonunit
      · grind
      · grind
      · simp only [hreducedToUnit]
        by_cases h : hasAssignment l.snd acc.fst[l.fst.val]!
        · grind
        · simp only [h]
          exact confirmRupHint_preserves_invariant_helper f f_assignments_size acc hsize l ih h
      · grind

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RupAddResult/Variant2d12e48dbc3ae9cf72b32a797e3353a1fedaaa2ef086f0ea982b0cb6f51eeb81.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RupAddResult/Variant2d12e48dbc3ae9cf72b32a797e3353a1fedaaa2ef086f0ea982b0cb6f51eeb81.lean#L872).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fe8acc5a5be5740e022569f4427ed8c3582f9bdb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
