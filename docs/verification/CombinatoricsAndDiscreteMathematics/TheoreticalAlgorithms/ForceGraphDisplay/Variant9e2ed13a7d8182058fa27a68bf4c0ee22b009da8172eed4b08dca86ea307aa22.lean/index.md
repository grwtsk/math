# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ForceGraphDisplay.Variant9e2ed13a7d8182058fa27a68bf4c0ee22b009da8172eed4b08dca86ea307aa22

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b2a167954dfff5f76af562814b712f09950612bf",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ForceGraphDisplay/Variant9e2ed13a7d8182058fa27a68bf4c0ee22b009da8172eed4b08dca86ea307aa22.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ForceGraphDisplay/Variant9e2ed13a7d8182058fa27a68bf4c0ee22b009da8172eed4b08dca86ea307aa22.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ForceGraphDisplay/Variant9e2ed13a7d8182058fa27a68bf4c0ee22b009da8172eed4b08dca86ea307aa22.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b2a167954dfff5f76af562814b712f09950612bf`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ForceGraphDisplay/Variant9e2ed13a7d8182058fa27a68bf4c0ee22b009da8172eed4b08dca86ea307aa22.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ForceGraphDisplay/Variant9e2ed13a7d8182058fa27a68bf4c0ee22b009da8172eed4b08dca86ea307aa22.lean.json)

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
| 1 | `def` | [mkCircle](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ForceGraphDisplay/Variant9e2ed13a7d8182058fa27a68bf4c0ee22b009da8172eed4b08dca86ea307aa22.lean/declarations/mkcircle--ea9a349ff5d78c12c4f9b951.md) | 19 | `declaration-track:ea9a349ff5d78c12c4f9b9517f12a7b996d3ccaafd80a0117a6157109aadf6b3` |
| 2 | `inductive` | [BoundingShape](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ForceGraphDisplay/Variant9e2ed13a7d8182058fa27a68bf4c0ee22b009da8172eed4b08dca86ea307aa22.lean/declarations/boundingshape--3b18ef23fe6527dcc04e4d63.md) | 32 | `declaration-track:3b18ef23fe6527dcc04e4d636e4c69d4aa778ecef6da82287ce8987ef4cd9458` |
| 3 | `structure` | [Vertex](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ForceGraphDisplay/Variant9e2ed13a7d8182058fa27a68bf4c0ee22b009da8172eed4b08dca86ea307aa22.lean/declarations/vertex--3e8359980355dfb1866ae6f9.md) | 39 | `declaration-track:3e8359980355dfb1866ae6f9039405957b8753086c58ba161f510c925fd8385c` |
| 4 | `structure` | [Edge](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ForceGraphDisplay/Variant9e2ed13a7d8182058fa27a68bf4c0ee22b009da8172eed4b08dca86ea307aa22.lean/declarations/edge--8c55271afaaa551c6b8a3d6c.md) | 53 | `declaration-track:8c55271afaaa551c6b8a3d6ca5687c5ea53b6dbdbd7e933a4d0315e9fddcddd6` |
| 5 | `structure` | [ForceCenterParams](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ForceGraphDisplay/Variant9e2ed13a7d8182058fa27a68bf4c0ee22b009da8172eed4b08dca86ea307aa22.lean/declarations/forcecenterparams--fe96e6992252f9a9ac999795.md) | 71 | `declaration-track:fe96e6992252f9a9ac999795072aaad776136afbbbc38106e9732b788883c469` |
| 6 | `structure` | [ForceCollideParams](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ForceGraphDisplay/Variant9e2ed13a7d8182058fa27a68bf4c0ee22b009da8172eed4b08dca86ea307aa22.lean/declarations/forcecollideparams--30d4ce98b29f07aad44d3ee7.md) | 77 | `declaration-track:30d4ce98b29f07aad44d3ee77485c1b95e85a6c9fefc4795dd698be982045637` |
| 7 | `structure` | [ForceLinkParams](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ForceGraphDisplay/Variant9e2ed13a7d8182058fa27a68bf4c0ee22b009da8172eed4b08dca86ea307aa22.lean/declarations/forcelinkparams--4f5c170e0427a9ef5d776549.md) | 83 | `declaration-track:4f5c170e0427a9ef5d776549a959ea0842ef60f3f190cc7905ff856c66198250` |
| 8 | `structure` | [ForceManyBodyParams](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ForceGraphDisplay/Variant9e2ed13a7d8182058fa27a68bf4c0ee22b009da8172eed4b08dca86ea307aa22.lean/declarations/forcemanybodyparams--df9a4a68c56b35c4bfcc2603.md) | 89 | `declaration-track:df9a4a68c56b35c4bfcc26032effc4a183aa9f26b2c95b9ec196cea20317f792` |
| 9 | `structure` | [ForceXParams](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ForceGraphDisplay/Variant9e2ed13a7d8182058fa27a68bf4c0ee22b009da8172eed4b08dca86ea307aa22.lean/declarations/forcexparams--2da33f7b26984224bac4d62f.md) | 96 | `declaration-track:2da33f7b26984224bac4d62f90aef6ccf769a9f7ea012f9881bfab552bf688eb` |
| 10 | `structure` | [ForceYParams](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ForceGraphDisplay/Variant9e2ed13a7d8182058fa27a68bf4c0ee22b009da8172eed4b08dca86ea307aa22.lean/declarations/forceyparams--364690ca5a7ba13cfa8898be.md) | 101 | `declaration-track:364690ca5a7ba13cfa8898be74a820017a0bd67b527beb331f22467a1a42f350` |
| 11 | `structure` | [ForceRadialParams](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ForceGraphDisplay/Variant9e2ed13a7d8182058fa27a68bf4c0ee22b009da8172eed4b08dca86ea307aa22.lean/declarations/forceradialparams--b31b38f51c6728d92bae2e87.md) | 106 | `declaration-track:b31b38f51c6728d92bae2e87cb31558ed8f13763b743bac46c33a60bbb692be0` |
| 12 | `inductive` | [ForceParams](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ForceGraphDisplay/Variant9e2ed13a7d8182058fa27a68bf4c0ee22b009da8172eed4b08dca86ea307aa22.lean/declarations/forceparams--71c48da540d86144093906b0.md) | 115 | `declaration-track:71c48da540d86144093906b004150c1be43b02c0ff7ab95d071a60e92d21af2b` |
| 13 | `structure` | [Props](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ForceGraphDisplay/Variant9e2ed13a7d8182058fa27a68bf4c0ee22b009da8172eed4b08dca86ea307aa22.lean/declarations/props--81b3418144c449c86605a317.md) | 125 | `declaration-track:81b3418144c449c86605a317d908e113dcace7bb9cabed3181d237f545b119c0` |
| 14 | `def` | [ForceGraphDisplay](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ForceGraphDisplay/Variant9e2ed13a7d8182058fa27a68bf4c0ee22b009da8172eed4b08dca86ea307aa22.lean/declarations/forcegraphdisplay--3e789565e6941205ee90789e.md) | 152 | `declaration-track:3e789565e6941205ee90789ec46df472532d72c08ee1f3960eef17698245e839` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
