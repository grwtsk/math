# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.ProofTheory.CompileEval.Variant0d107628ffc4749df1790251f2ae23cb28567c194652aadf3a124ed331607193

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f64c00384c6316318c5e7d2162537c8b1994e684",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/ProofTheory/CompileEval/Variant0d107628ffc4749df1790251f2ae23cb28567c194652aadf3a124ed331607193.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/CompileEval/Variant0d107628ffc4749df1790251f2ae23cb28567c194652aadf3a124ed331607193.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/CompileEval/Variant0d107628ffc4749df1790251f2ae23cb28567c194652aadf3a124ed331607193.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f64c00384c6316318c5e7d2162537c8b1994e684`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/ProofTheory/CompileEval/Variant0d107628ffc4749df1790251f2ae23cb28567c194652aadf3a124ed331607193.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/ProofTheory/CompileEval/Variant0d107628ffc4749df1790251f2ae23cb28567c194652aadf3a124ed331607193.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Atomize.Formal.TreePlan` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Eval](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/CompileEval/Variant0d107628ffc4749df1790251f2ae23cb28567c194652aadf3a124ed331607193.lean/declarations/eval--32c602b0a059e87ba482c7a0.md) | 71 | `declaration-track:32c602b0a059e87ba482c7a05499b4c13d1be5b2dd841d6ac48bb5279e1a5981` |
| 2 | `def` | [evalAll](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/CompileEval/Variant0d107628ffc4749df1790251f2ae23cb28567c194652aadf3a124ed331607193.lean/declarations/evalall--76ee8868a8877552b47d2859.md) | 75 | `declaration-track:76ee8868a8877552b47d285933d99950bae2abcb697d0f61ee4be255a3955c94` |
| 3 | `def` | [Comp](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/CompileEval/Variant0d107628ffc4749df1790251f2ae23cb28567c194652aadf3a124ed331607193.lean/declarations/comp--313b05a0b659fd017f0ae62b.md) | 102 | `declaration-track:313b05a0b659fd017f0ae62bb5be9b35513e3eaa19a00b53dedcded5ee598d8a` |
| 4 | `def` | [compAll](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/CompileEval/Variant0d107628ffc4749df1790251f2ae23cb28567c194652aadf3a124ed331607193.lean/declarations/compall--4ad50b423259ded22f805455.md) | 106 | `declaration-track:4ad50b423259ded22f805455cb9bfd07711d6418a1bbf1084e5c8d88289a541a` |
| 5 | `theorem` | [eval_comp](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/CompileEval/Variant0d107628ffc4749df1790251f2ae23cb28567c194652aadf3a124ed331607193.lean/declarations/eval-comp--1d899cddb791330134e3384d.md) | 152 | `result-track:1d899cddb791330134e3384d1aba13a96b2f87b8633bf79039314b4b808378ec` |
| 6 | `theorem` | [evalAll_comp](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/CompileEval/Variant0d107628ffc4749df1790251f2ae23cb28567c194652aadf3a124ed331607193.lean/declarations/evalall-comp--339d4cd363d222d0305721fd.md) | 160 | `result-track:339d4cd363d222d0305721fdcc1e6f5e4e782b2adc59998d8e20fca4f9537f92` |
| 7 | `def` | [constantReferences](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/CompileEval/Variant0d107628ffc4749df1790251f2ae23cb28567c194652aadf3a124ed331607193.lean/declarations/constantreferences--dae1026a0c5a301507709819.md) | 185 | `declaration-track:dae1026a0c5a301507709819aeac58ef3223706c5cb2b737b112aa896996c2e6` |
| 8 | `def` | [rootVariables](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/CompileEval/Variant0d107628ffc4749df1790251f2ae23cb28567c194652aadf3a124ed331607193.lean/declarations/rootvariables--58baeee29ec0267e8880b49e.md) | 201 | `declaration-track:58baeee29ec0267e8880b49e5848021b4c1385a330a8e5fea1f6d38033d9fd33` |
| 9 | `def` | [leafOrigins](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/CompileEval/Variant0d107628ffc4749df1790251f2ae23cb28567c194652aadf3a124ed331607193.lean/declarations/leaforigins--0da79f0e89dda6d8fb5f8742.md) | 217 | `declaration-track:0da79f0e89dda6d8fb5f874295f2296a754ac18e4c2880925ef279b400359c95` |
| 10 | `theorem` | [root_comp](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/CompileEval/Variant0d107628ffc4749df1790251f2ae23cb28567c194652aadf3a124ed331607193.lean/declarations/root-comp--590259655f80e8589ba81397.md) | 241 | `result-track:590259655f80e8589ba8139797ac39ab4bf9841fc40cd3411aac1eef10e6dfe0` |
| 11 | `theorem` | [size_comp](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/CompileEval/Variant0d107628ffc4749df1790251f2ae23cb28567c194652aadf3a124ed331607193.lean/declarations/size-comp--aa81cead86d2c23c56fc508d.md) | 266 | `result-track:aa81cead86d2c23c56fc508df7087c535b4399272ebace9c641d5a19225305fe` |
| 12 | `theorem` | [sizeAll_comp](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/CompileEval/Variant0d107628ffc4749df1790251f2ae23cb28567c194652aadf3a124ed331607193.lean/declarations/sizeall-comp--162e799b02fc7753ff2a38c9.md) | 275 | `result-track:162e799b02fc7753ff2a38c938863c800d64da1bdd1625c6941601f807896819` |
| 13 | `theorem` | [height_comp](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/CompileEval/Variant0d107628ffc4749df1790251f2ae23cb28567c194652aadf3a124ed331607193.lean/declarations/height-comp--d8a53c35557b94db1b505c62.md) | 305 | `result-track:d8a53c35557b94db1b505c622d790302b7b7d0cc422133efc1cf94206cc56a73` |
| 14 | `theorem` | [heightAll_comp](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/CompileEval/Variant0d107628ffc4749df1790251f2ae23cb28567c194652aadf3a124ed331607193.lean/declarations/heightall-comp--b8cdea28b442cd86fbdf20c1.md) | 314 | `result-track:b8cdea28b442cd86fbdf20c1f64636a4087934cf6e0959adc757b48c7576a69a` |
| 15 | `theorem` | [constantReferences_comp](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/CompileEval/Variant0d107628ffc4749df1790251f2ae23cb28567c194652aadf3a124ed331607193.lean/declarations/constantreferences-comp--406e8d2936525e2a43b7c8c6.md) | 343 | `result-track:406e8d2936525e2a43b7c8c626410228ee02ff4530c8a32aa0ad2c789c3fde68` |
| 16 | `theorem` | [rootVariables_comp](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/CompileEval/Variant0d107628ffc4749df1790251f2ae23cb28567c194652aadf3a124ed331607193.lean/declarations/rootvariables-comp--a41e5184586910c157ff6248.md) | 367 | `result-track:a41e5184586910c157ff6248a80110eba22f3d9475437d128ad054ea869cc881` |
| 17 | `theorem` | [leafOrigins_comp](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/CompileEval/Variant0d107628ffc4749df1790251f2ae23cb28567c194652aadf3a124ed331607193.lean/declarations/leaforigins-comp--e09b59b5de925a6a69e6049b.md) | 390 | `result-track:e09b59b5de925a6a69e6049bb6d05d340f21baca5e1cfe250ab4d2e0f1bdda23` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
