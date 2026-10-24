# Verification target: GRWTSK.Topology.GeneralTopology.Divisor.Variant7d9dff61455f264e90c92b237e673e2ae2791123c25a13d871ce28e37bb67b06

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8892fe84c8719893454c5228af5c8f9751072e92",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Divisor/Variant7d9dff61455f264e90c92b237e673e2ae2791123c25a13d871ce28e37bb67b06.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Divisor/Variant7d9dff61455f264e90c92b237e673e2ae2791123c25a13d871ce28e37bb67b06.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Divisor/Variant7d9dff61455f264e90c92b237e673e2ae2791123c25a13d871ce28e37bb67b06.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8892fe84c8719893454c5228af5c8f9751072e92`.

Source path: `GRWTSK/Topology/GeneralTopology/Divisor/Variant7d9dff61455f264e90c92b237e673e2ae2791123c25a13d871ce28e37bb67b06.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Divisor/Variant7d9dff61455f264e90c92b237e673e2ae2791123c25a13d871ce28e37bb67b06.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.WithTop.Untop0` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Meromorphic.Order` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.LocallyFinsupp` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [divisor](../../../../../mathematics/Topology/GeneralTopology/Divisor/Variant7d9dff61455f264e90c92b237e673e2ae2791123c25a13d871ce28e37bb67b06.lean/declarations/divisor--f2cb43517a75862541ca00e5.md) | 34 | `declaration-track:f2cb43517a75862541ca00e5bfa5a3f8aa4d8520ebfb003c233e774dac6f5eda` |
| 2 | `theorem` | [divisor_def](../../../../../mathematics/Topology/GeneralTopology/Divisor/Variant7d9dff61455f264e90c92b237e673e2ae2791123c25a13d871ce28e37bb67b06.lean/declarations/divisor-def--f0d8868f604763366d38738d.md) | 55 | `result-track:f0d8868f604763366d38738d15fb0783cc0db090671d60737a452fcb4bfb0297` |
| 3 | `lemma` | [divisor_apply](../../../../../mathematics/Topology/GeneralTopology/Divisor/Variant7d9dff61455f264e90c92b237e673e2ae2791123c25a13d871ce28e37bb67b06.lean/declarations/divisor-apply--73203e5883d45f0dc071409d.md) | 64 | `result-track:73203e5883d45f0dc071409d7ed22fd8f737cf3b6f13fc15039921210e79d627` |
| 4 | `theorem` | [divisor_congr_codiscreteWithin_of_eqOn_compl](../../../../../mathematics/Topology/GeneralTopology/Divisor/Variant7d9dff61455f264e90c92b237e673e2ae2791123c25a13d871ce28e37bb67b06.lean/declarations/divisor-congr-codiscretewithin-of-eqon-compl--975bc4e0f72745d9b1047bff.md) | 75 | `result-track:975bc4e0f72745d9b1047bffee2f9ef766673fb90aaf3fd49ba1066d5985025a` |
| 5 | `theorem` | [divisor_congr_codiscreteWithin](../../../../../mathematics/Topology/GeneralTopology/Divisor/Variant7d9dff61455f264e90c92b237e673e2ae2791123c25a13d871ce28e37bb67b06.lean/declarations/divisor-congr-codiscretewithin--dc55613de68f9c46f40603a0.md) | 94 | `result-track:dc55613de68f9c46f40603a0d2126cc29805f6483777def8b0c59ffce9aeecb0` |
| 6 | `theorem` | [AnalyticOnNhd.divisor_nonneg](../../../../../mathematics/Topology/GeneralTopology/Divisor/Variant7d9dff61455f264e90c92b237e673e2ae2791123c25a13d871ce28e37bb67b06.lean/declarations/analyticonnhd-divisor-nonneg--0484aebc2d91623807968ce8.md) | 117 | `result-track:0484aebc2d91623807968ce82596886dae036cf8e8114a46f453a0f29947561b` |
| 7 | `theorem` | [divisor_smul](../../../../../mathematics/Topology/GeneralTopology/Divisor/Variant7d9dff61455f264e90c92b237e673e2ae2791123c25a13d871ce28e37bb67b06.lean/declarations/divisor-smul--6ab417aaa49533627be2b962.md) | 136 | `result-track:6ab417aaa49533627be2b962af04cfd91958c83684c3aca3edb2f7bb2d14d8d6` |
| 8 | `theorem` | [divisor_mul](../../../../../mathematics/Topology/GeneralTopology/Divisor/Variant7d9dff61455f264e90c92b237e673e2ae2791123c25a13d871ce28e37bb67b06.lean/declarations/divisor-mul--8ce436b28734f6d8307ab457.md) | 156 | `result-track:8ce436b28734f6d8307ab4575391e375d556232c2828b27b2ee6369619040e67` |
| 9 | `theorem` | [divisor_inv](../../../../../mathematics/Topology/GeneralTopology/Divisor/Variant7d9dff61455f264e90c92b237e673e2ae2791123c25a13d871ce28e37bb67b06.lean/declarations/divisor-inv--184ec8d1646cfaa2289d248e.md) | 164 | `result-track:184ec8d1646cfaa2289d248e7b7eb8a24adbd4b63f687c4b2cc2b0e909f88bca` |
| 10 | `theorem` | [divisor_restrict](../../../../../mathematics/Topology/GeneralTopology/Divisor/Variant7d9dff61455f264e90c92b237e673e2ae2791123c25a13d871ce28e37bb67b06.lean/declarations/divisor-restrict--972aad0ed0f455cfb2449433.md) | 175 | `result-track:972aad0ed0f455cfb24494331a5e30d9ad2411632ddb3ed64cef60e9c1887d66` |
| 11 | `theorem` | [negPart_divisor_add_of_analyticNhdOn_right](../../../../../mathematics/Topology/GeneralTopology/Divisor/Variant7d9dff61455f264e90c92b237e673e2ae2791123c25a13d871ce28e37bb67b06.lean/declarations/negpart-divisor-add-of-analyticnhdon-right--26478a1f89f59c1d13a36753.md) | 184 | `result-track:26478a1f89f59c1d13a367532a120514927f32f27752d3066db9a58cb16fa630` |
| 12 | `theorem` | [negPart_divisor_add_of_analyticNhdOn_left](../../../../../mathematics/Topology/GeneralTopology/Divisor/Variant7d9dff61455f264e90c92b237e673e2ae2791123c25a13d871ce28e37bb67b06.lean/declarations/negpart-divisor-add-of-analyticnhdon-left--e76139c3715634cdff2a2815.md) | 206 | `result-track:e76139c3715634cdff2a2815d53c99c7320e47331d26073e41b85b0eaebd7fb8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
