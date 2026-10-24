# Verification target: GRWTSK.Algebra.LinearAlgebra.Quotient.Variantc22686f57fa61ea1b975012600c63fcb3da4edd2f7a568d6ea2d59662dd57e6e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "67a044eaf41630888d9f495969644a10df03c898",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Quotient/Variantc22686f57fa61ea1b975012600c63fcb3da4edd2f7a568d6ea2d59662dd57e6e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variantc22686f57fa61ea1b975012600c63fcb3da4edd2f7a568d6ea2d59662dd57e6e.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variantc22686f57fa61ea1b975012600c63fcb3da4edd2f7a568d6ea2d59662dd57e6e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `67a044eaf41630888d9f495969644a10df03c898`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Quotient/Variantc22686f57fa61ea1b975012600c63fcb3da4edd2f7a568d6ea2d59662dd57e6e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Quotient/Variantc22686f57fa61ea1b975012600c63fcb3da4edd2f7a568d6ea2d59662dd57e6e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [_root_.LinearMap.algHom_comp_convOne](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variantc22686f57fa61ea1b975012600c63fcb3da4edd2f7a568d6ea2d59662dd57e6e.lean/declarations/root-linearmap-alghom-comp-convone--b38ea3818186f14c5c6221eb.md) | 41 | `result-track:b38ea3818186f14c5c6221eb778d9a9c1dbd1afe9c1f334c81df3385e552b572` |
| 2 | `lemma` | [_root_.LinearMap.convOne_comp_coalgHom](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variantc22686f57fa61ea1b975012600c63fcb3da4edd2f7a568d6ea2d59662dd57e6e.lean/declarations/root-linearmap-convone-comp-coalghom--286d1221e423feea8516f6fb.md) | 46 | `result-track:286d1221e423feea8516f6fb8c2858a129302e46dc3af730869a9bf46f206011` |
| 3 | `abbrev` | [ofSurjective](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variantc22686f57fa61ea1b975012600c63fcb3da4edd2f7a568d6ea2d59662dd57e6e.lean/declarations/ofsurjective--92f51750cfc1a3334df70250.md) | 52 | `declaration-track:92f51750cfc1a3334df7025043b0466e73ef67fdcd29c0295b0fd072393ad5e5` |
| 4 | `class` | [Ideal.IsHopfIdeal](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variantc22686f57fa61ea1b975012600c63fcb3da4edd2f7a568d6ea2d59662dd57e6e.lean/declarations/ideal-ishopfideal--ee854d2b268bface88e67242.md) | 89 | `declaration-track:ee854d2b268bface88e6724269b4c8462fc2e30a55bb3f18380d0eaa4a0fcda3` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variantc22686f57fa61ea1b975012600c63fcb3da4edd2f7a568d6ea2d59662dd57e6e.lean/declarations/instance--abf5237533526ab6e41aa9b2.md) | 100 | `declaration-track:abf5237533526ab6e41aa9b2e2108dde2470edb765625da6c205391439a1ffcc` |
| 6 | `lemma` | [antipode_mk](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variantc22686f57fa61ea1b975012600c63fcb3da4edd2f7a568d6ea2d59662dd57e6e.lean/declarations/antipode-mk--973401866d515dc376474580.md) | 105 | `result-track:973401866d515dc376474580c92227d4e3468d747db8c7e19addd5ba2892df7d` |
| 7 | `lemma` | [antipode_comp_mkₐ](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variantc22686f57fa61ea1b975012600c63fcb3da4edd2f7a568d6ea2d59662dd57e6e.lean/declarations/antipode-comp-mk--45ecab1f4a97133f6445d6c7.md) | 108 | `result-track:45ecab1f4a97133f6445d6c7a706a85ac51095a1f6566e95a5dbfb42f3acbf0b` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variantc22686f57fa61ea1b975012600c63fcb3da4edd2f7a568d6ea2d59662dd57e6e.lean/declarations/instance--e135a7c3892ecda918f9aee4.md) | 116 | `declaration-track:e135a7c3892ecda918f9aee41ce42c5847046655929e4d170820788bd2eec178` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
