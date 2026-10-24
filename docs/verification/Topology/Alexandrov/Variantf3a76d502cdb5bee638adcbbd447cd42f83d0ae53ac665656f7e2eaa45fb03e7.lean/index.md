# Verification target: GRWTSK.Topology.Alexandrov.Variantf3a76d502cdb5bee638adcbbd447cd42f83d0ae53ac665656f7e2eaa45fb03e7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8be3da1e4100cae33a883aeb8fc565ec3029c0de",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/Alexandrov/Variantf3a76d502cdb5bee638adcbbd447cd42f83d0ae53ac665656f7e2eaa45fb03e7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Topology/Alexandrov/Variantf3a76d502cdb5bee638adcbbd447cd42f83d0ae53ac665656f7e2eaa45fb03e7.lean/index.md) · [Full source](../../../../mathematics/Topology/Alexandrov/Variantf3a76d502cdb5bee638adcbbd447cd42f83d0ae53ac665656f7e2eaa45fb03e7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8be3da1e4100cae33a883aeb8fc565ec3029c0de`.

Source path: `GRWTSK/Topology/Alexandrov/Variantf3a76d502cdb5bee638adcbbd447cd42f83d0ae53ac665656f7e2eaa45fb03e7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/Alexandrov/Variantf3a76d502cdb5bee638adcbbd447cd42f83d0ae53ac665656f7e2eaa45fb03e7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Combinatorics.Quiver.ReflQuiver` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Order.CompletePartialOrder` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Order.UpperLowerSetTopology` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Sheaves.SheafCondition.OpensLeCover` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [principalOpen](../../../../mathematics/Topology/Alexandrov/Variantf3a76d502cdb5bee638adcbbd447cd42f83d0ae53ac665656f7e2eaa45fb03e7.lean/declarations/principalopen--f54e2ed4f95fff1495a8be53.md) | 38 | `declaration-track:f54e2ed4f95fff1495a8be53cf3b5225f1cc709e21c97e923193d2a18d76cc42` |
| 2 | `lemma` | [self_mem_principalOpen](../../../../mathematics/Topology/Alexandrov/Variantf3a76d502cdb5bee638adcbbd447cd42f83d0ae53ac665656f7e2eaa45fb03e7.lean/declarations/self-mem-principalopen--efca03b57af21888c3dead13.md) | 43 | `result-track:efca03b57af21888c3dead13df6e3d95d3c90aa83142512bee226731647f125e` |
| 3 | `lemma` | [principalOpen_le_iff](../../../../mathematics/Topology/Alexandrov/Variantf3a76d502cdb5bee638adcbbd447cd42f83d0ae53ac665656f7e2eaa45fb03e7.lean/declarations/principalopen-le-iff--8c8e5d65fadb3ce554db077a.md) | 46 | `result-track:8c8e5d65fadb3ce554db077a55c08937c7b196146782531b8a859036385b44a3` |
| 4 | `lemma` | [principalOpen_le](../../../../mathematics/Topology/Alexandrov/Variantf3a76d502cdb5bee638adcbbd447cd42f83d0ae53ac665656f7e2eaa45fb03e7.lean/declarations/principalopen-le--0f3d7464969f7dc989a83f34.md) | 53 | `result-track:0f3d7464969f7dc989a83f3406341fae580a1558e93ff271be6e618c30a1ea13` |
| 5 | `def` | [principals](../../../../mathematics/Topology/Alexandrov/Variantf3a76d502cdb5bee638adcbbd447cd42f83d0ae53ac665656f7e2eaa45fb03e7.lean/declarations/principals--f100ee885b3300ee004934c5.md) | 60 | `declaration-track:f100ee885b3300ee004934c5213ecb879d9ee6cc71f3140048fc60f7a7d59f7e` |
| 6 | `lemma` | [exists_le_of_le_sup](../../../../mathematics/Topology/Alexandrov/Variantf3a76d502cdb5bee638adcbbd447cd42f83d0ae53ac665656f7e2eaa45fb03e7.lean/declarations/exists-le-of-le-sup--0059f3834614daa46d0349e5.md) | 64 | `result-track:0059f3834614daa46d0349e547922580ae054d8c29ed5b1d8f47b28b55e2d9d8` |
| 7 | `abbrev` | [principalsKanExtension](../../../../mathematics/Topology/Alexandrov/Variantf3a76d502cdb5bee638adcbbd447cd42f83d0ae53ac665656f7e2eaa45fb03e7.lean/declarations/principalskanextension--aa9e702c4baa028e20d578fc.md) | 74 | `declaration-track:aa9e702c4baa028e20d578fc766590e209c9eef0736b189b101fdc226eacbc41` |
| 8 | `abbrev` | [generator](../../../../mathematics/Topology/Alexandrov/Variantf3a76d502cdb5bee638adcbbd447cd42f83d0ae53ac665656f7e2eaa45fb03e7.lean/declarations/generator--a5efb7c148175c9a41bc245a.md) | 79 | `declaration-track:a5efb7c148175c9a41bc245a2296ec7aa5a845f89e64087ae58af0bee5122d89` |
| 9 | `def` | [projSup](../../../../mathematics/Topology/Alexandrov/Variantf3a76d502cdb5bee638adcbbd447cd42f83d0ae53ac665656f7e2eaa45fb03e7.lean/declarations/projsup--54e6dd9a610e8a2269b1be15.md) | 91 | `declaration-track:54e6dd9a610e8a2269b1be15434063524ebab4e9f461c5fa9c244e47381ede00` |
| 10 | `def` | [lowerCone](../../../../mathematics/Topology/Alexandrov/Variantf3a76d502cdb5bee638adcbbd447cd42f83d0ae53ac665656f7e2eaa45fb03e7.lean/declarations/lowercone--38e5fe3feaf56492962d45cc.md) | 100 | `declaration-track:38e5fe3feaf56492962d45cc6080ab031ef7f41e3398e20ad1ecba4925fcfcda` |
| 11 | `def` | [isLimit](../../../../mathematics/Topology/Alexandrov/Variantf3a76d502cdb5bee638adcbbd447cd42f83d0ae53ac665656f7e2eaa45fb03e7.lean/declarations/islimit--7a61b95ef479ea62e4d8377c.md) | 137 | `declaration-track:7a61b95ef479ea62e4d8377c8c2f03be2189bdca5506b02998766c0af37c49ff` |
| 12 | `theorem` | [isSheaf_principalsKanExtension](../../../../mathematics/Topology/Alexandrov/Variantf3a76d502cdb5bee638adcbbd447cd42f83d0ae53ac665656f7e2eaa45fb03e7.lean/declarations/issheaf-principalskanextension--8b179e2edebebf0c6583a3ea.md) | 176 | `result-track:8b179e2edebebf0c6583a3ea7b416c0b8d462a149d985ed24886a6516d0a34aa` |
| 13 | `theorem` | [Topology.IsUpperSet.isSheaf_of_isRightKanExtension](../../../../mathematics/Topology/Alexandrov/Variantf3a76d502cdb5bee638adcbbd447cd42f83d0ae53ac665656f7e2eaa45fb03e7.lean/declarations/topology-isupperset-issheaf-of-isrightkanextension--1db3772bccb61676ad5f946a.md) | 195 | `result-track:1db3772bccb61676ad5f946a88369f0a8b23e568ac24a34e5c1a0c0486d0c7ff` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
