# Verification target: GRWTSK.Topology.GeneralTopology.Paracompact.Variant27c7f30dbb90c177855bd21f1bc8833afeba88b884f6906bbdf852313e4361e9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "467b767e2718e1745e06725bc9c822535472a746",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Paracompact/Variant27c7f30dbb90c177855bd21f1bc8833afeba88b884f6906bbdf852313e4361e9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Paracompact/Variant27c7f30dbb90c177855bd21f1bc8833afeba88b884f6906bbdf852313e4361e9.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Paracompact/Variant27c7f30dbb90c177855bd21f1bc8833afeba88b884f6906bbdf852313e4361e9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `467b767e2718e1745e06725bc9c822535472a746`.

Source path: `GRWTSK/Topology/GeneralTopology/Paracompact/Variant27c7f30dbb90c177855bd21f1bc8833afeba88b884f6906bbdf852313e4361e9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Paracompact/Variant27c7f30dbb90c177855bd21f1bc8833afeba88b884f6906bbdf852313e4361e9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Option.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Separation.Regular` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [ParacompactSpace](../../../../../mathematics/Topology/GeneralTopology/Paracompact/Variant27c7f30dbb90c177855bd21f1bc8833afeba88b884f6906bbdf852313e4361e9.lean/declarations/paracompactspace--2d09a068d8c819322ab106e2.md) | 59 | `declaration-track:2d09a068d8c819322ab106e221214db32c8a58e3ebd8f7d253556a94a8079ef5` |
| 2 | `theorem` | [precise_refinement](../../../../../mathematics/Topology/GeneralTopology/Paracompact/Variant27c7f30dbb90c177855bd21f1bc8833afeba88b884f6906bbdf852313e4361e9.lean/declarations/precise-refinement--a9d635a39352fed853e77c0c.md) | 70 | `result-track:a9d635a39352fed853e77c0cd0f8d45b73448fd289ae7d7df5fa526e3e5228c9` |
| 3 | `theorem` | [precise_refinement_set](../../../../../mathematics/Topology/GeneralTopology/Paracompact/Variant27c7f30dbb90c177855bd21f1bc8833afeba88b884f6906bbdf852313e4361e9.lean/declarations/precise-refinement-set--aba554e9450de4157fe506e5.md) | 95 | `result-track:aba554e9450de4157fe506e57fb8adf132a89ae67925f3d67e9fa04d3260cf50` |
| 4 | `theorem` | [Topology.IsClosedEmbedding.paracompactSpace](../../../../../mathematics/Topology/GeneralTopology/Paracompact/Variant27c7f30dbb90c177855bd21f1bc8833afeba88b884f6906bbdf852313e4361e9.lean/declarations/topology-isclosedembedding-paracompactspace--9ec0e1d60bb6ed78e94416f7.md) | 109 | `result-track:9ec0e1d60bb6ed78e94416f7bd832b59ff082f51a514cc61fe6f7d51af889d9e` |
| 5 | `theorem` | [Homeomorph.paracompactSpace_iff](../../../../../mathematics/Topology/GeneralTopology/Paracompact/Variant27c7f30dbb90c177855bd21f1bc8833afeba88b884f6906bbdf852313e4361e9.lean/declarations/homeomorph-paracompactspace-iff--e009d0adaaaa78380212643b.md) | 121 | `result-track:e009d0adaaaa78380212643b22edf0df75d97f9af2cc542d3560c9f6f9f806ff` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Paracompact/Variant27c7f30dbb90c177855bd21f1bc8833afeba88b884f6906bbdf852313e4361e9.lean/declarations/instance--a3ccfbaf66c7cc36618a165b.md) | 130 | `declaration-track:a3ccfbaf66c7cc36618a165b09298fa08e4d560e2d7f36571b3a200bc584b335` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Paracompact/Variant27c7f30dbb90c177855bd21f1bc8833afeba88b884f6906bbdf852313e4361e9.lean/declarations/instance--0616505c939bdfee329fbb85.md) | 156 | `declaration-track:0616505c939bdfee329fbb858d1fa3f0c4f11b4263a3d7933998605d1e391971` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Paracompact/Variant27c7f30dbb90c177855bd21f1bc8833afeba88b884f6906bbdf852313e4361e9.lean/declarations/instance--cd090d9bf5cbbb918dc9c289.md) | 161 | `declaration-track:cd090d9bf5cbbb918dc9c2898ecb16e9432d804fae82e3dbbef6f710ca6add72` |
| 9 | `theorem` | [refinement_of_locallyCompact_sigmaCompact_of_nhds_basis_set](../../../../../mathematics/Topology/GeneralTopology/Paracompact/Variant27c7f30dbb90c177855bd21f1bc8833afeba88b884f6906bbdf852313e4361e9.lean/declarations/refinement-of-locallycompact-sigmacompact-of-nhds-basis-set--26b662fde8b7b99d0c778750.md) | 189 | `result-track:26b662fde8b7b99d0c77875054468fad9837e5ad145463ae7ae97161e605333e` |
| 10 | `theorem` | [refinement_of_locallyCompact_sigmaCompact_of_nhds_basis](../../../../../mathematics/Topology/GeneralTopology/Paracompact/Variant27c7f30dbb90c177855bd21f1bc8833afeba88b884f6906bbdf852313e4361e9.lean/declarations/refinement-of-locallycompact-sigmacompact-of-nhds-basis--0fcde159f6026540927dc634.md) | 256 | `result-track:0fcde159f6026540927dc634581af1e843b8b0fb38af17c9b9ad0a4a191dc05c` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Paracompact/Variant27c7f30dbb90c177855bd21f1bc8833afeba88b884f6906bbdf852313e4361e9.lean/declarations/instance--5d0b06df3bdf4bead609cd06.md) | 268 | `declaration-track:5d0b06df3bdf4bead609cd061b43213ad46c1617c227164da0de66f59a5ff3ea` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Paracompact/Variant27c7f30dbb90c177855bd21f1bc8833afeba88b884f6906bbdf852313e4361e9.lean/declarations/instance--18217ec58877b4b8c9140c36.md) | 281 | `declaration-track:18217ec58877b4b8c9140c368462a9d5b39fa7cb064762a166cb450799599aa9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
