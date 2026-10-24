# Verification target: GRWTSK.Topology.GeneralTopology.Limit.Variant62ef088d979646e908ad6ca68ac3802910e766f2db39b4d29d17c7f30568edb6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cda6e857c4519f68e3b0b8316424556232e98b76",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Limit/Variant62ef088d979646e908ad6ca68ac3802910e766f2db39b4d29d17c7f30568edb6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Limit/Variant62ef088d979646e908ad6ca68ac3802910e766f2db39b4d29d17c7f30568edb6.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Limit/Variant62ef088d979646e908ad6ca68ac3802910e766f2db39b4d29d17c7f30568edb6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cda6e857c4519f68e3b0b8316424556232e98b76`.

Source path: `GRWTSK/Topology/GeneralTopology/Limit/Variant62ef088d979646e908ad6ca68ac3802910e766f2db39b4d29d17c7f30568edb6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Limit/Variant62ef088d979646e908ad6ca68ac3802910e766f2db39b4d29d17c7f30568edb6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.ThmD.Concrete` — import line 17; external provider; requires a separately pinned dependency.
- `Zeta23.Assembly` — import line 18; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [cRatio_star](../../../../../mathematics/Topology/GeneralTopology/Limit/Variant62ef088d979646e908ad6ca68ac3802910e766f2db39b4d29d17c7f30568edb6.lean/declarations/cratio-star--0647558e5a0c6fcf55a13e86.md) | 32 | `result-track:0647558e5a0c6fcf55a13e8616c1404f97768e9a1ee69f9ddff9314e6b2ce332` |
| 2 | `theorem` | [vStar_nonneg_on](../../../../../mathematics/Topology/GeneralTopology/Limit/Variant62ef088d979646e908ad6ca68ac3802910e766f2db39b4d29d17c7f30568edb6.lean/declarations/vstar-nonneg-on--0e39cc896ebae18103aa59bd.md) | 40 | `result-track:0e39cc896ebae18103aa59bd2f1eac160ab8e065f6c06b38991f6d75a264092f` |
| 3 | `theorem` | [jStar_nonneg](../../../../../mathematics/Topology/GeneralTopology/Limit/Variant62ef088d979646e908ad6ca68ac3802910e766f2db39b4d29d17c7f30568edb6.lean/declarations/jstar-nonneg--2e23db3cae917cba36a7f57f.md) | 58 | `result-track:2e23db3cae917cba36a7f57f766a5b57d4e7bd8b7b6d39250793da06e438d281` |
| 4 | `theorem` | [star_denom_pos](../../../../../mathematics/Topology/GeneralTopology/Limit/Variant62ef088d979646e908ad6ca68ac3802910e766f2db39b4d29d17c7f30568edb6.lean/declarations/star-denom-pos--d94ae5d78e50bc9eb0101e4e.md) | 69 | `result-track:d94ae5d78e50bc9eb0101e4e02dbec1f14bbf3db635ed05070357b4433c6a4af` |
| 5 | `theorem` | [eps_form_of_approx](../../../../../mathematics/Topology/GeneralTopology/Limit/Variant62ef088d979646e908ad6ca68ac3802910e766f2db39b4d29d17c7f30568edb6.lean/declarations/eps-form-of-approx--6cd90fa39d3218fb6b033dc8.md) | 81 | `result-track:6cd90fa39d3218fb6b033dc8b489abc020cb2ccc73785133b2f5de91e2b71545` |
| 6 | `theorem` | [approx_of_continuousWithinAt](../../../../../mathematics/Topology/GeneralTopology/Limit/Variant62ef088d979646e908ad6ca68ac3802910e766f2db39b4d29d17c7f30568edb6.lean/declarations/approx-of-continuouswithinat--fd98f409aac27148ec8ceeb1.md) | 98 | `result-track:fd98f409aac27148ec8ceeb1915f82142f9f852620231bebf308a7b73dd787bf` |
| 7 | `theorem` | [one_mem](../../../../../mathematics/Topology/GeneralTopology/Limit/Variant62ef088d979646e908ad6ca68ac3802910e766f2db39b4d29d17c7f30568edb6.lean/declarations/one-mem--583269434c8ee56c9bdfa9f8.md) | 112 | `result-track:583269434c8ee56c9bdfa9f8188f0c25ba76639748f8d4ed826b8ba9bf81a70b` |
| 8 | `theorem` | [eps_form_cStar](../../../../../mathematics/Topology/GeneralTopology/Limit/Variant62ef088d979646e908ad6ca68ac3802910e766f2db39b4d29d17c7f30568edb6.lean/declarations/eps-form-cstar--7e0e3e2945d235e3586effd8.md) | 115 | `result-track:7e0e3e2945d235e3586effd87a7f7df2bb9f7406e3afaee53c96d9ce81a717c7` |
| 9 | `theorem` | [eps_form_twoCStar](../../../../../mathematics/Topology/GeneralTopology/Limit/Variant62ef088d979646e908ad6ca68ac3802910e766f2db39b4d29d17c7f30568edb6.lean/declarations/eps-form-twocstar--69d47e45da803b9cf7f7f050.md) | 122 | `result-track:69d47e45da803b9cf7f7f050654ca8fbf5703b19bfbe85533aac00219244849e` |
| 10 | `theorem` | [eps_form_HD](../../../../../mathematics/Topology/GeneralTopology/Limit/Variant62ef088d979646e908ad6ca68ac3802910e766f2db39b4d29d17c7f30568edb6.lean/declarations/eps-form-hd--d632230460f5b3a6aa640022.md) | 131 | `result-track:d632230460f5b3a6aa640022dda9381a7d64d9c56b65864c3a6fdd4b37ec43f8` |
| 11 | `theorem` | [tendsto_lam1](../../../../../mathematics/Topology/GeneralTopology/Limit/Variant62ef088d979646e908ad6ca68ac3802910e766f2db39b4d29d17c7f30568edb6.lean/declarations/tendsto-lam1--156d45a8259d0fa4b4159cdd.md) | 144 | `result-track:156d45a8259d0fa4b4159cdd2cba4ed65bd1bb464cea0480980f089cec41aa42` |
| 12 | `theorem` | [tendsto_of_close](../../../../../mathematics/Topology/GeneralTopology/Limit/Variant62ef088d979646e908ad6ca68ac3802910e766f2db39b4d29d17c7f30568edb6.lean/declarations/tendsto-of-close--44b5cae279bb71011c70b2ea.md) | 160 | `result-track:44b5cae279bb71011c70b2ea9ba5f3688c9c1464f69b186d32be72d04d5c6990` |
| 13 | `theorem` | [tendsto_aD](../../../../../mathematics/Topology/GeneralTopology/Limit/Variant62ef088d979646e908ad6ca68ac3802910e766f2db39b4d29d17c7f30568edb6.lean/declarations/tendsto-ad--297f82ac3c32e62d3778dae8.md) | 172 | `result-track:297f82ac3c32e62d3778dae8a2afac1e4c6a099dcaa9459a58db10ff19a66241` |
| 14 | `theorem` | [tendsto_bD](../../../../../mathematics/Topology/GeneralTopology/Limit/Variant62ef088d979646e908ad6ca68ac3802910e766f2db39b4d29d17c7f30568edb6.lean/declarations/tendsto-bd--7ad08359a9ffe8764765d939.md) | 179 | `result-track:7ad08359a9ffe8764765d939acd04d8cc87fa647e71ad7c4c5c032270833a9ea` |
| 15 | `theorem` | [tendsto_JD](../../../../../mathematics/Topology/GeneralTopology/Limit/Variant62ef088d979646e908ad6ca68ac3802910e766f2db39b4d29d17c7f30568edb6.lean/declarations/tendsto-jd--7a2f613cf316a1bdac8fa022.md) | 186 | `result-track:7a2f613cf316a1bdac8fa022a3cc9c5cbaaeb586ead052a8b685a139b8668146` |
| 16 | `theorem` | [tendsto_cRatio_of](../../../../../mathematics/Topology/GeneralTopology/Limit/Variant62ef088d979646e908ad6ca68ac3802910e766f2db39b4d29d17c7f30568edb6.lean/declarations/tendsto-cratio-of--076ed1d016acd055013eea08.md) | 196 | `result-track:076ed1d016acd055013eea081792f82a475be9f4375c5d5f100050673c4973a7` |
| 17 | `theorem` | [tendsto_cRatio_concrete](../../../../../mathematics/Topology/GeneralTopology/Limit/Variant62ef088d979646e908ad6ca68ac3802910e766f2db39b4d29d17c7f30568edb6.lean/declarations/tendsto-cratio-concrete--078ef19461296045bb73e650.md) | 215 | `result-track:078ef19461296045bb73e6506c194cac1a8a49844159bdfe915376ce05799251` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
