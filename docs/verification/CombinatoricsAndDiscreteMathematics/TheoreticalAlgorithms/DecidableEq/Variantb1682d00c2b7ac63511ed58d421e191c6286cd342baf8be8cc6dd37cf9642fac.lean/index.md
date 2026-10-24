# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.DecidableEq.Variantb1682d00c2b7ac63511ed58d421e191c6286cd342baf8be8cc6dd37cf9642fac

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a4d25cabac4e4ce36415f488dfd8298405f72380",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DecidableEq/Variantb1682d00c2b7ac63511ed58d421e191c6286cd342baf8be8cc6dd37cf9642fac.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DecidableEq/Variantb1682d00c2b7ac63511ed58d421e191c6286cd342baf8be8cc6dd37cf9642fac.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DecidableEq/Variantb1682d00c2b7ac63511ed58d421e191c6286cd342baf8be8cc6dd37cf9642fac.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a4d25cabac4e4ce36415f488dfd8298405f72380`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DecidableEq/Variantb1682d00c2b7ac63511ed58d421e191c6286cd342baf8be8cc6dd37cf9642fac.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DecidableEq/Variantb1682d00c2b7ac63511ed58d421e191c6286cd342baf8be8cc6dd37cf9642fac.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.ByCases` — import line 12; external provider; requires a separately pinned dependency.
- `Init.Classical` — import line 13; external provider; requires a separately pinned dependency.
- `Init.Data.BEq` — import line 14; external provider; requires a separately pinned dependency.
- `Init.Data.Bool` — import line 15; external provider; requires a separately pinned dependency.
- `Init.Data.List.Nat.BEq` — import line 16; external provider; requires a separately pinned dependency.
- `Init.RCases` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [rel_of_isEqvAux](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DecidableEq/Variantb1682d00c2b7ac63511ed58d421e191c6286cd342baf8be8cc6dd37cf9642fac.lean/declarations/rel-of-iseqvaux--20abad4e08c39d0759f123fc.md) | 26 | `result-track:20abad4e08c39d0759f123fcb66e46dd366eb4f3f9940731b416757054e72b53` |
| 2 | `theorem` | [isEqvAux_of_rel](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DecidableEq/Variantb1682d00c2b7ac63511ed58d421e191c6286cd342baf8be8cc6dd37cf9642fac.lean/declarations/iseqvaux-of-rel--9c398f20fff69c75d996e142.md) | 42 | `result-track:9c398f20fff69c75d996e1424edbedc78e87ec649c6ff2cef7e17cff85ba4486` |
| 3 | `theorem` | [rel_of_isEqv](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DecidableEq/Variantb1682d00c2b7ac63511ed58d421e191c6286cd342baf8be8cc6dd37cf9642fac.lean/declarations/rel-of-iseqv--dc0b48855d0aa007f64e4f7c.md) | 51 | `result-track:dc0b48855d0aa007f64e4f7cf27a5b61844f64db90998f75d5cc1edcc2824cab` |
| 4 | `theorem` | [isEqv_iff_rel](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DecidableEq/Variantb1682d00c2b7ac63511ed58d421e191c6286cd342baf8be8cc6dd37cf9642fac.lean/declarations/iseqv-iff-rel--6100b87787cec576c89341f8.md) | 58 | `result-track:6100b87787cec576c89341f8830c76f714c92898d8c3e3a2a960b7178dbc356b` |
| 5 | `theorem` | [isEqv_eq_decide](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DecidableEq/Variantb1682d00c2b7ac63511ed58d421e191c6286cd342baf8be8cc6dd37cf9642fac.lean/declarations/iseqv-eq-decide--44594e12576a0226f0410968.md) | 64 | `result-track:44594e12576a0226f0410968862c588a1aca24e72feca37bc750c36b4ae1395b` |
| 6 | `theorem` | [isEqv_toList](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DecidableEq/Variantb1682d00c2b7ac63511ed58d421e191c6286cd342baf8be8cc6dd37cf9642fac.lean/declarations/iseqv-tolist--bbd68c39e121f53655d5d82f.md) | 78 | `result-track:bbd68c39e121f53655d5d82f64fde1b920aef4745dc446e3ec0371662707c5f2` |
| 7 | `theorem` | [eq_of_isEqv](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DecidableEq/Variantb1682d00c2b7ac63511ed58d421e191c6286cd342baf8be8cc6dd37cf9642fac.lean/declarations/eq-of-iseqv--b5c46f060f6cadcae280e6bf.md) | 81 | `result-track:b5c46f060f6cadcae280e6bf29b733c7baf95769b5a7465b323d9553e5f9b980` |
| 8 | `theorem` | [isEqvAux_self](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DecidableEq/Variantb1682d00c2b7ac63511ed58d421e191c6286cd342baf8be8cc6dd37cf9642fac.lean/declarations/iseqvaux-self--93e4ed065577a513c2856ac0.md) | 85 | `result-track:93e4ed065577a513c2856ac060b61a97e0352db6146f402f0f3564ae557bc036` |
| 9 | `theorem` | [isEqv_self_beq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DecidableEq/Variantb1682d00c2b7ac63511ed58d421e191c6286cd342baf8be8cc6dd37cf9642fac.lean/declarations/iseqv-self-beq--a553e79eaf951b51f1732420.md) | 93 | `result-track:a553e79eaf951b51f173242098ae807ae23328055313eb43a820f8682ff3ab8e` |
| 10 | `theorem` | [isEqv_self](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DecidableEq/Variantb1682d00c2b7ac63511ed58d421e191c6286cd342baf8be8cc6dd37cf9642fac.lean/declarations/iseqv-self--b1fbc796a17789caaa53c190.md) | 96 | `result-track:b1fbc796a17789caaa53c19039b5a9d434c2e713da2125db6af265b82cf554ec` |
| 11 | `def` | [instDecidableEqImpl](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DecidableEq/Variantb1682d00c2b7ac63511ed58d421e191c6286cd342baf8be8cc6dd37cf9642fac.lean/declarations/instdecidableeqimpl--fa5429ded7103ebb1076aa09.md) | 99 | `declaration-track:fa5429ded7103ebb1076aa09f242e997a028907e070051e2ef03c47944a3a4ea` |
| 12 | `instance` | [instDecidableEq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DecidableEq/Variantb1682d00c2b7ac63511ed58d421e191c6286cd342baf8be8cc6dd37cf9642fac.lean/declarations/instdecidableeq--7e479892a92d10ddf05fba17.md) | 104 | `declaration-track:7e479892a92d10ddf05fba174dd8420450376a6490cce4a0014c9cfc48f029bc` |
| 13 | `theorem` | [instDecidableEq_csimp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DecidableEq/Variantb1682d00c2b7ac63511ed58d421e191c6286cd342baf8be8cc6dd37cf9642fac.lean/declarations/instdecidableeq-csimp--c95927c0ddb772c3f1fce176.md) | 116 | `result-track:c95927c0ddb772c3f1fce176f969d597382eb0ea3c502f1eb2338615aa178d23` |
| 14 | `instance` | [instDecidableEqEmp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DecidableEq/Variantb1682d00c2b7ac63511ed58d421e191c6286cd342baf8be8cc6dd37cf9642fac.lean/declarations/instdecidableeqemp--0f848e953b4cbfbaddcc2377.md) | 122 | `declaration-track:0f848e953b4cbfbaddcc23771eb3a9a4062df7f9afde0d9997b5bedc20efa4a5` |
| 15 | `instance` | [instDecidableEmpEq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DecidableEq/Variantb1682d00c2b7ac63511ed58d421e191c6286cd342baf8be8cc6dd37cf9642fac.lean/declarations/instdecidableempeq--fce3efdbbc5b9b1e567fae15.md) | 130 | `declaration-track:fce3efdbbc5b9b1e567fae151fe135e09025cc1f7b86ed01fb3d78b266122d81` |
| 16 | `def` | [instDecidableEqEmpImpl](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DecidableEq/Variantb1682d00c2b7ac63511ed58d421e191c6286cd342baf8be8cc6dd37cf9642fac.lean/declarations/instdecidableeqempimpl--b14fc846fd66fba7076d9832.md) | 136 | `declaration-track:b14fc846fd66fba7076d983273aedf893255aee718cfbbe4f2b4708379a26bd3` |
| 17 | `def` | [instDecidableEmpEqImpl](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DecidableEq/Variantb1682d00c2b7ac63511ed58d421e191c6286cd342baf8be8cc6dd37cf9642fac.lean/declarations/instdecidableempeqimpl--e274abd619f15cee4edfd2cf.md) | 140 | `declaration-track:e274abd619f15cee4edfd2cf81a8277d2680f7d5439633238ef2fbb251ed9aa4` |
| 18 | `theorem` | [instDecidableEqEmp_csimp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DecidableEq/Variantb1682d00c2b7ac63511ed58d421e191c6286cd342baf8be8cc6dd37cf9642fac.lean/declarations/instdecidableeqemp-csimp--7a03a284626293e02021693d.md) | 144 | `result-track:7a03a284626293e02021693d0fe87da15ab504a5fad92a5455b9e19534afdd2e` |
| 19 | `theorem` | [instDecidableEmpEq_csimp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DecidableEq/Variantb1682d00c2b7ac63511ed58d421e191c6286cd342baf8be8cc6dd37cf9642fac.lean/declarations/instdecidableempeq-csimp--ec0d31502f1d83e6e494d8f9.md) | 148 | `result-track:ec0d31502f1d83e6e494d8f9088899d831a2fe101bbe9100be035e4eecda9d1e` |
| 20 | `theorem` | [beq_eq_decide](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DecidableEq/Variantb1682d00c2b7ac63511ed58d421e191c6286cd342baf8be8cc6dd37cf9642fac.lean/declarations/beq-eq-decide--43b125fd8027c5431d7436db.md) | 151 | `result-track:43b125fd8027c5431d7436db2932a049300681a8993aba7c598c62e88d55e938` |
| 21 | `theorem` | [beq_toList](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DecidableEq/Variantb1682d00c2b7ac63511ed58d421e191c6286cd342baf8be8cc6dd37cf9642fac.lean/declarations/beq-tolist--8ad7a7d5ac47b9e5df13cab7.md) | 156 | `result-track:8ad7a7d5ac47b9e5df13cab7cd9412e9084a8ba99c2fb1eda3ced34014cd0254` |
| 22 | `theorem` | [isEqv_toArray](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DecidableEq/Variantb1682d00c2b7ac63511ed58d421e191c6286cd342baf8be8cc6dd37cf9642fac.lean/declarations/iseqv-toarray--80784ced9e0d3cbc366f2e1d.md) | 163 | `result-track:80784ced9e0d3cbc366f2e1d34a2f7bc1e8014cac3ce850fc7aaf0699502af3e` |
| 23 | `theorem` | [beq_toArray](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DecidableEq/Variantb1682d00c2b7ac63511ed58d421e191c6286cd342baf8be8cc6dd37cf9642fac.lean/declarations/beq-toarray--bc7777f61f2a4b4da6975f34.md) | 166 | `result-track:bc7777f61f2a4b4da6975f34db79e7fc96c3d18e506c8741cf192d4c41edb300` |
| 24 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DecidableEq/Variantb1682d00c2b7ac63511ed58d421e191c6286cd342baf8be8cc6dd37cf9642fac.lean/declarations/instance--6e37e15db8c5ff80fafc99af.md) | 173 | `declaration-track:6e37e15db8c5ff80fafc99af9f25dd0055137b720c2b2255c8db692c976f3146` |
| 25 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DecidableEq/Variantb1682d00c2b7ac63511ed58d421e191c6286cd342baf8be8cc6dd37cf9642fac.lean/declarations/instance--1259ab56d8f606ba4e511725.md) | 176 | `declaration-track:1259ab56d8f606ba4e511725ea2df052954e92fd0b5d7d1379bf8ef4a5528a2f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
