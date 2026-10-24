# Verification target: GRWTSK.Algebra.LinearAlgebra.FiniteLength.Variantc040a9e68f03d05ae5a40ff2ab74b57765676f88d8660e1d727bf100520b457d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e6258bebaf1eeb50be240fa17ddd3ae2c3397651",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/FiniteLength/Variantc040a9e68f03d05ae5a40ff2ab74b57765676f88d8660e1d727bf100520b457d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/FiniteLength/Variantc040a9e68f03d05ae5a40ff2ab74b57765676f88d8660e1d727bf100520b457d.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/FiniteLength/Variantc040a9e68f03d05ae5a40ff2ab74b57765676f88d8660e1d727bf100520b457d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e6258bebaf1eeb50be240fa17ddd3ae2c3397651`.

Source path: `GRWTSK/Algebra/LinearAlgebra/FiniteLength/Variantc040a9e68f03d05ae5a40ff2ab74b57765676f88d8660e1d727bf100520b457d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/FiniteLength/Variantc040a9e68f03d05ae5a40ff2ab74b57765676f88d8660e1d727bf100520b457d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Artinian.Module` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [IsFiniteLength](../../../../../mathematics/Algebra/LinearAlgebra/FiniteLength/Variantc040a9e68f03d05ae5a40ff2ab74b57765676f88d8660e1d727bf100520b457d.lean/declarations/isfinitelength--908d4d7591d695d1167ecc5b.md) | 26 | `declaration-track:908d4d7591d695d1167ecc5bc2c267f13aa1c1cbc47ec55a9ed9bf09fd541e9e` |
| 2 | `theorem` | [LinearEquiv.isFiniteLength](../../../../../mathematics/Algebra/LinearAlgebra/FiniteLength/Variantc040a9e68f03d05ae5a40ff2ab74b57765676f88d8660e1d727bf100520b457d.lean/declarations/linearequiv-isfinitelength--ef8947e7ff8723751b1e4c15.md) | 35 | `result-track:ef8947e7ff8723751b1e4c15f188b8887160063c0f8dd387105124d5a4d79c60` |
| 3 | `theorem` | [exists_compositionSeries_of_isNoetherian_isArtinian](../../../../../mathematics/Algebra/LinearAlgebra/FiniteLength/Variantc040a9e68f03d05ae5a40ff2ab74b57765676f88d8660e1d727bf100520b457d.lean/declarations/exists-compositionseries-of-isnoetherian-isartinian--1927f603468831fd75bbc0ac.md) | 46 | `result-track:1927f603468831fd75bbc0ac2b580291ff6a69767d219c9908b3f2d286508bfe` |
| 4 | `theorem` | [isFiniteLength_of_exists_compositionSeries](../../../../../mathematics/Algebra/LinearAlgebra/FiniteLength/Variantc040a9e68f03d05ae5a40ff2ab74b57765676f88d8660e1d727bf100520b457d.lean/declarations/isfinitelength-of-exists-compositionseries--c45001bb825e0ad91b944795.md) | 51 | `result-track:c45001bb825e0ad91b944795522fa516d16f42916c1d63c7589f1900db446cf9` |
| 5 | `theorem` | [isFiniteLength_iff_isNoetherian_isArtinian](../../../../../mathematics/Algebra/LinearAlgebra/FiniteLength/Variantc040a9e68f03d05ae5a40ff2ab74b57765676f88d8660e1d727bf100520b457d.lean/declarations/isfinitelength-iff-isnoetherian-isartinian--d3d22ed20cdc5cecddc77178.md) | 68 | `result-track:d3d22ed20cdc5cecddc771784742d5f0a31c4063572bd83dcbd6fcf637c2353c` |
| 6 | `theorem` | [isFiniteLength_iff_exists_compositionSeries](../../../../../mathematics/Algebra/LinearAlgebra/FiniteLength/Variantc040a9e68f03d05ae5a40ff2ab74b57765676f88d8660e1d727bf100520b457d.lean/declarations/isfinitelength-iff-exists-compositionseries--2735336aca24b1c2afa33b34.md) | 76 | `result-track:2735336aca24b1c2afa33b34d78a15c67862e150e94d5dedb4bcef4f9e6275b3` |
| 7 | `theorem` | [IsSemisimpleModule.finite_tfae](../../../../../mathematics/Algebra/LinearAlgebra/FiniteLength/Variantc040a9e68f03d05ae5a40ff2ab74b57765676f88d8660e1d727bf100520b457d.lean/declarations/issemisimplemodule-finite-tfae--50aece872819660f30d174e9.md) | 82 | `result-track:50aece872819660f30d174e9ca4fedc6d998608663a5943e11db191ace744a5c` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/FiniteLength/Variantc040a9e68f03d05ae5a40ff2ab74b57765676f88d8660e1d727bf100520b457d.lean/declarations/instance--b672e7b7a3f087287d91b08f.md) | 101 | `declaration-track:b672e7b7a3f087287d91b08ffba70905b71f6d91340da9a9f1d88150b7a71efe` |
| 9 | `lemma` | [IsFiniteLength.of_injective](../../../../../mathematics/Algebra/LinearAlgebra/FiniteLength/Variantc040a9e68f03d05ae5a40ff2ab74b57765676f88d8660e1d727bf100520b457d.lean/declarations/isfinitelength-of-injective--84a49ad2a73a91e06f1d3508.md) | 106 | `result-track:84a49ad2a73a91e06f1d35085077b2e175f005e4619e91ea03de84c65f03ac2b` |
| 10 | `lemma` | [IsFiniteLength.of_surjective](../../../../../mathematics/Algebra/LinearAlgebra/FiniteLength/Variantc040a9e68f03d05ae5a40ff2ab74b57765676f88d8660e1d727bf100520b457d.lean/declarations/isfinitelength-of-surjective--0cf509a4a67fb9235bd003ed.md) | 112 | `result-track:0cf509a4a67fb9235bd003edcd766bbf32cf2f466d5535d5552755a7e478ecd8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
