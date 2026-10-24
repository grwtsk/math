# distillation_certificate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "607a75d9175255bdea6c87d5b9b90faf7f98bf33",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 118,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d6/d65898fab884a32085c6286e4c4425f1907253816939e53db04e28015602a288.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:94b702b9-df65-e409-129d-60119ffb7232",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:763027c8-8652-e354-3110-3c7ec5f529c7",
  "kind": "theorem",
  "lexical_name": "distillation_certificate",
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
  "slug": "distillation-certificate--1693fadef7d137c54bb0d45c",
  "source": {
    "blob": "607a75d9175255bdea6c87d5b9b90faf7f98bf33",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 171,
    "line": 118,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Distillation/Variantd65898fab884a32085c6286e4c4425f1907253816939e53db04e28015602a288.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1693fadef7d137c54bb0d45c42f4fa21286054c29a8ea47ce0d6d6f1e8f79ce9",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Distillation/Variantd65898fab884a32085c6286e4c4425f1907253816939e53db04e28015602a288.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:763027c8-8652-e354-3110-3c7ec5f529c7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 118–171.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem distillation_certificate (x y : ℝ)
    (hx : 0 ≤ x ∧ x ≤ 1) (hy : 0 ≤ y ∧ y ≤ 1) :
    (SequentialNet.forwardInterval teacherNet inputDomain (-53)).length =
    (SequentialNet.forwardInterval studentNet inputDomain (-53)).length ∧
    ∀ i (hi_t : i < (SequentialNet.forwardInterval teacherNet inputDomain (-53)).length)
        (hi_s : i < (SequentialNet.forwardInterval studentNet inputDomain (-53)).length),
      |(SequentialNet.forwardReal teacherNet [x, y])[i]'(by
          simp only [SequentialNet.forwardReal]
          simp only [SequentialNet.forwardInterval] at hi_t hi_s
          have h := SequentialNet.forwardLength_aux teacherNet.layers [x, y] inputDomain
              (by rfl) teacherNet_wf (-53)
          have hlen : (List.foldl (fun acc l => l.forwardInterval acc (-53)) inputDomain teacherNet.layers).length = 1 := by native_decide
          omega) -
       (SequentialNet.forwardReal studentNet [x, y])[i]'(by
          simp only [SequentialNet.forwardReal]
          simp only [SequentialNet.forwardInterval] at hi_t hi_s
          have h := SequentialNet.forwardLength_aux studentNet.layers [x, y] inputDomain
              (by rfl) studentNet_wf (-53)
          have hlen : (List.foldl (fun acc l => l.forwardInterval acc (-53)) inputDomain studentNet.layers).length = 1 := by native_decide
          omega)| ≤ (epsilon : ℝ) := by
  -- Build domain membership
  have hdom : [x, y].length = inputDomain.length := rfl
  have hmem : ∀ i (hi : i < inputDomain.length), [x, y][i]'(hdom ▸ hi) ∈ inputDomain[i]'hi := by
    intro i hi
    match i with
    | 0 =>
      simp only [inputDomain, List.getElem_cons_zero]
      exact mem_mkInterval (by norm_num) ⟨by exact_mod_cast hx.1, by exact_mod_cast hx.2⟩ (-53)
    | 1 =>
      simp only [inputDomain, List.getElem_cons_succ, List.getElem_cons_zero]
      exact mem_mkInterval (by norm_num) ⟨by exact_mod_cast hy.1, by exact_mod_cast hy.2⟩ (-53)
    | n + 2 =>
      simp only [inputDomain, List.length_cons, List.length_nil] at hi
      omega
  -- Apply the golden theorem
  exact verify_equivalence teacherNet studentNet inputDomain epsilon (-53)
    [x, y] (by norm_num) teacherNet_wf studentNet_wf hdom hmem distillationCheck_passes

/-! ### Interpretation

The theorem `distillation_certificate` proves that for ANY (x, y) ∈ [0, 1]²:
  |Teacher(x,y) - Student(x,y)| ≤ 3

This bound arises from interval arithmetic conservatism: the analysis computes
bounds on Teacher and Student outputs independently, then subtracts them.

## Applications

- **Deployment Safety**: Verify compressed models before deployment
- **Regulatory Compliance**: Provide machine-checked certificates
- **CI/CD Integration**: Automatically verify model equivalence in pipelines
-/

end LeanCert.Examples.ML.Distillation
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Distillation/Variantd65898fab884a32085c6286e4c4425f1907253816939e53db04e28015602a288.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Distillation/Variantd65898fab884a32085c6286e4c4425f1907253816939e53db04e28015602a288.lean#L118).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `607a75d9175255bdea6c87d5b9b90faf7f98bf33` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
