# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Interval.Variant7e4c2c246c46de7099c7b0265851e5a2049e49003e585c8e1997dc1eca0fc97b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3449ad4fb57c31a21810417e32782444fabb15ef",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Interval/Variant7e4c2c246c46de7099c7b0265851e5a2049e49003e585c8e1997dc1eca0fc97b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Interval/Variant7e4c2c246c46de7099c7b0265851e5a2049e49003e585c8e1997dc1eca0fc97b.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Interval/Variant7e4c2c246c46de7099c7b0265851e5a2049e49003e585c8e1997dc1eca0fc97b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3449ad4fb57c31a21810417e32782444fabb15ef`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Interval/Variant7e4c2c246c46de7099c7b0265851e5a2049e49003e585c8e1997dc1eca0fc97b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Interval/Variant7e4c2c246c46de7099c7b0265851e5a2049e49003e585c8e1997dc1eca0fc97b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Group.Nat` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Nat` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [forallB](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Interval/Variant7e4c2c246c46de7099c7b0265851e5a2049e49003e585c8e1997dc1eca0fc97b.lean/declarations/forallb--0acba1fb25083cd3672ee65d.md) | 27 | `declaration-track:0acba1fb25083cd3672ee65defb4299e9fb830d6f6306209a278f382053a9b76` |
| 2 | `theorem` | [forallB_iff_range'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Interval/Variant7e4c2c246c46de7099c7b0265851e5a2049e49003e585c8e1997dc1eca0fc97b.lean/declarations/forallb-iff-range--c41cd035fa71ef45f7dba49f.md) | 31 | `result-track:c41cd035fa71ef45f7dba49f51b4bb343da7949503184fdccd3284737cd54d4d` |
| 3 | `theorem` | [forallB_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Interval/Variant7e4c2c246c46de7099c7b0265851e5a2049e49003e585c8e1997dc1eca0fc97b.lean/declarations/forallb-iff--66581e7f718dcf6d22f0a8f0.md) | 46 | `result-track:66581e7f718dcf6d22f0a8f0ab376fa25144d181229f463afe31867de3d41a80` |
| 4 | `theorem` | [forallB_iff'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Interval/Variant7e4c2c246c46de7099c7b0265851e5a2049e49003e585c8e1997dc1eca0fc97b.lean/declarations/forallb-iff--4c99ba168241240001e7341f.md) | 50 | `result-track:4c99ba168241240001e7341f2538056d5b0469658fdac48923432bdf1549f3b5` |
| 5 | `theorem` | [forallB_one_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Interval/Variant7e4c2c246c46de7099c7b0265851e5a2049e49003e585c8e1997dc1eca0fc97b.lean/declarations/forallb-one-iff--f1d841315947fe26c8e78e37.md) | 56 | `result-track:f1d841315947fe26c8e78e3782ee733f960b6b4c51c3fcad6819b6be698fddb9` |
| 6 | `theorem` | [forall_start](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Interval/Variant7e4c2c246c46de7099c7b0265851e5a2049e49003e585c8e1997dc1eca0fc97b.lean/declarations/forall-start--a99f4d4c8f54e5654492a422.md) | 65 | `result-track:a99f4d4c8f54e5654492a422cb6d0c612824802be41cf275633b0c169042fe7e` |
| 7 | `theorem` | [forall_step](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Interval/Variant7e4c2c246c46de7099c7b0265851e5a2049e49003e585c8e1997dc1eca0fc97b.lean/declarations/forall-step--b65e15e16ecb5d6aa5875635.md) | 69 | `result-track:b65e15e16ecb5d6aa5875635e6cf15389949c4af218be05b8ce783d2d6a48184` |
| 8 | `theorem` | [forall_bisect](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Interval/Variant7e4c2c246c46de7099c7b0265851e5a2049e49003e585c8e1997dc1eca0fc97b.lean/declarations/forall-bisect--2d7ec818b0d7249a988d4d91.md) | 74 | `result-track:2d7ec818b0d7249a988d4d91e87f0f1506149c0b94a9b12c56a620672f4e6561` |
| 9 | `theorem` | [forall_succ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Interval/Variant7e4c2c246c46de7099c7b0265851e5a2049e49003e585c8e1997dc1eca0fc97b.lean/declarations/forall-succ--682288591745ec29195b6da0.md) | 80 | `result-track:682288591745ec29195b6da02b5d2ab25dd0e087a0f4f53629628c15cbc20dac` |
| 10 | `theorem` | [forall_last](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Interval/Variant7e4c2c246c46de7099c7b0265851e5a2049e49003e585c8e1997dc1eca0fc97b.lean/declarations/forall-last--319359206cbb10bfdcd27e74.md) | 85 | `result-track:319359206cbb10bfdcd27e74fe2e62d2e15967960ee11de9d38a33549fa1d954` |
| 11 | `theorem` | [forall_exceed](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Interval/Variant7e4c2c246c46de7099c7b0265851e5a2049e49003e585c8e1997dc1eca0fc97b.lean/declarations/forall-exceed--3892a5307588336a29d4f35b.md) | 89 | `result-track:3892a5307588336a29d4f35ba3a3f16304cd8fc13a6e746e6e87c2427a96b7af` |
| 12 | `theorem` | [forall_mod_start](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Interval/Variant7e4c2c246c46de7099c7b0265851e5a2049e49003e585c8e1997dc1eca0fc97b.lean/declarations/forall-mod-start--855251b126d59a0dc0c30f27.md) | 98 | `result-track:855251b126d59a0dc0c30f27172f4311506748feb1b941c7aa22310e1ac00b19` |
| 13 | `theorem` | [forall_mod_step](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Interval/Variant7e4c2c246c46de7099c7b0265851e5a2049e49003e585c8e1997dc1eca0fc97b.lean/declarations/forall-mod-step--949c24f113337881b4292673.md) | 103 | `result-track:949c24f113337881b42926732fa2cde1c619ba062db1a499e04a5d8579edba14` |
| 14 | `theorem` | [forall_mod_succ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Interval/Variant7e4c2c246c46de7099c7b0265851e5a2049e49003e585c8e1997dc1eca0fc97b.lean/declarations/forall-mod-succ--ac8a88a777bf835339e95251.md) | 115 | `result-track:ac8a88a777bf835339e95251d0d0e91c64f6e431f8b5260521522982aaf2f797` |
| 15 | `theorem` | [forall_mod_bisect](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Interval/Variant7e4c2c246c46de7099c7b0265851e5a2049e49003e585c8e1997dc1eca0fc97b.lean/declarations/forall-mod-bisect--44e1692d20ba5d5b9064143b.md) | 121 | `result-track:44e1692d20ba5d5b9064143bbb83f909d306106542b8d6229a08d472acfd09ee` |
| 16 | `theorem` | [forall_mod_exceed](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Interval/Variant7e4c2c246c46de7099c7b0265851e5a2049e49003e585c8e1997dc1eca0fc97b.lean/declarations/forall-mod-exceed--e4d8a367ae744a7e613ac793.md) | 128 | `result-track:e4d8a367ae744a7e613ac79313839bdcf9371e02a18910704b39efffb2e7ee39` |
| 17 | `def` | [makeForallBisectLoHi](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Interval/Variant7e4c2c246c46de7099c7b0265851e5a2049e49003e585c8e1997dc1eca0fc97b.lean/declarations/makeforallbisectlohi--d0f7f7cc1b319e0a0cb00084.md) | 142 | `declaration-track:d0f7f7cc1b319e0a0cb00084f565795745f612b0e066d0b780fc6f6392f9da99` |
| 18 | `def` | [makeForallBisectHi](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Interval/Variant7e4c2c246c46de7099c7b0265851e5a2049e49003e585c8e1997dc1eca0fc97b.lean/declarations/makeforallbisecthi--a273b74de4823c9dd44a8ffd.md) | 152 | `declaration-track:a273b74de4823c9dd44a8ffd822a946f903098768335b38920d833a17f960be5` |
| 19 | `def` | [makeForallModBisectLoHi](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Interval/Variant7e4c2c246c46de7099c7b0265851e5a2049e49003e585c8e1997dc1eca0fc97b.lean/declarations/makeforallmodbisectlohi--c9a53490ea8301d3b667270f.md) | 157 | `declaration-track:c9a53490ea8301d3b667270f334f7ad17a5dc1350d8d573cf200fabaacc3ae1a` |
| 20 | `def` | [makeForallModBisectHi](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Interval/Variant7e4c2c246c46de7099c7b0265851e5a2049e49003e585c8e1997dc1eca0fc97b.lean/declarations/makeforallmodbisecthi--6e00808ed29baeaa75a4e981.md) | 169 | `declaration-track:6e00808ed29baeaa75a4e98169e2a4380f218bcc57b02de65164635057084ff8` |
| 21 | `elab` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Interval/Variant7e4c2c246c46de7099c7b0265851e5a2049e49003e585c8e1997dc1eca0fc97b.lean/declarations/elab--35c9577bc692fda831d87967.md) | 193 | `declaration-track:35c9577bc692fda831d879674e392622de8d77de03df265ca6a14fafbd56fd13` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
