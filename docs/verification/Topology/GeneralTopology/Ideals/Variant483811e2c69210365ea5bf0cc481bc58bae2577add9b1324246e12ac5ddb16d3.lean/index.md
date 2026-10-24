# Verification target: GRWTSK.Topology.GeneralTopology.Ideals.Variant483811e2c69210365ea5bf0cc481bc58bae2577add9b1324246e12ac5ddb16d3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fc3573465bb60179d20d277ab8d521840b175342",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Ideals/Variant483811e2c69210365ea5bf0cc481bc58bae2577add9b1324246e12ac5ddb16d3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Ideals/Variant483811e2c69210365ea5bf0cc481bc58bae2577add9b1324246e12ac5ddb16d3.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Ideals/Variant483811e2c69210365ea5bf0cc481bc58bae2577add9b1324246e12ac5ddb16d3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fc3573465bb60179d20d277ab8d521840b175342`.

Source path: `GRWTSK/Topology/GeneralTopology/Ideals/Variant483811e2c69210365ea5bf0cc481bc58bae2577add9b1324246e12ac5ddb16d3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Ideals/Variant483811e2c69210365ea5bf0cc481bc58bae2577add9b1324246e12ac5ddb16d3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Algebra.Algebra` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.ContinuousFunction.Compact` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.UrysohnsLemma` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Data.IsROrC.Basic` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.NormedSpace.Units` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Module.CharacterSpace` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [idealOfSet](../../../../../mathematics/Topology/GeneralTopology/Ideals/Variant483811e2c69210365ea5bf0cc481bc58bae2577add9b1324246e12ac5ddb16d3.lean/declarations/idealofset--27a2fb0d978461498af04d6d.md) | 97 | `declaration-track:27a2fb0d978461498af04d6d94e5acd3d24bd6a0933448d0b6c81dfe7ff25310` |
| 2 | `theorem` | [idealOfSet_closed](../../../../../mathematics/Topology/GeneralTopology/Ideals/Variant483811e2c69210365ea5bf0cc481bc58bae2577add9b1324246e12ac5ddb16d3.lean/declarations/idealofset-closed--f5f4e1a91cec1d212fc5fc51.md) | 104 | `result-track:f5f4e1a91cec1d212fc5fc518a53c6461c994f0e83e08105e8913837a3e463d6` |
| 3 | `theorem` | [mem_idealOfSet](../../../../../mathematics/Topology/GeneralTopology/Ideals/Variant483811e2c69210365ea5bf0cc481bc58bae2577add9b1324246e12ac5ddb16d3.lean/declarations/mem-idealofset--b04b96bf9e220903b153464c.md) | 113 | `result-track:b04b96bf9e220903b153464c9d8863bff059014165edfde4afc37a711260916d` |
| 4 | `theorem` | [not_mem_idealOfSet](../../../../../mathematics/Topology/GeneralTopology/Ideals/Variant483811e2c69210365ea5bf0cc481bc58bae2577add9b1324246e12ac5ddb16d3.lean/declarations/not-mem-idealofset--1f13d6d419d114c4f634bd43.md) | 118 | `result-track:1f13d6d419d114c4f634bd4366c0c32472d9bd53b9603554e4506e7dd673f7ca` |
| 5 | `def` | [setOfIdeal](../../../../../mathematics/Topology/GeneralTopology/Ideals/Variant483811e2c69210365ea5bf0cc481bc58bae2577add9b1324246e12ac5ddb16d3.lean/declarations/setofideal--53ebe383eff7211c008c9b1f.md) | 124 | `declaration-track:53ebe383eff7211c008c9b1fa245014813b8b52c60fabe7cec346958d0ed1c5b` |
| 6 | `theorem` | [not_mem_setOfIdeal](../../../../../mathematics/Topology/GeneralTopology/Ideals/Variant483811e2c69210365ea5bf0cc481bc58bae2577add9b1324246e12ac5ddb16d3.lean/declarations/not-mem-setofideal--eadaedbe6bb486d5b8894fe5.md) | 128 | `result-track:eadaedbe6bb486d5b8894fe59cf0aa0f81c22ea51ee15ad041ce7578bc75ccaf` |
| 7 | `theorem` | [mem_setOfIdeal](../../../../../mathematics/Topology/GeneralTopology/Ideals/Variant483811e2c69210365ea5bf0cc481bc58bae2577add9b1324246e12ac5ddb16d3.lean/declarations/mem-setofideal--171de1cee6564c475ac210ff.md) | 133 | `result-track:171de1cee6564c475ac210ff88809dab43cb18ae3f78189c919ca6f68a205276` |
| 8 | `theorem` | [setOfIdeal_open](../../../../../mathematics/Topology/GeneralTopology/Ideals/Variant483811e2c69210365ea5bf0cc481bc58bae2577add9b1324246e12ac5ddb16d3.lean/declarations/setofideal-open--e581c5b7def1d78d8cb32eac.md) | 138 | `result-track:e581c5b7def1d78d8cb32eac04d42928e8ae3d1d84ea5b2a9a0528aca87f2aa1` |
| 9 | `def` | [opensOfIdeal](../../../../../mathematics/Topology/GeneralTopology/Ideals/Variant483811e2c69210365ea5bf0cc481bc58bae2577add9b1324246e12ac5ddb16d3.lean/declarations/opensofideal--9024b91f17afe372c291c212.md) | 147 | `declaration-track:9024b91f17afe372c291c2125205ac28b5e0c21b99a7c0e38925efeca3506186` |
| 10 | `theorem` | [setOfTop_eq_univ](../../../../../mathematics/Topology/GeneralTopology/Ideals/Variant483811e2c69210365ea5bf0cc481bc58bae2577add9b1324246e12ac5ddb16d3.lean/declarations/setoftop-eq-univ--23faaf8d5f41743d3d78d7fc.md) | 152 | `result-track:23faaf8d5f41743d3d78d7fca0af58977c8f0d5ad2e0fc1ba823775742fcc3e9` |
| 11 | `theorem` | [idealOfEmpty_eq_bot](../../../../../mathematics/Topology/GeneralTopology/Ideals/Variant483811e2c69210365ea5bf0cc481bc58bae2577add9b1324246e12ac5ddb16d3.lean/declarations/idealofempty-eq-bot--491588e4edf9ac721a84fd1f.md) | 157 | `result-track:491588e4edf9ac721a84fd1fd66988991a67d7d09bd2f6a529661dd92ab89712` |
| 12 | `theorem` | [mem_idealOfSet_compl_singleton](../../../../../mathematics/Topology/GeneralTopology/Ideals/Variant483811e2c69210365ea5bf0cc481bc58bae2577add9b1324246e12ac5ddb16d3.lean/declarations/mem-idealofset-compl-singleton--194b9785965ab8daa580a44b.md) | 164 | `result-track:194b9785965ab8daa580a44bff0c5bef5b1e0e9a03b279113a3954bbbe69f475` |
| 13 | `theorem` | [ideal_gc](../../../../../mathematics/Topology/GeneralTopology/Ideals/Variant483811e2c69210365ea5bf0cc481bc58bae2577add9b1324246e12ac5ddb16d3.lean/declarations/ideal-gc--ae78efcc1964ed3398f659cb.md) | 171 | `result-track:ae78efcc1964ed3398f659cb08453f71430da87f44e679f0999f954697af2652` |
| 14 | `theorem` | [exists_mul_le_one_eqOn_ge](../../../../../mathematics/Topology/GeneralTopology/Ideals/Variant483811e2c69210365ea5bf0cc481bc58bae2577add9b1324246e12ac5ddb16d3.lean/declarations/exists-mul-le-one-eqon-ge--6ac28f2559922947252ddea7.md) | 191 | `result-track:6ac28f2559922947252ddea7569bced009b38e8b3a75e3512672f57aab5376b3` |
| 15 | `theorem` | [idealOfSet_ofIdeal_eq_closure](../../../../../mathematics/Topology/GeneralTopology/Ideals/Variant483811e2c69210365ea5bf0cc481bc58bae2577add9b1324246e12ac5ddb16d3.lean/declarations/idealofset-ofideal-eq-closure--0d8a59cfc95f63f1e5bf8686.md) | 207 | `result-track:0d8a59cfc95f63f1e5bf8686494255d578942ee4b0c74ea80b9925dc59de1d2f` |
| 16 | `theorem` | [idealOfSet_ofIdeal_isClosed](../../../../../mathematics/Topology/GeneralTopology/Ideals/Variant483811e2c69210365ea5bf0cc481bc58bae2577add9b1324246e12ac5ddb16d3.lean/declarations/idealofset-ofideal-isclosed--76bac08db81c90f84239d001.md) | 314 | `result-track:76bac08db81c90f84239d001abf452d1ba546405cca9ef5dd5ab15d2cb251f6a` |
| 17 | `theorem` | [setOfIdeal_ofSet_eq_interior](../../../../../mathematics/Topology/GeneralTopology/Ideals/Variant483811e2c69210365ea5bf0cc481bc58bae2577add9b1324246e12ac5ddb16d3.lean/declarations/setofideal-ofset-eq-interior--39cbb5d9ccc924ae90c020f2.md) | 322 | `result-track:39cbb5d9ccc924ae90c020f2908cd6b2567536054aaeb63f95e97ffc42d01e78` |
| 18 | `theorem` | [setOfIdeal_ofSet_of_isOpen](../../../../../mathematics/Topology/GeneralTopology/Ideals/Variant483811e2c69210365ea5bf0cc481bc58bae2577add9b1324246e12ac5ddb16d3.lean/declarations/setofideal-ofset-of-isopen--fcaf1a6f200f8c9144d1f7dd.md) | 345 | `result-track:fcaf1a6f200f8c9144d1f7ddc7df8cbc4fc032a6a4fe4de3b781e83f82347914` |
| 19 | `def` | [idealOpensGI](../../../../../mathematics/Topology/GeneralTopology/Ideals/Variant483811e2c69210365ea5bf0cc481bc58bae2577add9b1324246e12ac5ddb16d3.lean/declarations/idealopensgi--1cb54776c2adc4195f07ab27.md) | 354 | `declaration-track:1cb54776c2adc4195f07ab27050466e745fe4c1db6727a11e49446334b15b95d` |
| 20 | `theorem` | [idealOfSet_isMaximal_iff](../../../../../mathematics/Topology/GeneralTopology/Ideals/Variant483811e2c69210365ea5bf0cc481bc58bae2577add9b1324246e12ac5ddb16d3.lean/declarations/idealofset-ismaximal-iff--f0a23d4a386bf1d6dac00a6e.md) | 369 | `result-track:f0a23d4a386bf1d6dac00a6e96a0e0e78829facc38a77fd8745e0d02c88924aa` |
| 21 | `theorem` | [idealOf_compl_singleton_isMaximal](../../../../../mathematics/Topology/GeneralTopology/Ideals/Variant483811e2c69210365ea5bf0cc481bc58bae2577add9b1324246e12ac5ddb16d3.lean/declarations/idealof-compl-singleton-ismaximal--cf52f40e83a79ea777ffb023.md) | 377 | `result-track:cf52f40e83a79ea777ffb023b33440064bd824e709a58dd039a1e2ab1c290983` |
| 22 | `theorem` | [setOfIdeal_eq_compl_singleton](../../../../../mathematics/Topology/GeneralTopology/Ideals/Variant483811e2c69210365ea5bf0cc481bc58bae2577add9b1324246e12ac5ddb16d3.lean/declarations/setofideal-eq-compl-singleton--439422d197988623a5ff1f02.md) | 383 | `result-track:439422d197988623a5ff1f02394aa3fe3caf9cb37aa5e2f18b36021b19dac6e6` |
| 23 | `theorem` | [ideal_isMaximal_iff](../../../../../mathematics/Topology/GeneralTopology/Ideals/Variant483811e2c69210365ea5bf0cc481bc58bae2577add9b1324246e12ac5ddb16d3.lean/declarations/ideal-ismaximal-iff--48deab8c03847d308647bd27.md) | 391 | `result-track:48deab8c03847d308647bd278313aeba49e5efa3798ee2ad5083a3cace59763b` |
| 24 | `def` | [continuousMapEval](../../../../../mathematics/Topology/GeneralTopology/Ideals/Variant483811e2c69210365ea5bf0cc481bc58bae2577add9b1324246e12ac5ddb16d3.lean/declarations/continuousmapeval--3697d6169141e6dabf59cd09.md) | 425 | `declaration-track:3697d6169141e6dabf59cd094c0567b6fd3b3c1764ef1c23740d8bdbaf2fd69d` |
| 25 | `theorem` | [continuousMapEval_apply_apply](../../../../../mathematics/Topology/GeneralTopology/Ideals/Variant483811e2c69210365ea5bf0cc481bc58bae2577add9b1324246e12ac5ddb16d3.lean/declarations/continuousmapeval-apply-apply--2afb3d10690c508cccf0f33c.md) | 436 | `result-track:2afb3d10690c508cccf0f33c27d8b7a4c23e45fdda3f9b8a5566a7fd902c5dae` |
| 26 | `theorem` | [continuousMapEval_bijective](../../../../../mathematics/Topology/GeneralTopology/Ideals/Variant483811e2c69210365ea5bf0cc481bc58bae2577add9b1324246e12ac5ddb16d3.lean/declarations/continuousmapeval-bijective--5dda2fdc3ee74c66d6be33c5.md) | 444 | `result-track:5dda2fdc3ee74c66d6be33c5e36c79dd20fa74fcf4659b55683a452e88d701d1` |
| 27 | `def` | [homeoEval](../../../../../mathematics/Topology/GeneralTopology/Ideals/Variant483811e2c69210365ea5bf0cc481bc58bae2577add9b1324246e12ac5ddb16d3.lean/declarations/homeoeval--6281b19cdce6b17070729f0e.md) | 464 | `declaration-track:6281b19cdce6b17070729f0e9e50916414c8f1d09731a87310172f6ae0c4ea03` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
