# Verification target: GRWTSK.Topology.GeneralTopology.Lemmas.Variant1ab453cfb42e700061f49463aaf8e4004ddebbfb0d3b375438f6e4c6cc31af7b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5155cf16e699ca4b95ddab6655e085af8f4f7b1d",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Lemmas/Variant1ab453cfb42e700061f49463aaf8e4004ddebbfb0d3b375438f6e4c6cc31af7b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variant1ab453cfb42e700061f49463aaf8e4004ddebbfb0d3b375438f6e4c6cc31af7b.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variant1ab453cfb42e700061f49463aaf8e4004ddebbfb0d3b375438f6e4c6cc31af7b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5155cf16e699ca4b95ddab6655e085af8f4f7b1d`.

Source path: `GRWTSK/Topology/GeneralTopology/Lemmas/Variant1ab453cfb42e700061f49463aaf8e4004ddebbfb0d3b375438f6e4c6cc31af7b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Lemmas/Variant1ab453cfb42e700061f49463aaf8e4004ddebbfb0d3b375438f6e4c6cc31af7b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Monoid.Canonical.Basic` — import line 18; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.InfiniteSum.Order` — import line 19; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Real.isTopologicalBasis_Ioo_rat](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variant1ab453cfb42e700061f49463aaf8e4004ddebbfb0d3b375438f6e4c6cc31af7b.lean/declarations/real-istopologicalbasis-ioo-rat--8b82daf8310171c1f715ab0f.md) | 41 | `result-track:8b82daf8310171c1f715ab0fb5ee224c01d6aaa169f0a6c49284c86c6de14381` |
| 2 | `theorem` | [Real.mem_closure_iff](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variant1ab453cfb42e700061f49463aaf8e4004ddebbfb0d3b375438f6e4c6cc31af7b.lean/declarations/real-mem-closure-iff--2b6b68b42cebd963d679802d.md) | 59 | `result-track:2b6b68b42cebd963d679802dc3f98b9f8fefbd99493e861c6d3797c8fe1d2da9` |
| 3 | `theorem` | [Real.uniformContinuous_inv](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variant1ab453cfb42e700061f49463aaf8e4004ddebbfb0d3b375438f6e4c6cc31af7b.lean/declarations/real-uniformcontinuous-inv--2978ebe186d07f0bc67a9efc.md) | 63 | `result-track:2978ebe186d07f0bc67a9efce1510b98b735b000753d495f81d041e25a43f9c1` |
| 4 | `theorem` | [Real.uniformContinuous_abs](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variant1ab453cfb42e700061f49463aaf8e4004ddebbfb0d3b375438f6e4c6cc31af7b.lean/declarations/real-uniformcontinuous-abs--ac5ace0c22eda2dbe6dc999d.md) | 69 | `result-track:ac5ace0c22eda2dbe6dc999d401d8479c19e71e1760b50d736d18e178719155c` |
| 5 | `theorem` | [Real.continuous_inv](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variant1ab453cfb42e700061f49463aaf8e4004ddebbfb0d3b375438f6e4c6cc31af7b.lean/declarations/real-continuous-inv--808723dec60f394190429222.md) | 73 | `result-track:808723dec60f394190429222224437e1f6e25efd410aad9e0f7781ea388507d5` |
| 6 | `theorem` | [Real.uniformContinuous_mul](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variant1ab453cfb42e700061f49463aaf8e4004ddebbfb0d3b375438f6e4c6cc31af7b.lean/declarations/real-uniformcontinuous-mul--e86b063e9c8987458864d970.md) | 76 | `result-track:e86b063e9c8987458864d9701f66f3a5cb518f3de37d26b591823b533cb4e0f6` |
| 7 | `theorem` | [Real.totallyBounded_ball](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variant1ab453cfb42e700061f49463aaf8e4004ddebbfb0d3b375438f6e4c6cc31af7b.lean/declarations/real-totallybounded-ball--107527297e0f033b1b466a38.md) | 85 | `result-track:107527297e0f033b1b466a385a1c9b831837304d74e32c80fbbb2ee4378978dc` |
| 8 | `theorem` | [Real.subfield_eq_of_closed](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variant1ab453cfb42e700061f49463aaf8e4004ddebbfb0d3b375438f6e4c6cc31af7b.lean/declarations/real-subfield-eq-of-closed--48c3f9c21f8322edd4a505bf.md) | 88 | `result-track:48c3f9c21f8322edd4a505bf36f0137229737925bb9c725f5e008e546f6b7f02` |
| 9 | `theorem` | [Real.exists_seq_rat_strictMono_tendsto](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variant1ab453cfb42e700061f49463aaf8e4004ddebbfb0d3b375438f6e4c6cc31af7b.lean/declarations/real-exists-seq-rat-strictmono-tendsto--f36747f860c143144fae8a9b.md) | 94 | `result-track:f36747f860c143144fae8a9b6301106162adfabba9c7a49d66f5563dc1f53b3d` |
| 10 | `theorem` | [Real.exists_seq_rat_strictAnti_tendsto](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variant1ab453cfb42e700061f49463aaf8e4004ddebbfb0d3b375438f6e4c6cc31af7b.lean/declarations/real-exists-seq-rat-strictanti-tendsto--cf7203d4a2a4b141efe1dd45.md) | 98 | `result-track:cf7203d4a2a4b141efe1dd45f9420fad458257bdc93c6e8b79adfe7c472b752e` |
| 11 | `theorem` | [closure_ordConnected_inter_rat](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variant1ab453cfb42e700061f49463aaf8e4004ddebbfb0d3b375438f6e4c6cc31af7b.lean/declarations/closure-ordconnected-inter-rat--83ee84abd7b2986af2dea9fc.md) | 104 | `result-track:83ee84abd7b2986af2dea9fc9fdbb0471e509e6d9f40f9f1fb86a81cc0de6f9f` |
| 12 | `theorem` | [closure_of_rat_image_lt](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variant1ab453cfb42e700061f49463aaf8e4004ddebbfb0d3b375438f6e4c6cc31af7b.lean/declarations/closure-of-rat-image-lt--57bf296db90614d9f549f426.md) | 119 | `result-track:57bf296db90614d9f549f426bcc2f5df1fb1bc22e5309eea42443fcb8c524f3e` |
| 13 | `theorem` | [Periodic.compact_of_continuous](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variant1ab453cfb42e700061f49463aaf8e4004ddebbfb0d3b375438f6e4c6cc31af7b.lean/declarations/periodic-compact-of-continuous--208a88fc244a4e994bfb17e1.md) | 145 | `result-track:208a88fc244a4e994bfb17e1aa534bb28155419626eeca7dc71d9e1af28ac50a` |
| 14 | `theorem` | [Periodic.isBounded_of_continuous](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variant1ab453cfb42e700061f49463aaf8e4004ddebbfb0d3b375438f6e4c6cc31af7b.lean/declarations/periodic-isbounded-of-continuous--6c2f7f5489edc659f7b8a5c7.md) | 151 | `result-track:6c2f7f5489edc659f7b8a5c74ee6f099e473fd9966866314e828031a5af9d568` |
| 15 | `theorem` | [Real.tendsto_atTop_csSup_of_monotoneOn_bddAbove_nat_Ici](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variant1ab453cfb42e700061f49463aaf8e4004ddebbfb0d3b375438f6e4c6cc31af7b.lean/declarations/real-tendsto-attop-cssup-of-monotoneon-bddabove-nat-ici--0012a8d0fd9e561f9ec07cbc.md) | 165 | `result-track:0012a8d0fd9e561f9ec07cbcdd65d7e91fcc5b1730f0fa1e8462772bfe134b03` |
| 16 | `theorem` | [Real.tendsto_atTop_csInf_of_antitoneOn_bddBelow_nat_Ici](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variant1ab453cfb42e700061f49463aaf8e4004ddebbfb0d3b375438f6e4c6cc31af7b.lean/declarations/real-tendsto-attop-csinf-of-antitoneon-bddbelow-nat-ici--087eb601c1ae7cf2bfdfd7d2.md) | 175 | `result-track:087eb601c1ae7cf2bfdfd7d2dbb7a883bdf8524aa729cd5299a4693f76486332` |
| 17 | `theorem` | [Real.isLUB_of_tendsto_monotone_bddAbove](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variant1ab453cfb42e700061f49463aaf8e4004ddebbfb0d3b375438f6e4c6cc31af7b.lean/declarations/real-islub-of-tendsto-monotone-bddabove--3c24ea3fb7e4d09c50c7e176.md) | 187 | `result-track:3c24ea3fb7e4d09c50c7e1766f8d8e19708770dd0471446b10fc2ff4d807655e` |
| 18 | `theorem` | [Real.isGLB_of_tendsto_antitone_bddBelow](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variant1ab453cfb42e700061f49463aaf8e4004ddebbfb0d3b375438f6e4c6cc31af7b.lean/declarations/real-isglb-of-tendsto-antitone-bddbelow--722e7f92d99ec380af659384.md) | 195 | `result-track:722e7f92d99ec380af659384540c2e2e4a78c974066ec690964723405406df10` |
| 19 | `theorem` | [Real.isLUB_of_tendsto_monotoneOn_bddAbove_nat_Ici](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variant1ab453cfb42e700061f49463aaf8e4004ddebbfb0d3b375438f6e4c6cc31af7b.lean/declarations/real-islub-of-tendsto-monotoneon-bddabove-nat-ici--46acc202528f2e32a4052881.md) | 203 | `result-track:46acc202528f2e32a4052881501f35be20d294e67b173309fb992fcb0c872174` |
| 20 | `theorem` | [Real.isGLB_of_tendsto_antitoneOn_bddBelow_nat_Ici](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variant1ab453cfb42e700061f49463aaf8e4004ddebbfb0d3b375438f6e4c6cc31af7b.lean/declarations/real-isglb-of-tendsto-antitoneon-bddbelow-nat-ici--204af9388a9273b9bc858548.md) | 212 | `result-track:204af9388a9273b9bc858548ba1b9f1f13b7f14290b5bce33a0f2dd34e0d948f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
