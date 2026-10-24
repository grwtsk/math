# CNF.unsat_of_convertLRAT_unsat

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3aefbb28-3920-0c53-5e72-51add637fd33",
  "kind": "theorem",
  "lexical_name": "CNF.unsat_of_convertLRAT_unsat",
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
  "slug": "cnf-unsat-of-convertlrat-unsat--c0b34fdc11913ec790bbface",
  "source": {
    "blob": "44b11813e59e1de49dd3b0413f52b5efdfb31aba",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 148,
    "line": 123,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Convert/Variant0dfa24074580bcb7422f7531169487a2579dca2bdb6a88df4f15b6642a79e251.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c0b34fdc11913ec790bbface29b0326ea64a6b17c10b556ce37fafe1af8b436e",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Convert/Variant0dfa24074580bcb7422f7531169487a2579dca2bdb6a88df4f15b6642a79e251.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3aefbb28-3920-0c53-5e72-51add637fd33`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 123–148.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem CNF.unsat_of_convertLRAT_unsat (cnf : CNF Nat) :
    Unsatisfiable (PosFin (cnf.numLiterals + 1)) (CNF.convertLRAT cnf)
      →
    cnf.Unsat := by
  intro h1
  apply CNF.unsat_of_lift_unsat
  intro assignment
  unfold CNF.convertLRAT at h1
  replace h1 := (unsat_of_cons_none_unsat _ h1) assignment
  apply eq_false_of_ne_true
  intro h2
  apply h1
  simp only [Formula.formulaEntails_def, List.all_eq_true, decide_eq_true_eq]
  intro lratClause hlclause
  simp only [Formula.toList, DefaultFormula.toList, DefaultFormula.ofArray, convertLRAT',
    Array.toList_append, Array.toList_map, List.cons_append, List.nil_append, id_eq,
    List.filterMap_cons_none, List.filterMap_map, List.map_nil, List.append_nil,
    List.mem_filterMap, Array.mem_toList_iff, Array.mem_iff_getElem] at hlclause
  rcases hlclause with ⟨reflectClause, ⟨hrclause1, hrclause2⟩⟩
  simp only [CNF.eval, Array.all_eq_true] at h2
  rcases hrclause1 with ⟨i, h, rfl⟩
  simp [CNF.Clause.convertLRAT_sat_of_sat _ hrclause2, h2 i h]

end Internal
end LRAT
end Std.Tactic.BVDecide
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Convert/Variant0dfa24074580bcb7422f7531169487a2579dca2bdb6a88df4f15b6642a79e251.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Convert/Variant0dfa24074580bcb7422f7531169487a2579dca2bdb6a88df4f15b6642a79e251.lean#L123).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `44b11813e59e1de49dd3b0413f52b5efdfb31aba` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
