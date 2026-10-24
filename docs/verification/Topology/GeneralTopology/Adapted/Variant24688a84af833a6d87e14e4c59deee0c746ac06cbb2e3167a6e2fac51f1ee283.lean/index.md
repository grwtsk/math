# Verification target: GRWTSK.Topology.GeneralTopology.Adapted.Variant24688a84af833a6d87e14e4c59deee0c746ac06cbb2e3167a6e2fac51f1ee283

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e785972307b22b73f3ff239abfa030d19d5a3dbe",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Adapted/Variant24688a84af833a6d87e14e4c59deee0c746ac06cbb2e3167a6e2fac51f1ee283.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Adapted/Variant24688a84af833a6d87e14e4c59deee0c746ac06cbb2e3167a6e2fac51f1ee283.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Adapted/Variant24688a84af833a6d87e14e4c59deee0c746ac06cbb2e3167a6e2fac51f1ee283.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e785972307b22b73f3ff239abfa030d19d5a3dbe`.

Source path: `GRWTSK/Topology/GeneralTopology/Adapted/Variant24688a84af833a6d87e14e4c59deee0c746ac06cbb2e3167a6e2fac51f1ee283.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Adapted/Variant24688a84af833a6d87e14e4c59deee0c746ac06cbb2e3167a6e2fac51f1ee283.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Probability.Process.Filtration` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Instances.Discrete` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Adapted](../../../../../mathematics/Topology/GeneralTopology/Adapted/Variant24688a84af833a6d87e14e4c59deee0c746ac06cbb2e3167a6e2fac51f1ee283.lean/declarations/adapted--4a35fffd8edeaf055a890fa0.md) | 47 | `declaration-track:4a35fffd8edeaf055a890fa0402422611995933ca4d16d2815817deb55be9298` |
| 2 | `theorem` | [mul](../../../../../mathematics/Topology/GeneralTopology/Adapted/Variant24688a84af833a6d87e14e4c59deee0c746ac06cbb2e3167a6e2fac51f1ee283.lean/declarations/mul--309f0b308b6f0e83bb9322f7.md) | 53 | `result-track:309f0b308b6f0e83bb9322f7a4423aade2a4c1a0d4e001fb8468edacc305a49d` |
| 3 | `theorem` | [div](../../../../../mathematics/Topology/GeneralTopology/Adapted/Variant24688a84af833a6d87e14e4c59deee0c746ac06cbb2e3167a6e2fac51f1ee283.lean/declarations/div--c1a7e0743f30f68a7cd5d1d6.md) | 57 | `result-track:c1a7e0743f30f68a7cd5d1d64b5760943f589e6f032346fc84c699b679ce1677` |
| 4 | `theorem` | [inv](../../../../../mathematics/Topology/GeneralTopology/Adapted/Variant24688a84af833a6d87e14e4c59deee0c746ac06cbb2e3167a6e2fac51f1ee283.lean/declarations/inv--98c98150a3a42537d5c0aebf.md) | 61 | `result-track:98c98150a3a42537d5c0aebfe25125c6f920fc67a960df8112dd80a74e88fd1f` |
| 5 | `theorem` | [smul](../../../../../mathematics/Topology/GeneralTopology/Adapted/Variant24688a84af833a6d87e14e4c59deee0c746ac06cbb2e3167a6e2fac51f1ee283.lean/declarations/smul--76640beb4495cc848a17d702.md) | 64 | `result-track:76640beb4495cc848a17d7027e93646de6b03e04eee38d3e1f40270114cc146b` |
| 6 | `theorem` | [stronglyMeasurable](../../../../../mathematics/Topology/GeneralTopology/Adapted/Variant24688a84af833a6d87e14e4c59deee0c746ac06cbb2e3167a6e2fac51f1ee283.lean/declarations/stronglymeasurable--6a2bc283b6a1b9edde65aae0.md) | 67 | `result-track:6a2bc283b6a1b9edde65aae023cbfeecc60760a0ed9534a3468dbd960022a99d` |
| 7 | `theorem` | [stronglyMeasurable_le](../../../../../mathematics/Topology/GeneralTopology/Adapted/Variant24688a84af833a6d87e14e4c59deee0c746ac06cbb2e3167a6e2fac51f1ee283.lean/declarations/stronglymeasurable-le--4d4a7d92ce50d2e4648f58f6.md) | 70 | `result-track:4d4a7d92ce50d2e4648f58f6e50026c168eee929d1b2952d9191bcbfd8138cf5` |
| 8 | `theorem` | [adapted_const](../../../../../mathematics/Topology/GeneralTopology/Adapted/Variant24688a84af833a6d87e14e4c59deee0c746ac06cbb2e3167a6e2fac51f1ee283.lean/declarations/adapted-const--30185a3855d62b6ea5fba031.md) | 75 | `result-track:30185a3855d62b6ea5fba03182fd6bb03c8758ee64eba69c9083b7d726e5e88b` |
| 9 | `theorem` | [adapted_zero](../../../../../mathematics/Topology/GeneralTopology/Adapted/Variant24688a84af833a6d87e14e4c59deee0c746ac06cbb2e3167a6e2fac51f1ee283.lean/declarations/adapted-zero--89a5a214cbbe3cbec132b433.md) | 79 | `result-track:89a5a214cbbe3cbec132b43318527cbec3a4144f6eaaa946f5bc1959bbc7e16f` |
| 10 | `theorem` | [Filtration.adapted_natural](../../../../../mathematics/Topology/GeneralTopology/Adapted/Variant24688a84af833a6d87e14e4c59deee0c746ac06cbb2e3167a6e2fac51f1ee283.lean/declarations/filtration-adapted-natural--66a1d3bec76964a0a1c681ae.md) | 82 | `result-track:66a1d3bec76964a0a1c681ae5f27fbdd412255d0f2cf953ef48c94b43d7013a5` |
| 11 | `def` | [ProgMeasurable](../../../../../mathematics/Topology/GeneralTopology/Adapted/Variant24688a84af833a6d87e14e4c59deee0c746ac06cbb2e3167a6e2fac51f1ee283.lean/declarations/progmeasurable--0e0780857191580698981493.md) | 96 | `declaration-track:0e0780857191580698981493ee5f41fb616a6a341116cd29cfa71c0277b82cca` |
| 12 | `theorem` | [progMeasurable_const](../../../../../mathematics/Topology/GeneralTopology/Adapted/Variant24688a84af833a6d87e14e4c59deee0c746ac06cbb2e3167a6e2fac51f1ee283.lean/declarations/progmeasurable-const--206188093c5bc30bd1d6dd41.md) | 99 | `result-track:206188093c5bc30bd1d6dd41734dc65f2c130ae412eae401763526d0da5b4e95` |
| 13 | `theorem` | [adapted](../../../../../mathematics/Topology/GeneralTopology/Adapted/Variant24688a84af833a6d87e14e4c59deee0c746ac06cbb2e3167a6e2fac51f1ee283.lean/declarations/adapted--fe3294bb25ba739090533afa.md) | 107 | `result-track:fe3294bb25ba739090533afa9315782430811e65953a9615fb3480bb5462da15` |
| 14 | `theorem` | [comp](../../../../../mathematics/Topology/GeneralTopology/Adapted/Variant24688a84af833a6d87e14e4c59deee0c746ac06cbb2e3167a6e2fac51f1ee283.lean/declarations/comp--bd9c2206b0c094852bdea617.md) | 114 | `result-track:bd9c2206b0c094852bdea6176fe61083f6322f5913ca4ead1e8be73cdd0f534e` |
| 15 | `theorem` | [mul](../../../../../mathematics/Topology/GeneralTopology/Adapted/Variant24688a84af833a6d87e14e4c59deee0c746ac06cbb2e3167a6e2fac51f1ee283.lean/declarations/mul--3a8d9e6188538fa06a5e99d6.md) | 127 | `result-track:3a8d9e6188538fa06a5e99d6c1e7298c9c4f0ceff09d36429a05610bbbfe67e0` |
| 16 | `theorem` | [finset_prod'](../../../../../mathematics/Topology/GeneralTopology/Adapted/Variant24688a84af833a6d87e14e4c59deee0c746ac06cbb2e3167a6e2fac51f1ee283.lean/declarations/finset-prod--274273c9a6c5268999c2f2ec.md) | 132 | `result-track:274273c9a6c5268999c2f2ecb572722d3e551ffff6a90bc736c0ef4b5dca6717` |
| 17 | `theorem` | [finset_prod](../../../../../mathematics/Topology/GeneralTopology/Adapted/Variant24688a84af833a6d87e14e4c59deee0c746ac06cbb2e3167a6e2fac51f1ee283.lean/declarations/finset-prod--3f50a82907a5aadb49fdfda3.md) | 138 | `result-track:3f50a82907a5aadb49fdfda33606d448754f4a9264aa22fa709d32069a44609f` |
| 18 | `theorem` | [inv](../../../../../mathematics/Topology/GeneralTopology/Adapted/Variant24688a84af833a6d87e14e4c59deee0c746ac06cbb2e3167a6e2fac51f1ee283.lean/declarations/inv--019fbc410a832dde00d7fc3d.md) | 144 | `result-track:019fbc410a832dde00d7fc3d24ba6db5a53baf9ad1f97d27010621a4d0e0294b` |
| 19 | `theorem` | [div](../../../../../mathematics/Topology/GeneralTopology/Adapted/Variant24688a84af833a6d87e14e4c59deee0c746ac06cbb2e3167a6e2fac51f1ee283.lean/declarations/div--5761d236025ebe87606f1004.md) | 148 | `result-track:5761d236025ebe87606f100453c58ca6b76380afd5ad8468a88b2c27014c4101` |
| 20 | `theorem` | [progMeasurable_of_tendsto'](../../../../../mathematics/Topology/GeneralTopology/Adapted/Variant24688a84af833a6d87e14e4c59deee0c746ac06cbb2e3167a6e2fac51f1ee283.lean/declarations/progmeasurable-of-tendsto--7b822076513c7f3faceae85f.md) | 156 | `result-track:7b822076513c7f3faceae85f1286a10b28858457b56d496bb77bdff8da6222c5` |
| 21 | `theorem` | [progMeasurable_of_tendsto](../../../../../mathematics/Topology/GeneralTopology/Adapted/Variant24688a84af833a6d87e14e4c59deee0c746ac06cbb2e3167a6e2fac51f1ee283.lean/declarations/progmeasurable-of-tendsto--6e13562e2f6f9fde01f4771e.md) | 168 | `result-track:6e13562e2f6f9fde01f4771eaeff8ae387a0c96fc8cb65349270fef3743677fa` |
| 22 | `theorem` | [Adapted.progMeasurable_of_continuous](../../../../../mathematics/Topology/GeneralTopology/Adapted/Variant24688a84af833a6d87e14e4c59deee0c746ac06cbb2e3167a6e2fac51f1ee283.lean/declarations/adapted-progmeasurable-of-continuous--c94020a40b3df6552be1525f.md) | 173 | `result-track:c94020a40b3df6552be1525f8c7dce934a72ac4374ba744bc28d2ba3cdb109af` |
| 23 | `theorem` | [Adapted.progMeasurable_of_discrete](../../../../../mathematics/Topology/GeneralTopology/Adapted/Variant24688a84af833a6d87e14e4c59deee0c746ac06cbb2e3167a6e2fac51f1ee283.lean/declarations/adapted-progmeasurable-of-discrete--215fac7b66e4350e8cf34b5d.md) | 183 | `result-track:215fac7b66e4350e8cf34b5d13d9138f81396ab16b7ac7478c0d77cbe06a471c` |
| 24 | `theorem` | [Predictable.adapted](../../../../../mathematics/Topology/GeneralTopology/Adapted/Variant24688a84af833a6d87e14e4c59deee0c746ac06cbb2e3167a6e2fac51f1ee283.lean/declarations/predictable-adapted--2f865b83da9e4e09d1074615.md) | 189 | `result-track:2f865b83da9e4e09d107461569385a7c223de8bd7949b9a467eeaff2411bd081` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
