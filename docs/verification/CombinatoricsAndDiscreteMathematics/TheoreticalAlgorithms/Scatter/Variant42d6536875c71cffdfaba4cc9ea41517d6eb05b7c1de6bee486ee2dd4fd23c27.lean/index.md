# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Scatter.Variant42d6536875c71cffdfaba4cc9ea41517d6eb05b7c1de6bee486ee2dd4fd23c27

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e46c0f93d0c15545e1df0cc540bd07c4fe359218",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Scatter/Variant42d6536875c71cffdfaba4cc9ea41517d6eb05b7c1de6bee486ee2dd4fd23c27.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Scatter/Variant42d6536875c71cffdfaba4cc9ea41517d6eb05b7c1de6bee486ee2dd4fd23c27.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Scatter/Variant42d6536875c71cffdfaba4cc9ea41517d6eb05b7c1de6bee486ee2dd4fd23c27.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e46c0f93d0c15545e1df0cc540bd07c4fe359218`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Scatter/Variant42d6536875c71cffdfaba4cc9ea41517d6eb05b7c1de6bee486ee2dd4fd23c27.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Scatter/Variant42d6536875c71cffdfaba4cc9ea41517d6eb05b7c1de6bee486ee2dd4fd23c27.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Color.Admissibility` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [ScatterRole](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Scatter/Variant42d6536875c71cffdfaba4cc9ea41517d6eb05b7c1de6bee486ee2dd4fd23c27.lean/declarations/scatterrole--553012776a3a9f42be7a4904.md) | 13 | `declaration-track:553012776a3a9f42be7a4904746bee09152bd814806ab828a2b44bd6c181757d` |
| 2 | `structure` | [FormalSurface](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Scatter/Variant42d6536875c71cffdfaba4cc9ea41517d6eb05b7c1de6bee486ee2dd4fd23c27.lean/declarations/formalsurface--abe2a41b923497d6977f44b1.md) | 21 | `declaration-track:abe2a41b923497d6977f44b17498ae6140806e8bc10048f3c6bec85378ccf2d9` |
| 3 | `structure` | [ProofAtom](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Scatter/Variant42d6536875c71cffdfaba4cc9ea41517d6eb05b7c1de6bee486ee2dd4fd23c27.lean/declarations/proofatom--012d2f7f31e8f764e611e870.md) | 33 | `declaration-track:012d2f7f31e8f764e611e870b464b03ed3019831935412b5e562cabcd1e7bf7f` |
| 4 | `def` | [formalSurfaceAccepts](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Scatter/Variant42d6536875c71cffdfaba4cc9ea41517d6eb05b7c1de6bee486ee2dd4fd23c27.lean/declarations/formalsurfaceaccepts--a8c180483a692f315dd4faa0.md) | 41 | `declaration-track:a8c180483a692f315dd4faa04720c0434ce8b92c756adac2e698e9ce53d98799` |
| 5 | `def` | [rootSurface](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Scatter/Variant42d6536875c71cffdfaba4cc9ea41517d6eb05b7c1de6bee486ee2dd4fd23c27.lean/declarations/rootsurface--ebe076a8d26dc12fb191bfdd.md) | 44 | `declaration-track:ebe076a8d26dc12fb191bfdd4606d6cf517fb58f37fad94fbf243be5297fa861` |
| 6 | `theorem` | [rootSurface_enabled](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Scatter/Variant42d6536875c71cffdfaba4cc9ea41517d6eb05b7c1de6bee486ee2dd4fd23c27.lean/declarations/rootsurface-enabled--8df4b22db3f0911a1e2229ad.md) | 55 | `result-track:8df4b22db3f0911a1e2229addc1fa525399269e56e198900c34df69f0613e93c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
