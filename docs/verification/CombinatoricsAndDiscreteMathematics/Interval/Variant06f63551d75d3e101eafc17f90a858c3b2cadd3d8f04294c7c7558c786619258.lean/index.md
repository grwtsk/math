# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Interval.Variant06f63551d75d3e101eafc17f90a858c3b2cadd3d8f04294c7c7558c786619258

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "769d2bd842c62748ae1e5bd631ad67b295064696",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Interval/Variant06f63551d75d3e101eafc17f90a858c3b2cadd3d8f04294c7c7558c786619258.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant06f63551d75d3e101eafc17f90a858c3b2cadd3d8f04294c7c7558c786619258.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant06f63551d75d3e101eafc17f90a858c3b2cadd3d8f04294c7c7558c786619258.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `769d2bd842c62748ae1e5bd631ad67b295064696`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Interval/Variant06f63551d75d3e101eafc17f90a858c3b2cadd3d8f04294c7c7558c786619258.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Interval/Variant06f63551d75d3e101eafc17f90a858c3b2cadd3d8f04294c7c7558c786619258.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.Interval.Finset.Nat` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.PNat.Defs` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [instLocallyFiniteOrder](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant06f63551d75d3e101eafc17f90a858c3b2cadd3d8f04294c7c7558c786619258.lean/declarations/instlocallyfiniteorder--29d1164bfd36ee67d11cce38.md) | 23 | `declaration-track:29d1164bfd36ee67d11cce384875eb33c61a4426fe89ef9a0be1bb168a728326` |
| 2 | `theorem` | [Icc_eq_finset_subtype](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant06f63551d75d3e101eafc17f90a858c3b2cadd3d8f04294c7c7558c786619258.lean/declarations/icc-eq-finset-subtype--eae89bcf7fa6ae41dbf5b06f.md) | 25 | `result-track:eae89bcf7fa6ae41dbf5b06fd298f8a20eac0181056bcf0b65a903b3c73a6fc7` |
| 3 | `theorem` | [Ico_eq_finset_subtype](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant06f63551d75d3e101eafc17f90a858c3b2cadd3d8f04294c7c7558c786619258.lean/declarations/ico-eq-finset-subtype--78069212808825898de55506.md) | 28 | `result-track:78069212808825898de55506416a43e914e1b1ebcb95307ed0bfedc0025e9829` |
| 4 | `theorem` | [Ioc_eq_finset_subtype](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant06f63551d75d3e101eafc17f90a858c3b2cadd3d8f04294c7c7558c786619258.lean/declarations/ioc-eq-finset-subtype--b591268e5e0e0a38f2e07e65.md) | 31 | `result-track:b591268e5e0e0a38f2e07e65c9496979c2576425b6765b1008c2040519a4c3c2` |
| 5 | `theorem` | [Ioo_eq_finset_subtype](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant06f63551d75d3e101eafc17f90a858c3b2cadd3d8f04294c7c7558c786619258.lean/declarations/ioo-eq-finset-subtype--8ed046477a9e96e532fced02.md) | 34 | `result-track:8ed046477a9e96e532fced023424a364c2bf6a65578c2ff8647b010bbaa98662` |
| 6 | `theorem` | [uIcc_eq_finset_subtype](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant06f63551d75d3e101eafc17f90a858c3b2cadd3d8f04294c7c7558c786619258.lean/declarations/uicc-eq-finset-subtype--264e3529c683d56bcd85916e.md) | 37 | `result-track:264e3529c683d56bcd85916e8e17216b6e30dd71b3aba7ca41010fc7b7ce279a` |
| 7 | `theorem` | [map_subtype_embedding_Icc](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant06f63551d75d3e101eafc17f90a858c3b2cadd3d8f04294c7c7558c786619258.lean/declarations/map-subtype-embedding-icc--877b9da964d7a96e6c56d8e4.md) | 39 | `result-track:877b9da964d7a96e6c56d8e44bf5dad68d575583d4f4b16f2ae17c472e8cbeb3` |
| 8 | `theorem` | [map_subtype_embedding_Ico](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant06f63551d75d3e101eafc17f90a858c3b2cadd3d8f04294c7c7558c786619258.lean/declarations/map-subtype-embedding-ico--1985e50cddb93b6eff38fbf3.md) | 42 | `result-track:1985e50cddb93b6eff38fbf37dab491b7931708634c90b882e4eed4fc8f063bc` |
| 9 | `theorem` | [map_subtype_embedding_Ioc](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant06f63551d75d3e101eafc17f90a858c3b2cadd3d8f04294c7c7558c786619258.lean/declarations/map-subtype-embedding-ioc--fc18148f4594067250c20668.md) | 45 | `result-track:fc18148f4594067250c20668e18297ccc7f5ebbe4129883cded15a60063a89a3` |
| 10 | `theorem` | [map_subtype_embedding_Ioo](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant06f63551d75d3e101eafc17f90a858c3b2cadd3d8f04294c7c7558c786619258.lean/declarations/map-subtype-embedding-ioo--9a8cbd4e70bf6fcd03cd08e4.md) | 48 | `result-track:9a8cbd4e70bf6fcd03cd08e4b00eec32f4615bf7ab1be6f1a74d83fa21d7c0b6` |
| 11 | `theorem` | [map_subtype_embedding_uIcc](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant06f63551d75d3e101eafc17f90a858c3b2cadd3d8f04294c7c7558c786619258.lean/declarations/map-subtype-embedding-uicc--629b02220d9d66b423084780.md) | 51 | `result-track:629b02220d9d66b423084780d4caf8a5a528e286f24124f96a1ca7d9dd8fc9dc` |
| 12 | `theorem` | [card_Icc](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant06f63551d75d3e101eafc17f90a858c3b2cadd3d8f04294c7c7558c786619258.lean/declarations/card-icc--065e7a2a3d8d2d5f84a046fe.md) | 55 | `result-track:065e7a2a3d8d2d5f84a046fedeaee5e16dd8a205b8ab54edf9e33ec863691a11` |
| 13 | `theorem` | [card_Ico](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant06f63551d75d3e101eafc17f90a858c3b2cadd3d8f04294c7c7558c786619258.lean/declarations/card-ico--b15ea934d07eea9f03130e2e.md) | 59 | `result-track:b15ea934d07eea9f03130e2ee7cdeb74d57bc55b067fe1bc0a241e614055366c` |
| 14 | `theorem` | [card_Ioc](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant06f63551d75d3e101eafc17f90a858c3b2cadd3d8f04294c7c7558c786619258.lean/declarations/card-ioc--6626b4ecbbba5e16cc993450.md) | 63 | `result-track:6626b4ecbbba5e16cc99345085b13b5791c6bee97585d670baeb7655f9dc63db` |
| 15 | `theorem` | [card_Ioo](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant06f63551d75d3e101eafc17f90a858c3b2cadd3d8f04294c7c7558c786619258.lean/declarations/card-ioo--d5d994cc1c69e09a560afb82.md) | 67 | `result-track:d5d994cc1c69e09a560afb829ad8667c60faa7c398bacd4ee7bd52ae07351dd0` |
| 16 | `theorem` | [card_uIcc](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant06f63551d75d3e101eafc17f90a858c3b2cadd3d8f04294c7c7558c786619258.lean/declarations/card-uicc--423b2f527daa34bed9423940.md) | 71 | `result-track:423b2f527daa34bed9423940cbfca7abaf418a7a6b8db9b642d9e613610345ed` |
| 17 | `theorem` | [card_fintype_Icc](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant06f63551d75d3e101eafc17f90a858c3b2cadd3d8f04294c7c7558c786619258.lean/declarations/card-fintype-icc--2a3d4bf63d4465202a3c8fdf.md) | 74 | `result-track:2a3d4bf63d4465202a3c8fdfc2a3f0703119886b080308a24bc9f9bf767dbe03` |
| 18 | `theorem` | [card_fintype_Ico](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant06f63551d75d3e101eafc17f90a858c3b2cadd3d8f04294c7c7558c786619258.lean/declarations/card-fintype-ico--06ab5570318f5e87bec1e720.md) | 77 | `result-track:06ab5570318f5e87bec1e720c3a05bd8b0d0cfc404def4342196726d644fb1f0` |
| 19 | `theorem` | [card_fintype_Ioc](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant06f63551d75d3e101eafc17f90a858c3b2cadd3d8f04294c7c7558c786619258.lean/declarations/card-fintype-ioc--a058aaee29acd876e50ce423.md) | 80 | `result-track:a058aaee29acd876e50ce423d5a71686d76551415732816b4b344b94a69f676c` |
| 20 | `theorem` | [card_fintype_Ioo](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant06f63551d75d3e101eafc17f90a858c3b2cadd3d8f04294c7c7558c786619258.lean/declarations/card-fintype-ioo--e3fcdce93cd5a1fe4c9e26ed.md) | 83 | `result-track:e3fcdce93cd5a1fe4c9e26ed07af8deaf86273447486e82c83d3e15e60dcc482` |
| 21 | `theorem` | [card_fintype_uIcc](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant06f63551d75d3e101eafc17f90a858c3b2cadd3d8f04294c7c7558c786619258.lean/declarations/card-fintype-uicc--76ac2f505c6a732bf8d3137f.md) | 86 | `result-track:76ac2f505c6a732bf8d3137fa307f7bf7f5080bf5eec43cb71584dffef5c3f3b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
