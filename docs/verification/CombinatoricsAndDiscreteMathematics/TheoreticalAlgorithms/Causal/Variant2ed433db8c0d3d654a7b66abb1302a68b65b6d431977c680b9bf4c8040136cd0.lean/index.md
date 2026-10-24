# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Causal.Variant2ed433db8c0d3d654a7b66abb1302a68b65b6d431977c680b9bf4c8040136cd0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "11cc1b7af60e7d2968c5a3c4a3c6bce195657fad",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Causal/Variant2ed433db8c0d3d654a7b66abb1302a68b65b6d431977c680b9bf4c8040136cd0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Causal/Variant2ed433db8c0d3d654a7b66abb1302a68b65b6d431977c680b9bf4c8040136cd0.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Causal/Variant2ed433db8c0d3d654a7b66abb1302a68b65b6d431977c680b9bf4c8040136cd0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `11cc1b7af60e7d2968c5a3c4a3c6bce195657fad`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Causal/Variant2ed433db8c0d3d654a7b66abb1302a68b65b6d431977c680b9bf4c8040136cd0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Causal/Variant2ed433db8c0d3d654a7b66abb1302a68b65b6d431977c680b9bf4c8040136cd0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `DAF.System` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.List.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Operations` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [CausalEquivalent](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Causal/Variant2ed433db8c0d3d654a7b66abb1302a68b65b6d431977c680b9bf4c8040136cd0.lean/declarations/causalequivalent--7ce5b5650e664c656ad82f2a.md) | 42 | `declaration-track:7ce5b5650e664c656ad82f2a90cf84fff3b1736713a12e518b728c827f58f238` |
| 2 | `theorem` | [causalEquivalent_refl](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Causal/Variant2ed433db8c0d3d654a7b66abb1302a68b65b6d431977c680b9bf4c8040136cd0.lean/declarations/causalequivalent-refl--8279b06df00694d74b123fa2.md) | 47 | `result-track:8279b06df00694d74b123fa2c0820c789e68721633b2ed21257017a6fb6c1e47` |
| 3 | `theorem` | [causalEquivalent_symm](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Causal/Variant2ed433db8c0d3d654a7b66abb1302a68b65b6d431977c680b9bf4c8040136cd0.lean/declarations/causalequivalent-symm--bdbfd9245906a7377b48d2fa.md) | 52 | `result-track:bdbfd9245906a7377b48d2fa0a87030e7d2ccea9f54a54a12d95e40d9466f297` |
| 4 | `theorem` | [causalEquivalent_trans](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Causal/Variant2ed433db8c0d3d654a7b66abb1302a68b65b6d431977c680b9bf4c8040136cd0.lean/declarations/causalequivalent-trans--9006d02796a3aa12c07aa87e.md) | 60 | `result-track:9006d02796a3aa12c07aa87e6c10b2a89c7cd2c2cde56f2c8d3509f6093ea330` |
| 5 | `def` | [causalSetoid](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Causal/Variant2ed433db8c0d3d654a7b66abb1302a68b65b6d431977c680b9bf4c8040136cd0.lean/declarations/causalsetoid--40b75fa7dc6ecfa8a04cdf88.md) | 70 | `declaration-track:40b75fa7dc6ecfa8a04cdf880e8984fca57627efd193002a6cbd26904080eb85` |
| 6 | `def` | [CausalState](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Causal/Variant2ed433db8c0d3d654a7b66abb1302a68b65b6d431977c680b9bf4c8040136cd0.lean/declarations/causalstate--b8b08a80eed0204fd6f7364b.md) | 79 | `declaration-track:b8b08a80eed0204fd6f7364b72d127d40106166d5de2357774fdfc5c86765d41` |
| 7 | `def` | [toCausal](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Causal/Variant2ed433db8c0d3d654a7b66abb1302a68b65b6d431977c680b9bf4c8040136cd0.lean/declarations/tocausal--80eee3d595d0595f32debc90.md) | 83 | `declaration-track:80eee3d595d0595f32debc90e9729463f3448eb3e6897d61267eec95e48088e2` |
| 8 | `theorem` | [toCausal_surjective](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Causal/Variant2ed433db8c0d3d654a7b66abb1302a68b65b6d431977c680b9bf4c8040136cd0.lean/declarations/tocausal-surjective--10c8b836f1788e1e20af9a20.md) | 86 | `result-track:10c8b836f1788e1e20af9a202246ddcd8a3476d01c4c8ace772b6c4b06850484` |
| 9 | `theorem` | [toCausal_eq_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Causal/Variant2ed433db8c0d3d654a7b66abb1302a68b65b6d431977c680b9bf4c8040136cd0.lean/declarations/tocausal-eq-iff--6e32acd5d60d50147326d922.md) | 94 | `result-track:6e32acd5d60d50147326d922685879194b3f6a99f0996aa2a3980a711aececf0` |
| 10 | `theorem` | [map_causalEquivalent](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Causal/Variant2ed433db8c0d3d654a7b66abb1302a68b65b6d431977c680b9bf4c8040136cd0.lean/declarations/map-causalequivalent--9fe347bc5debc6d424c9e71f.md) | 111 | `result-track:9fe347bc5debc6d424c9e71f78734fa8ee2cfe17735468a93376b9464e5a3896` |
| 11 | `def` | [causalStateMap](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Causal/Variant2ed433db8c0d3d654a7b66abb1302a68b65b6d431977c680b9bf4c8040136cd0.lean/declarations/causalstatemap--ebfbcf839542d456359dcb3d.md) | 127 | `declaration-track:ebfbcf839542d456359dcb3d7f9fd6b6f2ef563506e8d88744ae0c8c6bbb3c49` |
| 12 | `theorem` | [causalStateMap_toCausal](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Causal/Variant2ed433db8c0d3d654a7b66abb1302a68b65b6d431977c680b9bf4c8040136cd0.lean/declarations/causalstatemap-tocausal--9548f29fb1d6c57305edc64a.md) | 135 | `result-track:9548f29fb1d6c57305edc64a5148a83465b469887bcf3d609dafa6e58c317006` |
| 13 | `theorem` | [causalStateMap_surjective](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Causal/Variant2ed433db8c0d3d654a7b66abb1302a68b65b6d431977c680b9bf4c8040136cd0.lean/declarations/causalstatemap-surjective--ab9dd9232389756ea3517b97.md) | 151 | `result-track:ab9dd9232389756ea3517b97ad93ce4d97373a0434b6d7ce606ea33c335e1fe1` |
| 14 | `theorem` | [causalEquivalent_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Causal/Variant2ed433db8c0d3d654a7b66abb1302a68b65b6d431977c680b9bf4c8040136cd0.lean/declarations/causalequivalent-iff--7d7b4a481379c6fbb21ba4fa.md) | 170 | `result-track:7d7b4a481379c6fbb21ba4fa0c4a6e0e729c8e9d5cdc29bcbaee06d2ca6156b3` |
| 15 | `def` | [causalStateEquiv](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Causal/Variant2ed433db8c0d3d654a7b66abb1302a68b65b6d431977c680b9bf4c8040136cd0.lean/declarations/causalstateequiv--f9e854994472a2c27a373bef.md) | 183 | `declaration-track:f9e854994472a2c27a373befc7d26478a1867baf9ae01f4e040c93abd9f524d5` |
| 16 | `theorem` | [causalStateEquiv_toCausal](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Causal/Variant2ed433db8c0d3d654a7b66abb1302a68b65b6d431977c680b9bf4c8040136cd0.lean/declarations/causalstateequiv-tocausal--b871429320c4472a1b176065.md) | 201 | `result-track:b871429320c4472a1b1760653a6dbfed2be75a6e57141b085bf11a7348150fc8` |
| 17 | `structure` | [PredictiveRepresentation](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Causal/Variant2ed433db8c0d3d654a7b66abb1302a68b65b6d431977c680b9bf4c8040136cd0.lean/declarations/predictiverepresentation--5e5d0043cfeea76d1d438c3f.md) | 214 | `declaration-track:5e5d0043cfeea76d1d438c3f74ce669d0891ac393788b18784acf1efc7383234` |
| 18 | `def` | [RealizedImage](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Causal/Variant2ed433db8c0d3d654a7b66abb1302a68b65b6d431977c680b9bf4c8040136cd0.lean/declarations/realizedimage--5a4a409c855c79ea0cb072b6.md) | 225 | `declaration-track:5a4a409c855c79ea0cb072b64a43d3ba16875d0bf8eefa6e7bf5ee186f6bcbaf` |
| 19 | `def` | [toRealizedImage](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Causal/Variant2ed433db8c0d3d654a7b66abb1302a68b65b6d431977c680b9bf4c8040136cd0.lean/declarations/torealizedimage--141a959509c83987140126d2.md) | 229 | `declaration-track:141a959509c83987140126d2b27c36349f3c17c11b2629430be3d4daa3d40281` |
| 20 | `theorem` | [toRealizedImage_surjective](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Causal/Variant2ed433db8c0d3d654a7b66abb1302a68b65b6d431977c680b9bf4c8040136cd0.lean/declarations/torealizedimage-surjective--917d66ffe8297cb00573637e.md) | 232 | `result-track:917d66ffe8297cb00573637e5915651d4780540952b8e44f8548947d6cacee76` |
| 21 | `def` | [realizedImageToCausal](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Causal/Variant2ed433db8c0d3d654a7b66abb1302a68b65b6d431977c680b9bf4c8040136cd0.lean/declarations/realizedimagetocausal--0359b13fd071fbd2e7675fb0.md) | 243 | `declaration-track:0359b13fd071fbd2e7675fb090c81a9af5a8e4366a0ffc0270bcca7ce8549c05` |
| 22 | `theorem` | [realizedImageToCausal_toRealizedImage](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Causal/Variant2ed433db8c0d3d654a7b66abb1302a68b65b6d431977c680b9bf4c8040136cd0.lean/declarations/realizedimagetocausal-torealizedimage--cb5926978efceb624da32523.md) | 248 | `result-track:cb5926978efceb624da325237e237a7593d6a687f8c797e1cb6062d9af3bb332` |
| 23 | `theorem` | [realizedImageToCausal_unique](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Causal/Variant2ed433db8c0d3d654a7b66abb1302a68b65b6d431977c680b9bf4c8040136cd0.lean/declarations/realizedimagetocausal-unique--991453ea1a21352c8e5e3e5e.md) | 254 | `result-track:991453ea1a21352c8e5e3e5e1855d93ec20eba4516781542b40bfd33c1646898` |
| 24 | `theorem` | [causalState_terminal](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Causal/Variant2ed433db8c0d3d654a7b66abb1302a68b65b6d431977c680b9bf4c8040136cd0.lean/declarations/causalstate-terminal--0271963fb17975d3cd87a047.md) | 268 | `result-track:0271963fb17975d3cd87a047f9c3bce51fa6ef02ddcf7c34fa07282878b562e8` |
| 25 | `theorem` | [causalState_terminal](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Causal/Variant2ed433db8c0d3d654a7b66abb1302a68b65b6d431977c680b9bf4c8040136cd0.lean/declarations/causalstate-terminal--5fc38bc4ffaf93a5e46638c5.md) | 279 | `result-track:5fc38bc4ffaf93a5e46638c5ea450369f01dbe177057d19043dd304071102dae` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
