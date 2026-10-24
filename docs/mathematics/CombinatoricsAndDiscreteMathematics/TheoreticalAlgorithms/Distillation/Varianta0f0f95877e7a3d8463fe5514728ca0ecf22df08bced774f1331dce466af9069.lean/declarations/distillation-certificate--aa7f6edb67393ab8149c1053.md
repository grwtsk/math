# distillation_certificate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6a9e77a3-91cb-117e-5297-25fa3eae62ef",
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
  "slug": "distillation-certificate--aa7f6edb67393ab8149c1053",
  "source": {
    "blob": "255d8090d7b59d5b8d28de372fa98c2f9ad5c04d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 179,
    "line": 126,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Distillation/Varianta0f0f95877e7a3d8463fe5514728ca0ecf22df08bced774f1331dce466af9069.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:aa7f6edb67393ab8149c1053a161ea9641170bb3e3a2d384d95b70f170b90a63",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Distillation/Varianta0f0f95877e7a3d8463fe5514728ca0ecf22df08bced774f1331dce466af9069.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6a9e77a3-91cb-117e-5297-25fa3eae62ef`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 126–179.

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

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Distillation/Varianta0f0f95877e7a3d8463fe5514728ca0ecf22df08bced774f1331dce466af9069.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Distillation/Varianta0f0f95877e7a3d8463fe5514728ca0ecf22df08bced774f1331dce466af9069.lean#L126).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `255d8090d7b59d5b8d28de372fa98c2f9ad5c04d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
