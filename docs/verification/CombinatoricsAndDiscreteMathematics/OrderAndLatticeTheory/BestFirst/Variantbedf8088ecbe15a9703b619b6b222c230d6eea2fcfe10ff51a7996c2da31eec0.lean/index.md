# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.BestFirst.Variantbedf8088ecbe15a9703b619b6b222c230d6eea2fcfe10ff51a7996c2da31eec0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "254dcdfde25da30b208684838d7fd881fd5b8e90",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BestFirst/Variantbedf8088ecbe15a9703b619b6b222c230d6eea2fcfe10ff51a7996c2da31eec0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BestFirst/Variantbedf8088ecbe15a9703b619b6b222c230d6eea2fcfe10ff51a7996c2da31eec0.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BestFirst/Variantbedf8088ecbe15a9703b619b6b222c230d6eea2fcfe10ff51a7996c2da31eec0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `254dcdfde25da30b208684838d7fd881fd5b8e90`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BestFirst/Variantbedf8088ecbe15a9703b619b6b222c230d6eea2fcfe10ff51a7996c2da31eec0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BestFirst/Variantbedf8088ecbe15a9703b619b6b222c230d6eea2fcfe10ff51a7996c2da31eec0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Batteries.Data.MLList.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Prod.Lex` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Finite.Range` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Estimator` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [BestFirstNode](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BestFirst/Variantbedf8088ecbe15a9703b619b6b222c230d6eea2fcfe10ff51a7996c2da31eec0.lean/declarations/bestfirstnode--944ef2639459ef694513e75d.md) | 86 | `declaration-track:944ef2639459ef694513e75d9dfa55ba207847417eae1e7d3feb9de90bb5d487` |
| 2 | `def` | [BestFirstNode.estimate](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BestFirst/Variantbedf8088ecbe15a9703b619b6b222c230d6eea2fcfe10ff51a7996c2da31eec0.lean/declarations/bestfirstnode-estimate--b5185c3f153fe8133fb3af8f.md) | 99 | `declaration-track:b5185c3f153fe8133fb3af8f41a2788295d31ceece608f46937bf9ce065f8c8d` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BestFirst/Variantbedf8088ecbe15a9703b619b6b222c230d6eea2fcfe10ff51a7996c2da31eec0.lean/declarations/instance--b91a1ceeba634db4f48b2fd9.md) | 101 | `declaration-track:b91a1ceeba634db4f48b2fd9931caad1e6adf3c8135d8a79080dc28ce2d44dea` |
| 4 | `def` | [BestFirstQueue](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BestFirst/Variantbedf8088ecbe15a9703b619b6b222c230d6eea2fcfe10ff51a7996c2da31eec0.lean/declarations/bestfirstqueue--70523f49d9219a6323339115.md) | 111 | `declaration-track:70523f49d9219a63233391155ac32f8844dd13b30387c67902e35b328394b718` |
| 5 | `def` | [insertAndEject](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BestFirst/Variantbedf8088ecbe15a9703b619b6b222c230d6eea2fcfe10ff51a7996c2da31eec0.lean/declarations/insertandeject--148a0125623c56d775cfceda.md) | 123 | `declaration-track:148a0125623c56d775cfceda20d08ee3c610fe5518971b10b02f48ab8cf7e27f` |
| 6 | `def` | [ensureFirstIsBest](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BestFirst/Variantbedf8088ecbe15a9703b619b6b222c230d6eea2fcfe10ff51a7996c2da31eec0.lean/declarations/ensurefirstisbest--69db0f731f1c13c9b78ef037.md) | 140 | `declaration-track:69db0f731f1c13c9b78ef037a701268aa5cd4c559df58900fba529c0d72e9187` |
| 7 | `def` | [popWithBound](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BestFirst/Variantbedf8088ecbe15a9703b619b6b222c230d6eea2fcfe10ff51a7996c2da31eec0.lean/declarations/popwithbound--8927df57da71d34ddc35dac9.md) | 172 | `declaration-track:8927df57da71d34ddc35dac9b2cf9a826cb04ebdb0bb091433da238311e739b8` |
| 8 | `def` | [popWithPriority](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BestFirst/Variantbedf8088ecbe15a9703b619b6b222c230d6eea2fcfe10ff51a7996c2da31eec0.lean/declarations/popwithpriority--11358320547b7619ad5d4ce3.md) | 193 | `declaration-track:11358320547b7619ad5d4ce30ce596fe62482065db4dc36df7013c4ea520c264` |
| 9 | `def` | [pop](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BestFirst/Variantbedf8088ecbe15a9703b619b6b222c230d6eea2fcfe10ff51a7996c2da31eec0.lean/declarations/pop--98d6ee2651db0799d542c0ab.md) | 202 | `declaration-track:98d6ee2651db0799d542c0abc28054286d54ef326010c9b5b3b6fe85acf4327a` |
| 10 | `def` | [toMLListWithPriority](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BestFirst/Variantbedf8088ecbe15a9703b619b6b222c230d6eea2fcfe10ff51a7996c2da31eec0.lean/declarations/tomllistwithpriority--09a1f1aa524f2bb2b0a1c165.md) | 213 | `declaration-track:09a1f1aa524f2bb2b0a1c1659eb25c05eef754bd71f0cbf4c3769c1b614a9a20` |
| 11 | `def` | [toMLList](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BestFirst/Variantbedf8088ecbe15a9703b619b6b222c230d6eea2fcfe10ff51a7996c2da31eec0.lean/declarations/tomllist--349053f0b6974e96466fecc9.md) | 222 | `declaration-track:349053f0b6974e96466fecc995ae68e202495a655d8ed11c8795a2f4a2da5fc8` |
| 12 | `def` | [impl](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BestFirst/Variantbedf8088ecbe15a9703b619b6b222c230d6eea2fcfe10ff51a7996c2da31eec0.lean/declarations/impl--fa0f8397ba93b8ffdddaef6b.md) | 238 | `declaration-track:fa0f8397ba93b8ffdddaef6bfa84bc5d70837ba6dbcfed54651b73a9c9df3ad1` |
| 13 | `def` | [implMaxDepth](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BestFirst/Variantbedf8088ecbe15a9703b619b6b222c230d6eea2fcfe10ff51a7996c2da31eec0.lean/declarations/implmaxdepth--1e98ee7f21f7e20c3dfefd3e.md) | 253 | `declaration-track:1e98ee7f21f7e20c3dfefd3ea30989c836f4afe65ee3e1ed850b8234c76383d7` |
| 14 | `def` | [bestFirstSearchCore](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BestFirst/Variantbedf8088ecbe15a9703b619b6b222c230d6eea2fcfe10ff51a7996c2da31eec0.lean/declarations/bestfirstsearchcore--b49ca34a81a2bcc0002d37c7.md) | 288 | `declaration-track:b49ca34a81a2bcc0002d37c73bbb17181c84319b82db7fea4875d83668b43028` |
| 15 | `instance` | [instOrderBotEq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BestFirst/Variantbedf8088ecbe15a9703b619b6b222c230d6eea2fcfe10ff51a7996c2da31eec0.lean/declarations/instorderboteq--7f4a2cf126528a48a418d38c.md) | 310 | `declaration-track:7f4a2cf126528a48a418d38c8afb8a4cd25b9bdf87ac5490bcf915b358c429c2` |
| 16 | `def` | [bestFirstSearch](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BestFirst/Variantbedf8088ecbe15a9703b619b6b222c230d6eea2fcfe10ff51a7996c2da31eec0.lean/declarations/bestfirstsearch--4519057ae8def75e3aa6f9e4.md) | 335 | `declaration-track:4519057ae8def75e3aa6f9e43ea7caf8eada69926bc437db30d83d4e659832c8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
