# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.ProofTheory.CompileEval.Variant1ddfb5e8d799a14b40def35f7a1a1853d4eaaf2c052929d9de40cf8c8a8ce263

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5d4c9d2dd6e90a8f9467601f7e0df00e46faa147",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/ProofTheory/CompileEval/Variant1ddfb5e8d799a14b40def35f7a1a1853d4eaaf2c052929d9de40cf8c8a8ce263.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/CompileEval/Variant1ddfb5e8d799a14b40def35f7a1a1853d4eaaf2c052929d9de40cf8c8a8ce263.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/CompileEval/Variant1ddfb5e8d799a14b40def35f7a1a1853d4eaaf2c052929d9de40cf8c8a8ce263.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5d4c9d2dd6e90a8f9467601f7e0df00e46faa147`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/ProofTheory/CompileEval/Variant1ddfb5e8d799a14b40def35f7a1a1853d4eaaf2c052929d9de40cf8c8a8ce263.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/ProofTheory/CompileEval/Variant1ddfb5e8d799a14b40def35f7a1a1853d4eaaf2c052929d9de40cf8c8a8ce263.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Atomize.Formal.TreePlan` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Eval](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/CompileEval/Variant1ddfb5e8d799a14b40def35f7a1a1853d4eaaf2c052929d9de40cf8c8a8ce263.lean/declarations/eval--69b8f06de1f6370a21913f8b.md) | 79 | `declaration-track:69b8f06de1f6370a21913f8b0d1e10a2700d6870ef2d6010dfe553078ed9bb53` |
| 2 | `def` | [evalAll](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/CompileEval/Variant1ddfb5e8d799a14b40def35f7a1a1853d4eaaf2c052929d9de40cf8c8a8ce263.lean/declarations/evalall--6ad43013c87822c12c12312b.md) | 83 | `declaration-track:6ad43013c87822c12c12312b77d5f6be9a4b56c7471b3370f39afe89a8aa1b14` |
| 3 | `def` | [Comp](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/CompileEval/Variant1ddfb5e8d799a14b40def35f7a1a1853d4eaaf2c052929d9de40cf8c8a8ce263.lean/declarations/comp--ecca6b1365f65dd5c2b91725.md) | 110 | `declaration-track:ecca6b1365f65dd5c2b91725f197916374a9cfc29f44e55c64df6310f381101a` |
| 4 | `def` | [compAll](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/CompileEval/Variant1ddfb5e8d799a14b40def35f7a1a1853d4eaaf2c052929d9de40cf8c8a8ce263.lean/declarations/compall--4d87968c7d719c90b4fc3f5d.md) | 114 | `declaration-track:4d87968c7d719c90b4fc3f5d43f98ce60781f8da93ae90f4e7101715faddf5f8` |
| 5 | `theorem` | [eval_comp](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/CompileEval/Variant1ddfb5e8d799a14b40def35f7a1a1853d4eaaf2c052929d9de40cf8c8a8ce263.lean/declarations/eval-comp--2a4f1668d9734f3d628e78bd.md) | 160 | `result-track:2a4f1668d9734f3d628e78bdde01c52159f8ad955bca75abb2a93a9472bed505` |
| 6 | `theorem` | [evalAll_comp](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/CompileEval/Variant1ddfb5e8d799a14b40def35f7a1a1853d4eaaf2c052929d9de40cf8c8a8ce263.lean/declarations/evalall-comp--029dc4d3319c9332db125edf.md) | 168 | `result-track:029dc4d3319c9332db125edf5539f12e444c04d02a743c8e794b94fb0343b4f1` |
| 7 | `def` | [constantReferences](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/CompileEval/Variant1ddfb5e8d799a14b40def35f7a1a1853d4eaaf2c052929d9de40cf8c8a8ce263.lean/declarations/constantreferences--7fb57036ba324be89c31b9a0.md) | 193 | `declaration-track:7fb57036ba324be89c31b9a03141300f800a5f03b46126b52e16305774669b61` |
| 8 | `def` | [rootVariables](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/CompileEval/Variant1ddfb5e8d799a14b40def35f7a1a1853d4eaaf2c052929d9de40cf8c8a8ce263.lean/declarations/rootvariables--c9ce057f7e64058f92d5d5cd.md) | 209 | `declaration-track:c9ce057f7e64058f92d5d5cddeeff94c1c87686e2fd599142e5750a89a81321c` |
| 9 | `def` | [leafOrigins](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/CompileEval/Variant1ddfb5e8d799a14b40def35f7a1a1853d4eaaf2c052929d9de40cf8c8a8ce263.lean/declarations/leaforigins--a601a9771a97b06ff77bab1d.md) | 225 | `declaration-track:a601a9771a97b06ff77bab1d402f08bbf905bd2d93c9ac1b3a70e814c9051738` |
| 10 | `theorem` | [root_comp](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/CompileEval/Variant1ddfb5e8d799a14b40def35f7a1a1853d4eaaf2c052929d9de40cf8c8a8ce263.lean/declarations/root-comp--86b673e987c7212372bd96e1.md) | 249 | `result-track:86b673e987c7212372bd96e1221fad7e046952cefb9eaa8ec205ca80f4025d49` |
| 11 | `theorem` | [size_comp](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/CompileEval/Variant1ddfb5e8d799a14b40def35f7a1a1853d4eaaf2c052929d9de40cf8c8a8ce263.lean/declarations/size-comp--d6e8c450668262d4c7a8d8b1.md) | 274 | `result-track:d6e8c450668262d4c7a8d8b1c1907cfa16627f20268d9edbe7b71a620b97f945` |
| 12 | `theorem` | [sizeAll_comp](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/CompileEval/Variant1ddfb5e8d799a14b40def35f7a1a1853d4eaaf2c052929d9de40cf8c8a8ce263.lean/declarations/sizeall-comp--c3dfcfbf3a0e2181023d5c52.md) | 283 | `result-track:c3dfcfbf3a0e2181023d5c52a90b14fc89e41ab8e8669ff4a325b082e743ce4f` |
| 13 | `theorem` | [height_comp](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/CompileEval/Variant1ddfb5e8d799a14b40def35f7a1a1853d4eaaf2c052929d9de40cf8c8a8ce263.lean/declarations/height-comp--7bca12e6b971383ad8822b19.md) | 313 | `result-track:7bca12e6b971383ad8822b193be80a11ed093468fa52fb0b455c965b0da1f7cf` |
| 14 | `theorem` | [heightAll_comp](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/CompileEval/Variant1ddfb5e8d799a14b40def35f7a1a1853d4eaaf2c052929d9de40cf8c8a8ce263.lean/declarations/heightall-comp--e4f9ab8ed6868260060f413b.md) | 322 | `result-track:e4f9ab8ed6868260060f413b719d1a92ce4d3e5e71ab63a9f46091416aadccd8` |
| 15 | `theorem` | [constantReferences_comp](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/CompileEval/Variant1ddfb5e8d799a14b40def35f7a1a1853d4eaaf2c052929d9de40cf8c8a8ce263.lean/declarations/constantreferences-comp--fe4694ac5731969a780bf445.md) | 351 | `result-track:fe4694ac5731969a780bf445862a5811212b198480bcc6897ab72a449d7f9c56` |
| 16 | `theorem` | [rootVariables_comp](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/CompileEval/Variant1ddfb5e8d799a14b40def35f7a1a1853d4eaaf2c052929d9de40cf8c8a8ce263.lean/declarations/rootvariables-comp--8c5328b82a3d5733d96944e4.md) | 375 | `result-track:8c5328b82a3d5733d96944e445d8e86597443c761f035f5592d5b67a93781075` |
| 17 | `theorem` | [leafOrigins_comp](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/CompileEval/Variant1ddfb5e8d799a14b40def35f7a1a1853d4eaaf2c052929d9de40cf8c8a8ce263.lean/declarations/leaforigins-comp--512ed300969a9e97ca32d05d.md) | 398 | `result-track:512ed300969a9e97ca32d05dac2486e807427508887e406bc0e5ff7e9b13514d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
