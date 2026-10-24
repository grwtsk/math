# Verification target: GRWTSK.Algebra.PUnit.Variant6f8fbe5ba403981ebb6a0c57df7ec45ac639ea8e29cd72bd9052cdf60bfdde7c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "97329efc031a23758f8fd61aa5abf38c1e3db52f",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/PUnit/Variant6f8fbe5ba403981ebb6a0c57df7ec45ac639ea8e29cd72bd9052cdf60bfdde7c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/PUnit/Variant6f8fbe5ba403981ebb6a0c57df7ec45ac639ea8e29cd72bd9052cdf60bfdde7c.lean/index.md) · [Full source](../../../../mathematics/Algebra/PUnit/Variant6f8fbe5ba403981ebb6a0c57df7ec45ac639ea8e29cd72bd9052cdf60bfdde7c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `97329efc031a23758f8fd61aa5abf38c1e3db52f`.

Source path: `GRWTSK/Algebra/PUnit/Variant6f8fbe5ba403981ebb6a0c57df7ec45ac639ea8e29cd72bd9052cdf60bfdde7c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/PUnit/Variant6f8fbe5ba403981ebb6a0c57df7ec45ac639ea8e29cd72bd9052cdf60bfdde7c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Module.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Action.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.PUnit` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [smul](../../../../mathematics/Algebra/PUnit/Variant6f8fbe5ba403981ebb6a0c57df7ec45ac639ea8e29cd72bd9052cdf60bfdde7c.lean/declarations/smul--0e530d39ed97b434fc79ebe1.md) | 21 | `declaration-track:0e530d39ed97b434fc79ebe153bb58fdca7bff4086aeb87075f986e529c74bef` |
| 2 | `theorem` | [smul_eq](../../../../mathematics/Algebra/PUnit/Variant6f8fbe5ba403981ebb6a0c57df7ec45ac639ea8e29cd72bd9052cdf60bfdde7c.lean/declarations/smul-eq--bdc1a071a74928c269cbfcb8.md) | 25 | `result-track:bdc1a071a74928c269cbfcb835bd17f22ba42fe457a5979d095e6aae38f7e19d` |
| 3 | `instance` | [(anonymous)](../../../../mathematics/Algebra/PUnit/Variant6f8fbe5ba403981ebb6a0c57df7ec45ac639ea8e29cd72bd9052cdf60bfdde7c.lean/declarations/instance--c3b411b670420217af09071c.md) | 29 | `declaration-track:c3b411b670420217af09071c07f6238ab61187cbf86820d54875f33270321a93` |
| 4 | `instance` | [(anonymous)](../../../../mathematics/Algebra/PUnit/Variant6f8fbe5ba403981ebb6a0c57df7ec45ac639ea8e29cd72bd9052cdf60bfdde7c.lean/declarations/instance--5694c0fa42334e609ede03f3.md) | 33 | `declaration-track:5694c0fa42334e609ede03f34a190aec7386d3ff0f19de0d61edf017111d37d6` |
| 5 | `instance` | [instIsScalarTowerOfSMul](../../../../mathematics/Algebra/PUnit/Variant6f8fbe5ba403981ebb6a0c57df7ec45ac639ea8e29cd72bd9052cdf60bfdde7c.lean/declarations/instisscalartowerofsmul--3eee276db66d2472f5c1d3e8.md) | 37 | `declaration-track:3eee276db66d2472f5c1d3e8c0923bbce631df26b6eb432eff31ca8760839eae` |
| 6 | `instance` | [smulWithZero](../../../../mathematics/Algebra/PUnit/Variant6f8fbe5ba403981ebb6a0c57df7ec45ac639ea8e29cd72bd9052cdf60bfdde7c.lean/declarations/smulwithzero--78b3c462bf53bb1c598b7117.md) | 40 | `declaration-track:78b3c462bf53bb1c598b71175dab975a2468c69a26d4ca9b6941956979db638d` |
| 7 | `instance` | [mulAction](../../../../mathematics/Algebra/PUnit/Variant6f8fbe5ba403981ebb6a0c57df7ec45ac639ea8e29cd72bd9052cdf60bfdde7c.lean/declarations/mulaction--6ada173ff78ecb8600d49b0d.md) | 45 | `declaration-track:6ada173ff78ecb8600d49b0d4adb4c151ef5c2317255c23c316b3f742929f411` |
| 8 | `instance` | [distribMulAction](../../../../mathematics/Algebra/PUnit/Variant6f8fbe5ba403981ebb6a0c57df7ec45ac639ea8e29cd72bd9052cdf60bfdde7c.lean/declarations/distribmulaction--5e136bfad2060c2e9516d2ec.md) | 50 | `declaration-track:5e136bfad2060c2e9516d2ec89a027b66918e98cb9f0758af77a13b44950313a` |
| 9 | `instance` | [mulDistribMulAction](../../../../mathematics/Algebra/PUnit/Variant6f8fbe5ba403981ebb6a0c57df7ec45ac639ea8e29cd72bd9052cdf60bfdde7c.lean/declarations/muldistribmulaction--5d3f7d5436e6c30aa17d1ba4.md) | 55 | `declaration-track:5d3f7d5436e6c30aa17d1ba4ac0075333dd975dddeb66b27cf3d18db1f6c0532` |
| 10 | `instance` | [mulSemiringAction](../../../../mathematics/Algebra/PUnit/Variant6f8fbe5ba403981ebb6a0c57df7ec45ac639ea8e29cd72bd9052cdf60bfdde7c.lean/declarations/mulsemiringaction--b42ca24e40a802834e415662.md) | 60 | `declaration-track:b42ca24e40a802834e415662706dd4df07fa8777859460da7430c91597d09ab6` |
| 11 | `instance` | [mulActionWithZero](../../../../mathematics/Algebra/PUnit/Variant6f8fbe5ba403981ebb6a0c57df7ec45ac639ea8e29cd72bd9052cdf60bfdde7c.lean/declarations/mulactionwithzero--5329d4ea088b229c1110c607.md) | 63 | `declaration-track:5329d4ea088b229c1110c607d308d57f84ec44887ccf946caf638de108a04c7c` |
| 12 | `instance` | [module](../../../../mathematics/Algebra/PUnit/Variant6f8fbe5ba403981ebb6a0c57df7ec45ac639ea8e29cd72bd9052cdf60bfdde7c.lean/declarations/module--7f4a60e0db1b09b36e417f0a.md) | 66 | `declaration-track:7f4a60e0db1b09b36e417f0aeaa59630822182578feda64c66b0d1da8303d0c1` |
| 13 | `instance` | [(anonymous)](../../../../mathematics/Algebra/PUnit/Variant6f8fbe5ba403981ebb6a0c57df7ec45ac639ea8e29cd72bd9052cdf60bfdde7c.lean/declarations/instance--7e6588ae5ec270d850621c8b.md) | 72 | `declaration-track:7e6588ae5ec270d850621c8bdc54ecf326c87ec7d9944f71376e68b9eeacc6aa` |
| 14 | `lemma` | [smul_eq'](../../../../mathematics/Algebra/PUnit/Variant6f8fbe5ba403981ebb6a0c57df7ec45ac639ea8e29cd72bd9052cdf60bfdde7c.lean/declarations/smul-eq--a0d5b8a6921c546728cc1503.md) | 76 | `result-track:a0d5b8a6921c546728cc1503983e3e1df5773fba9772b7ddabef4f5db9b6923f` |
| 15 | `instance` | [(anonymous)](../../../../mathematics/Algebra/PUnit/Variant6f8fbe5ba403981ebb6a0c57df7ec45ac639ea8e29cd72bd9052cdf60bfdde7c.lean/declarations/instance--2e3b1c06c70dad1b45640cba.md) | 78 | `declaration-track:2e3b1c06c70dad1b45640cbaafa4b8eef15c49a9dbb8d88b9c2d0435c04ef162` |
| 16 | `instance` | [(anonymous)](../../../../mathematics/Algebra/PUnit/Variant6f8fbe5ba403981ebb6a0c57df7ec45ac639ea8e29cd72bd9052cdf60bfdde7c.lean/declarations/instance--cf8b9ff003e1d6aeefee10dd.md) | 79 | `declaration-track:cf8b9ff003e1d6aeefee10dd447f50dd1cafe706db9f27d40e9c9f8b8fa2cbb3` |
| 17 | `instance` | [(anonymous)](../../../../mathematics/Algebra/PUnit/Variant6f8fbe5ba403981ebb6a0c57df7ec45ac639ea8e29cd72bd9052cdf60bfdde7c.lean/declarations/instance--b85c3e087be75c6a5534df26.md) | 81 | `declaration-track:b85c3e087be75c6a5534df267e84db9c5e24e60fdcb89f5f3bd294939a740013` |
| 18 | `instance` | [(anonymous)](../../../../mathematics/Algebra/PUnit/Variant6f8fbe5ba403981ebb6a0c57df7ec45ac639ea8e29cd72bd9052cdf60bfdde7c.lean/declarations/instance--5e959c06c1c46c3ec5faf3d4.md) | 86 | `declaration-track:5e959c06c1c46c3ec5faf3d4059072c128e9b3f0edf99cf5e163edc1c00d3ff2` |
| 19 | `instance` | [(anonymous)](../../../../mathematics/Algebra/PUnit/Variant6f8fbe5ba403981ebb6a0c57df7ec45ac639ea8e29cd72bd9052cdf60bfdde7c.lean/declarations/instance--24e680b7803daa44da142535.md) | 90 | `declaration-track:24e680b7803daa44da1425355c9287f9157010e7746dbabb5f644da49afa38b1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
