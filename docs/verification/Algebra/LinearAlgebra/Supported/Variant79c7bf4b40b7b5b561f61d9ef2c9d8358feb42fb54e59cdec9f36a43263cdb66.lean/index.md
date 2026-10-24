# Verification target: GRWTSK.Algebra.LinearAlgebra.Supported.Variant79c7bf4b40b7b5b561f61d9ef2c9d8358feb42fb54e59cdec9f36a43263cdb66

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b97fd83b678e880ab8a3ec57f4752f3e26167835",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Supported/Variant79c7bf4b40b7b5b561f61d9ef2c9d8358feb42fb54e59cdec9f36a43263cdb66.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Supported/Variant79c7bf4b40b7b5b561f61d9ef2c9d8358feb42fb54e59cdec9f36a43263cdb66.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Supported/Variant79c7bf4b40b7b5b561f61d9ef2c9d8358feb42fb54e59cdec9f36a43263cdb66.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b97fd83b678e880ab8a3ec57f4752f3e26167835`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Supported/Variant79c7bf4b40b7b5b561f61d9ef2c9d8358feb42fb54e59cdec9f36a43263cdb66.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Supported/Variant79c7bf4b40b7b5b561f61d9ef2c9d8358feb42fb54e59cdec9f36a43263cdb66.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Module.Submodule.Range` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Finsupp.LSum` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Span.Defs` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [supported](../../../../../mathematics/Algebra/LinearAlgebra/Supported/Variant79c7bf4b40b7b5b561f61d9ef2c9d8358feb42fb54e59cdec9f36a43263cdb66.lean/declarations/supported--15c7efccbf883149024e135e.md) | 48 | `declaration-track:15c7efccbf883149024e135e85acf2e1dcff7e07061dff6f9686a10191c27710` |
| 2 | `theorem` | [mem_supported](../../../../../mathematics/Algebra/LinearAlgebra/Supported/Variant79c7bf4b40b7b5b561f61d9ef2c9d8358feb42fb54e59cdec9f36a43263cdb66.lean/declarations/mem-supported--a6e692ab06519df8ea8de16d.md) | 62 | `result-track:a6e692ab06519df8ea8de16d1311a3c5afbf4450465f3806eabe4aace9c597d2` |
| 3 | `theorem` | [mem_supported'](../../../../../mathematics/Algebra/LinearAlgebra/Supported/Variant79c7bf4b40b7b5b561f61d9ef2c9d8358feb42fb54e59cdec9f36a43263cdb66.lean/declarations/mem-supported--d3db76be7894b18e90cc2878.md) | 65 | `result-track:d3db76be7894b18e90cc2878653d4f365664ecaa057329a6984ccab8273ca4f1` |
| 4 | `theorem` | [mem_supported_support](../../../../../mathematics/Algebra/LinearAlgebra/Supported/Variant79c7bf4b40b7b5b561f61d9ef2c9d8358feb42fb54e59cdec9f36a43263cdb66.lean/declarations/mem-supported-support--459cc77fe09a0650a23758a6.md) | 69 | `result-track:459cc77fe09a0650a23758a618ff727a2dab7282ba9e4d2b92bff4645c665b97` |
| 5 | `theorem` | [single_mem_supported](../../../../../mathematics/Algebra/LinearAlgebra/Supported/Variant79c7bf4b40b7b5b561f61d9ef2c9d8358feb42fb54e59cdec9f36a43263cdb66.lean/declarations/single-mem-supported--1175f58e776601464c87e6be.md) | 72 | `result-track:1175f58e776601464c87e6be2e08e036aa1ea76456c405f72fd5b8c2b7b282e1` |
| 6 | `theorem` | [supported_eq_span_single](../../../../../mathematics/Algebra/LinearAlgebra/Supported/Variant79c7bf4b40b7b5b561f61d9ef2c9d8358feb42fb54e59cdec9f36a43263cdb66.lean/declarations/supported-eq-span-single--47fc020cad1b49195d2e8511.md) | 76 | `result-track:47fc020cad1b49195d2e8511b586a8cd888bb744128ba753c97cb6ba21dc1b47` |
| 7 | `theorem` | [span_le_supported_biUnion_support](../../../../../mathematics/Algebra/LinearAlgebra/Supported/Variant79c7bf4b40b7b5b561f61d9ef2c9d8358feb42fb54e59cdec9f36a43263cdb66.lean/declarations/span-le-supported-biunion-support--cd29dfa1f0153f89d80d814c.md) | 86 | `result-track:cd29dfa1f0153f89d80d814cfe914750950b144fdd03412d9669ef0e2b75f787` |
| 8 | `def` | [restrictDom](../../../../../mathematics/Algebra/LinearAlgebra/Supported/Variant79c7bf4b40b7b5b561f61d9ef2c9d8358feb42fb54e59cdec9f36a43263cdb66.lean/declarations/restrictdom--54e938369b333ee4d98d9a32.md) | 93 | `declaration-track:54e938369b333ee4d98d9a32afa56e59b87078014f477d443dc6375eb2175998` |
| 9 | `theorem` | [restrictDom_apply](../../../../../mathematics/Algebra/LinearAlgebra/Supported/Variant79c7bf4b40b7b5b561f61d9ef2c9d8358feb42fb54e59cdec9f36a43263cdb66.lean/declarations/restrictdom-apply--7cd170d7d061ff73abece54e.md) | 105 | `result-track:7cd170d7d061ff73abece54ee6e527ae1c6021791d2983bbce425e9f02b4ad59` |
| 10 | `theorem` | [restrictDom_comp_subtype](../../../../../mathematics/Algebra/LinearAlgebra/Supported/Variant79c7bf4b40b7b5b561f61d9ef2c9d8358feb42fb54e59cdec9f36a43263cdb66.lean/declarations/restrictdom-comp-subtype--2707ea368adf53a1b1bb55d0.md) | 110 | `result-track:2707ea368adf53a1b1bb55d091172b96b99fb29a488ac354bfa20f9a58c241dd` |
| 11 | `theorem` | [range_restrictDom](../../../../../mathematics/Algebra/LinearAlgebra/Supported/Variant79c7bf4b40b7b5b561f61d9ef2c9d8358feb42fb54e59cdec9f36a43263cdb66.lean/declarations/range-restrictdom--6d094822c3a2340d59663932.md) | 117 | `result-track:6d094822c3a2340d596639324ad5b3d148be42a2da972085224df1dfc68109e6` |
| 12 | `theorem` | [supported_mono](../../../../../mathematics/Algebra/LinearAlgebra/Supported/Variant79c7bf4b40b7b5b561f61d9ef2c9d8358feb42fb54e59cdec9f36a43263cdb66.lean/declarations/supported-mono--460c8a5b9de7e434fa171616.md) | 122 | `result-track:460c8a5b9de7e434fa17161609df712323133d6a0dedbdcd4861ece4de68257b` |
| 13 | `theorem` | [supported_empty](../../../../../mathematics/Algebra/LinearAlgebra/Supported/Variant79c7bf4b40b7b5b561f61d9ef2c9d8358feb42fb54e59cdec9f36a43263cdb66.lean/declarations/supported-empty--5af548fe96aca70a0be971f3.md) | 126 | `result-track:5af548fe96aca70a0be971f38be201f0fbff7753f44d657c368bc5c44925f541` |
| 14 | `theorem` | [supported_univ](../../../../../mathematics/Algebra/LinearAlgebra/Supported/Variant79c7bf4b40b7b5b561f61d9ef2c9d8358feb42fb54e59cdec9f36a43263cdb66.lean/declarations/supported-univ--cd7daed2cf4082e4becd5a50.md) | 130 | `result-track:cd7daed2cf4082e4becd5a50c2629888b21227ac592c323bf4082ec2a4bd4dff` |
| 15 | `theorem` | [supported_iUnion](../../../../../mathematics/Algebra/LinearAlgebra/Supported/Variant79c7bf4b40b7b5b561f61d9ef2c9d8358feb42fb54e59cdec9f36a43263cdb66.lean/declarations/supported-iunion--4e184682582bb70d8c08ffd0.md) | 133 | `result-track:4e184682582bb70d8c08ffd0b606991ee69866a14b7d5122421c470852ac1dbb` |
| 16 | `theorem` | [supported_union](../../../../../mathematics/Algebra/LinearAlgebra/Supported/Variant79c7bf4b40b7b5b561f61d9ef2c9d8358feb42fb54e59cdec9f36a43263cdb66.lean/declarations/supported-union--d6d25b1dddc10f31b2ba0463.md) | 154 | `result-track:d6d25b1dddc10f31b2ba046307a14bf4f617906daafacaa9e449c644462f0d61` |
| 17 | `theorem` | [supported_iInter](../../../../../mathematics/Algebra/LinearAlgebra/Supported/Variant79c7bf4b40b7b5b561f61d9ef2c9d8358feb42fb54e59cdec9f36a43263cdb66.lean/declarations/supported-iinter--a50c2416ecdd3a794c8ff88d.md) | 158 | `result-track:a50c2416ecdd3a794c8ff88da2dfd14dbe0053f27132251e0748238f035b1cb6` |
| 18 | `theorem` | [supported_inter](../../../../../mathematics/Algebra/LinearAlgebra/Supported/Variant79c7bf4b40b7b5b561f61d9ef2c9d8358feb42fb54e59cdec9f36a43263cdb66.lean/declarations/supported-inter--329ed675f7459f4e23129e2a.md) | 162 | `result-track:329ed675f7459f4e23129e2a3f2d602ed22da07433f0f06bfef2c655368e228c` |
| 19 | `theorem` | [disjoint_supported_supported](../../../../../mathematics/Algebra/LinearAlgebra/Supported/Variant79c7bf4b40b7b5b561f61d9ef2c9d8358feb42fb54e59cdec9f36a43263cdb66.lean/declarations/disjoint-supported-supported--ce11a07fafae67c49a739794.md) | 166 | `result-track:ce11a07fafae67c49a739794794a60939bf6be1977cac92306b3b804a78423c9` |
| 20 | `theorem` | [disjoint_supported_supported_iff](../../../../../mathematics/Algebra/LinearAlgebra/Supported/Variant79c7bf4b40b7b5b561f61d9ef2c9d8358feb42fb54e59cdec9f36a43263cdb66.lean/declarations/disjoint-supported-supported-iff--086b76d0874e02a909801eff.md) | 170 | `result-track:086b76d0874e02a909801effc4d2b2b08343ab649b6ba6423c717614279d7be7` |
| 21 | `def` | [supportedEquivFinsupp](../../../../../mathematics/Algebra/LinearAlgebra/Supported/Variant79c7bf4b40b7b5b561f61d9ef2c9d8358feb42fb54e59cdec9f36a43263cdb66.lean/declarations/supportedequivfinsupp--f3ad32ba7ed7fb7678b911a9.md) | 180 | `declaration-track:f3ad32ba7ed7fb7678b911a92a6d3f3fea0bc54aaf768787f00c831b83a419d3` |
| 22 | `theorem` | [supportedEquivFinsupp_symm_apply_coe](../../../../../mathematics/Algebra/LinearAlgebra/Supported/Variant79c7bf4b40b7b5b561f61d9ef2c9d8358feb42fb54e59cdec9f36a43263cdb66.lean/declarations/supportedequivfinsupp-symm-apply-coe--a55d902b3476b2c68c406bf4.md) | 190 | `result-track:a55d902b3476b2c68c406bf4fa0aba5ffe302d6020c776eb454945e69184547c` |
| 23 | `theorem` | [supported_comap_lmapDomain](../../../../../mathematics/Algebra/LinearAlgebra/Supported/Variant79c7bf4b40b7b5b561f61d9ef2c9d8358feb42fb54e59cdec9f36a43263cdb66.lean/declarations/supported-comap-lmapdomain--5bc662067440a132d0e9d4f3.md) | 198 | `result-track:5bc662067440a132d0e9d4f33fc575c568e0a78ae0c1205d305ad9808fdafe1a` |
| 24 | `theorem` | [lmapDomain_supported](../../../../../mathematics/Algebra/LinearAlgebra/Supported/Variant79c7bf4b40b7b5b561f61d9ef2c9d8358feb42fb54e59cdec9f36a43263cdb66.lean/declarations/lmapdomain-supported--05da2965fa96bd9d9fc68a94.md) | 206 | `result-track:05da2965fa96bd9d9fc68a942473192c67be21590e2933d5fe5016df0f12ae73` |
| 25 | `theorem` | [lmapDomain_disjoint_ker](../../../../../mathematics/Algebra/LinearAlgebra/Supported/Variant79c7bf4b40b7b5b561f61d9ef2c9d8358feb42fb54e59cdec9f36a43263cdb66.lean/declarations/lmapdomain-disjoint-ker--c65b824bea0921c643e1d86f.md) | 225 | `result-track:c65b824bea0921c643e1d86fce8ee1b83b418728f5813802b9428fbf6e3f086d` |
| 26 | `def` | [congr](../../../../../mathematics/Algebra/LinearAlgebra/Supported/Variant79c7bf4b40b7b5b561f61d9ef2c9d8358feb42fb54e59cdec9f36a43263cdb66.lean/declarations/congr--aa601ffad8af4ab33aa7e218.md) | 249 | `declaration-track:aa601ffad8af4ab33aa7e218bc28ed7d611877cddc5cc300a5e616000a0b3439` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
