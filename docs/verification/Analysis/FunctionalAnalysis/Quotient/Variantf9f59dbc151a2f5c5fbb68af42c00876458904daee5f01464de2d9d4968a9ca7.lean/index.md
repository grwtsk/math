# Verification target: GRWTSK.Analysis.FunctionalAnalysis.Quotient.Variantf9f59dbc151a2f5c5fbb68af42c00876458904daee5f01464de2d9d4968a9ca7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d7c0dff8e648645c348e02cc877adddce79c716e",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/Quotient/Variantf9f59dbc151a2f5c5fbb68af42c00876458904daee5f01464de2d9d4968a9ca7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/Quotient/Variantf9f59dbc151a2f5c5fbb68af42c00876458904daee5f01464de2d9d4968a9ca7.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/Quotient/Variantf9f59dbc151a2f5c5fbb68af42c00876458904daee5f01464de2d9d4968a9ca7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d7c0dff8e648645c348e02cc877adddce79c716e`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/Quotient/Variantf9f59dbc151a2f5c5fbb68af42c00876458904daee5f01464de2d9d4968a9ca7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/Quotient/Variantf9f59dbc151a2f5c5fbb68af42c00876458904daee5f01464de2d9d4968a9ca7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `MathDiscovery.Hilbert.Null` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Quotient.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [PreKernelSpace](../../../../../mathematics/Analysis/FunctionalAnalysis/Quotient/Variantf9f59dbc151a2f5c5fbb68af42c00876458904daee5f01464de2d9d4968a9ca7.lean/declarations/prekernelspace--dab34ef2d01f5e354c3f6b64.md) | 32 | `declaration-track:dab34ef2d01f5e354c3f6b64497f5ce6e0c9a973600f61ba1f8da78080d85b24` |
| 2 | `def` | [preKernelMk](../../../../../mathematics/Analysis/FunctionalAnalysis/Quotient/Variantf9f59dbc151a2f5c5fbb68af42c00876458904daee5f01464de2d9d4968a9ca7.lean/declarations/prekernelmk--98a4d66495e50924324f84dc.md) | 36 | `declaration-track:98a4d66495e50924324f84dcf6b6bae69528f4c84a6235fbdf37781f05cb4984` |
| 3 | `theorem` | [rawInner_respects_quotient](../../../../../mathematics/Analysis/FunctionalAnalysis/Quotient/Variantf9f59dbc151a2f5c5fbb68af42c00876458904daee5f01464de2d9d4968a9ca7.lean/declarations/rawinner-respects-quotient--5113522a39060077d6a25c8d.md) | 41 | `result-track:5113522a39060077d6a25c8d4ad53f57f054a6b99671dc91f6d7d7974947355f` |
| 4 | `def` | [preKernelInner](../../../../../mathematics/Analysis/FunctionalAnalysis/Quotient/Variantf9f59dbc151a2f5c5fbb68af42c00876458904daee5f01464de2d9d4968a9ca7.lean/declarations/prekernelinner--b3f9c9024c8d5629cca4f3c6.md) | 58 | `declaration-track:b3f9c9024c8d5629cca4f3c66e10da0b6bb3595425a2e360fadd9547406a81b9` |
| 5 | `theorem` | [preKernelInner_wellDefined](../../../../../mathematics/Analysis/FunctionalAnalysis/Quotient/Variantf9f59dbc151a2f5c5fbb68af42c00876458904daee5f01464de2d9d4968a9ca7.lean/declarations/prekernelinner-welldefined--49c9d6f44e0674bd444f823b.md) | 66 | `result-track:49c9d6f44e0674bd444f823b0689afc8b332858dafaa05bb326ed4ef45ae50e1` |
| 6 | `def` | [preKernelPreCore](../../../../../mathematics/Analysis/FunctionalAnalysis/Quotient/Variantf9f59dbc151a2f5c5fbb68af42c00876458904daee5f01464de2d9d4968a9ca7.lean/declarations/prekernelprecore--56ee1376d1af6987f3fafc06.md) | 74 | `declaration-track:56ee1376d1af6987f3fafc0619466d1b8db7ec84fd7190b9d9dd9efd201926ae` |
| 7 | `def` | [preKernelCore](../../../../../mathematics/Analysis/FunctionalAnalysis/Quotient/Variantf9f59dbc151a2f5c5fbb68af42c00876458904daee5f01464de2d9d4968a9ca7.lean/declarations/prekernelcore--90843552462b6cfb761c5654.md) | 122 | `declaration-track:90843552462b6cfb761c5654ecbb85367ac5620aff486c427944454125b5c802` |
| 8 | `instance` | [instPreKernelNormedAddCommGroup](../../../../../mathematics/Analysis/FunctionalAnalysis/Quotient/Variantf9f59dbc151a2f5c5fbb68af42c00876458904daee5f01464de2d9d4968a9ca7.lean/declarations/instprekernelnormedaddcommgroup--7c1254cb194f7d3d0dee87aa.md) | 134 | `declaration-track:7c1254cb194f7d3d0dee87aa0182709e0d22b7318d380c43a7cb3183026897b8` |
| 9 | `instance` | [instPreKernelInnerProductSpace](../../../../../mathematics/Analysis/FunctionalAnalysis/Quotient/Variantf9f59dbc151a2f5c5fbb68af42c00876458904daee5f01464de2d9d4968a9ca7.lean/declarations/instprekernelinnerproductspace--1c66328f6ab6dc22135544bf.md) | 141 | `declaration-track:1c66328f6ab6dc22135544bf45dd055a062bd4df675405697bbe5f9c6c17f348` |
| 10 | `theorem` | [preKernel_inner_self_eq_zero_iff](../../../../../mathematics/Analysis/FunctionalAnalysis/Quotient/Variantf9f59dbc151a2f5c5fbb68af42c00876458904daee5f01464de2d9d4968a9ca7.lean/declarations/prekernel-inner-self-eq-zero-iff--efcbb45f2c03cba06409341e.md) | 146 | `result-track:efcbb45f2c03cba06409341ea9d7bd821c770e1c866e80dc8251cc19322178f2` |
| 11 | `theorem` | [preKernelMk_eq_zero_iff](../../../../../mathematics/Analysis/FunctionalAnalysis/Quotient/Variantf9f59dbc151a2f5c5fbb68af42c00876458904daee5f01464de2d9d4968a9ca7.lean/declarations/prekernelmk-eq-zero-iff--16e25807c80850afa8033350.md) | 154 | `result-track:16e25807c80850afa8033350fe33790f8e09d8581f2857aafc012dfe20bf0531` |
| 12 | `theorem` | [preKernelInner_basisVector](../../../../../mathematics/Analysis/FunctionalAnalysis/Quotient/Variantf9f59dbc151a2f5c5fbb68af42c00876458904daee5f01464de2d9d4968a9ca7.lean/declarations/prekernelinner-basisvector--eb6ac0f2b187a0e18774eac9.md) | 163 | `result-track:eb6ac0f2b187a0e18774eac99c039266f23481074903fc6e25d12f093c30633e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
