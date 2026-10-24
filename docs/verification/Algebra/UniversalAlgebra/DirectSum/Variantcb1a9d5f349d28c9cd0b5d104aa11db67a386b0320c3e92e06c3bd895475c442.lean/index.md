# Verification target: GRWTSK.Algebra.UniversalAlgebra.DirectSum.Variantcb1a9d5f349d28c9cd0b5d104aa11db67a386b0320c3e92e06c3bd895475c442

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a47cb6615a8ce0a9b995205627b6169be0736bd7",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/DirectSum/Variantcb1a9d5f349d28c9cd0b5d104aa11db67a386b0320c3e92e06c3bd895475c442.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/DirectSum/Variantcb1a9d5f349d28c9cd0b5d104aa11db67a386b0320c3e92e06c3bd895475c442.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/DirectSum/Variantcb1a9d5f349d28c9cd0b5d104aa11db67a386b0320c3e92e06c3bd895475c442.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a47cb6615a8ce0a9b995205627b6169be0736bd7`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/DirectSum/Variantcb1a9d5f349d28c9cd0b5d104aa11db67a386b0320c3e92e06c3bd895475c442.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/DirectSum/Variantcb1a9d5f349d28c9cd0b5d104aa11db67a386b0320c3e92e06c3bd895475c442.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.DirectSum.Module` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Lie.OfAssociative` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Lie.Ideal` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Lie.Basic` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/DirectSum/Variantcb1a9d5f349d28c9cd0b5d104aa11db67a386b0320c3e92e06c3bd895475c442.lean/declarations/instance--358bca52b083c6afe04bea82.md) | 51 | `declaration-track:358bca52b083c6afe04bea828e055b6bd761b1445e63fadcb67fe33f1a5a91ca` |
| 2 | `theorem` | [lie_module_bracket_apply](../../../../../mathematics/Algebra/UniversalAlgebra/DirectSum/Variantcb1a9d5f349d28c9cd0b5d104aa11db67a386b0320c3e92e06c3bd895475c442.lean/declarations/lie-module-bracket-apply--a65e847f38c1765824061d4c.md) | 64 | `result-track:a65e847f38c1765824061d4c6ead92cbccf6cd031802c35b0fc078725ac443f2` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/DirectSum/Variantcb1a9d5f349d28c9cd0b5d104aa11db67a386b0320c3e92e06c3bd895475c442.lean/declarations/instance--dfc97321c11fd336f33b1190.md) | 67 | `declaration-track:dfc97321c11fd336f33b1190b8af839da5e327cca0af521656c141c4f75e989f` |
| 4 | `def` | [lieModuleOf](../../../../../mathematics/Algebra/UniversalAlgebra/DirectSum/Variantcb1a9d5f349d28c9cd0b5d104aa11db67a386b0320c3e92e06c3bd895475c442.lean/declarations/liemoduleof--374144a13fcb56aa89180bfe.md) | 78 | `declaration-track:374144a13fcb56aa89180bfe4af367227ded71bf8bfe2c9f474ba00581048655` |
| 5 | `def` | [lieModuleComponent](../../../../../mathematics/Algebra/UniversalAlgebra/DirectSum/Variantcb1a9d5f349d28c9cd0b5d104aa11db67a386b0320c3e92e06c3bd895475c442.lean/declarations/liemodulecomponent--a1ab452424dbafb7c2c4634d.md) | 93 | `declaration-track:a1ab452424dbafb7c2c4634d3dc397f9252d2636593e6c8bd18975cf25a9b66f` |
| 6 | `instance` | [lieRing](../../../../../mathematics/Algebra/UniversalAlgebra/DirectSum/Variantcb1a9d5f349d28c9cd0b5d104aa11db67a386b0320c3e92e06c3bd895475c442.lean/declarations/liering--e761a12588e791862e9263cc.md) | 107 | `declaration-track:e761a12588e791862e9263ccf0029f750afaddcee08193cf98cc9223bfe75c3d` |
| 7 | `theorem` | [bracket_apply](../../../../../mathematics/Algebra/UniversalAlgebra/DirectSum/Variantcb1a9d5f349d28c9cd0b5d104aa11db67a386b0320c3e92e06c3bd895475c442.lean/declarations/bracket-apply--29b2cadfe3b244524548d420.md) | 125 | `result-track:29b2cadfe3b244524548d420bf71d5d1170e72edaaec2316396c1160c10ec76e` |
| 8 | `theorem` | [lie_of_same](../../../../../mathematics/Algebra/UniversalAlgebra/DirectSum/Variantcb1a9d5f349d28c9cd0b5d104aa11db67a386b0320c3e92e06c3bd895475c442.lean/declarations/lie-of-same--d24334760274431af4a7510f.md) | 128 | `result-track:d24334760274431af4a7510f45c097d708c0881b0be51a68f4751e6bfef655f9` |
| 9 | `theorem` | [lie_of_of_ne](../../../../../mathematics/Algebra/UniversalAlgebra/DirectSum/Variantcb1a9d5f349d28c9cd0b5d104aa11db67a386b0320c3e92e06c3bd895475c442.lean/declarations/lie-of-of-ne--d5f563a1b4f14f8bb8cef510.md) | 132 | `result-track:d5f563a1b4f14f8bb8cef51087590d3e601e391cc98997287dece69677c4ec40` |
| 10 | `theorem` | [lie_of](../../../../../mathematics/Algebra/UniversalAlgebra/DirectSum/Variantcb1a9d5f349d28c9cd0b5d104aa11db67a386b0320c3e92e06c3bd895475c442.lean/declarations/lie-of--596bfaad3e5edf85b8576b12.md) | 141 | `result-track:596bfaad3e5edf85b8576b128d811364f7031a93dd61fa8a18f879bf825dfc51` |
| 11 | `instance` | [lieAlgebra](../../../../../mathematics/Algebra/UniversalAlgebra/DirectSum/Variantcb1a9d5f349d28c9cd0b5d104aa11db67a386b0320c3e92e06c3bd895475c442.lean/declarations/liealgebra--46de1497d4563567317b2bf0.md) | 147 | `declaration-track:46de1497d4563567317b2bf0596ede7e785472355545aa727cd2d3fdba6fd203` |
| 12 | `def` | [lieAlgebraOf](../../../../../mathematics/Algebra/UniversalAlgebra/DirectSum/Variantcb1a9d5f349d28c9cd0b5d104aa11db67a386b0320c3e92e06c3bd895475c442.lean/declarations/liealgebraof--0c99633a4a8e21526b7654e0.md) | 157 | `declaration-track:0c99633a4a8e21526b7654e0c0e525cac75a25cc8195e2af01307f5f9c37fa67` |
| 13 | `def` | [lieAlgebraComponent](../../../../../mathematics/Algebra/UniversalAlgebra/DirectSum/Variantcb1a9d5f349d28c9cd0b5d104aa11db67a386b0320c3e92e06c3bd895475c442.lean/declarations/liealgebracomponent--14c646ef69225a7894acdb26.md) | 164 | `declaration-track:14c646ef69225a7894acdb2665e449ef89a74cb05a1b0648fd21b8df46564b2c` |
| 14 | `theorem` | [lieAlgebra_ext](../../../../../mathematics/Algebra/UniversalAlgebra/DirectSum/Variantcb1a9d5f349d28c9cd0b5d104aa11db67a386b0320c3e92e06c3bd895475c442.lean/declarations/liealgebra-ext--22d1fa6a519093d8e57c1151.md) | 171 | `result-track:22d1fa6a519093d8e57c1151d07f584b16374ef9f12a02f730deaa92591a7cb1` |
| 15 | `def` | [toLieAlgebra](../../../../../mathematics/Algebra/UniversalAlgebra/DirectSum/Variantcb1a9d5f349d28c9cd0b5d104aa11db67a386b0320c3e92e06c3bd895475c442.lean/declarations/toliealgebra--26488ac05ceb7183f2bc3017.md) | 182 | `declaration-track:26488ac05ceb7183f2bc30177b3d6d455d323a93130e13c34c70e740d0309a8f` |
| 16 | `instance` | [lieRingOfIdeals](../../../../../mathematics/Algebra/UniversalAlgebra/DirectSum/Variantcb1a9d5f349d28c9cd0b5d104aa11db67a386b0320c3e92e06c3bd895475c442.lean/declarations/lieringofideals--c937260a0f6a8b9ec81edcf6.md) | 224 | `declaration-track:c937260a0f6a8b9ec81edcf6cedc68469d210ee4874dff6e9a32bcffc7857d1a` |
| 17 | `instance` | [lieAlgebraOfIdeals](../../../../../mathematics/Algebra/UniversalAlgebra/DirectSum/Variantcb1a9d5f349d28c9cd0b5d104aa11db67a386b0320c3e92e06c3bd895475c442.lean/declarations/liealgebraofideals--8de5435540fcae661069096c.md) | 228 | `declaration-track:8de5435540fcae661069096cdc8a3e9c56648e2b71f16c20f75c2ac54bb82bc9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
