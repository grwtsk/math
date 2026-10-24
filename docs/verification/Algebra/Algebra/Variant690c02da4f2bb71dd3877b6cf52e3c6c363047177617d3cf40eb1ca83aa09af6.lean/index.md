# Verification target: GRWTSK.Algebra.Algebra.Variant690c02da4f2bb71dd3877b6cf52e3c6c363047177617d3cf40eb1ca83aa09af6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "283c4cf0a956dfeba81e210652ebcc48f2ec51ae",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Algebra/Variant690c02da4f2bb71dd3877b6cf52e3c6c363047177617d3cf40eb1ca83aa09af6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Algebra/Variant690c02da4f2bb71dd3877b6cf52e3c6c363047177617d3cf40eb1ca83aa09af6.lean/index.md) · [Full source](../../../../mathematics/Algebra/Algebra/Variant690c02da4f2bb71dd3877b6cf52e3c6c363047177617d3cf40eb1ca83aa09af6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `283c4cf0a956dfeba81e210652ebcc48f2ec51ae`.

Source path: `GRWTSK/Algebra/Algebra/Variant690c02da4f2bb71dd3877b6cf52e3c6c363047177617d3cf40eb1ca83aa09af6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Algebra/Variant690c02da4f2bb71dd3877b6cf52e3c6c363047177617d3cf40eb1ca83aa09af6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [Module.FaithfullyFlat.of_comap_surjective](../../../../mathematics/Algebra/Algebra/Variant690c02da4f2bb71dd3877b6cf52e3c6c363047177617d3cf40eb1ca83aa09af6.lean/declarations/module-faithfullyflat-of-comap-surjective--76a9692faea816f24979aa94.md) | 48 | `result-track:76a9692faea816f24979aa94564a7ec7fea6b5f13676a7fbf91f367c189de024` |
| 2 | `lemma` | [Module.FaithfullyFlat.of_flat_of_isLocalHom](../../../../mathematics/Algebra/Algebra/Variant690c02da4f2bb71dd3877b6cf52e3c6c363047177617d3cf40eb1ca83aa09af6.lean/declarations/module-faithfullyflat-of-flat-of-islocalhom--8c78f07eaa80174d46eb8e93.md) | 60 | `result-track:8c78f07eaa80174d46eb8e9375d11925660141b43fcd9bf071f147bf7a55126c` |
| 3 | `instance` | [Module.FaithfullyFlat.of_isIntegral_of_isDomain](../../../../mathematics/Algebra/Algebra/Variant690c02da4f2bb71dd3877b6cf52e3c6c363047177617d3cf40eb1ca83aa09af6.lean/declarations/module-faithfullyflat-of-isintegral-of-isdomain--4b571078961457184e16113a.md) | 71 | `declaration-track:4b571078961457184e16113adb2eb5e6374fc10b639a92ab8c96446b81014d7b` |
| 4 | `lemma` | [Module.FaithfullyFlat.tensorProduct_mk_injective](../../../../mathematics/Algebra/Algebra/Variant690c02da4f2bb71dd3877b6cf52e3c6c363047177617d3cf40eb1ca83aa09af6.lean/declarations/module-faithfullyflat-tensorproduct-mk-injective--e81cb33432aae5b436209b2f.md) | 85 | `result-track:e81cb33432aae5b436209b2f45b43cf78d013dfcc61ac39a35754373bfdea348` |
| 5 | `instance` | [Module.FaithfullyFlat.faithfulSMul](../../../../mathematics/Algebra/Algebra/Variant690c02da4f2bb71dd3877b6cf52e3c6c363047177617d3cf40eb1ca83aa09af6.lean/declarations/module-faithfullyflat-faithfulsmul--352f02d11e3c2b2bc406e80f.md) | 96 | `declaration-track:352f02d11e3c2b2bc406e80f15d483fb29ce4a5a9beefaac5570bfdf8e25c1e9` |
| 6 | `lemma` | [Ideal.comap_map_eq_self_of_faithfullyFlat](../../../../mathematics/Algebra/Algebra/Variant690c02da4f2bb71dd3877b6cf52e3c6c363047177617d3cf40eb1ca83aa09af6.lean/declarations/ideal-comap-map-eq-self-of-faithfullyflat--4b626b3801cb529082880362.md) | 107 | `result-track:4b626b3801cb5290828803622d45be2cd8319d78df5dad2f7931c1658d60f927` |
| 7 | `lemma` | [Ideal.comap_surjective_of_faithfullyFlat](../../../../mathematics/Algebra/Algebra/Variant690c02da4f2bb71dd3877b6cf52e3c6c363047177617d3cf40eb1ca83aa09af6.lean/declarations/ideal-comap-surjective-of-faithfullyflat--c6a030497bfce07533f4e776.md) | 127 | `result-track:c6a030497bfce07533f4e776aa23b941d98428ad10b5ff1a43e437a7295f14cc` |
| 8 | `lemma` | [Ideal.map_injective_of_faithfullyFlat](../../../../mathematics/Algebra/Algebra/Variant690c02da4f2bb71dd3877b6cf52e3c6c363047177617d3cf40eb1ca83aa09af6.lean/declarations/ideal-map-injective-of-faithfullyflat--a2436d0fc177387e8bcad70b.md) | 132 | `result-track:a2436d0fc177387e8bcad70bd4e80625f8815fafa895904c973296add02805b6` |
| 9 | `lemma` | [Ideal.exists_isPrime_liesOver_of_faithfullyFlat](../../../../mathematics/Algebra/Algebra/Variant690c02da4f2bb71dd3877b6cf52e3c6c363047177617d3cf40eb1ca83aa09af6.lean/declarations/ideal-exists-isprime-liesover-of-faithfullyflat--c792360ef5df60b15793e13f.md) | 138 | `result-track:c792360ef5df60b15793e13f5b4a8e341f6d813695f5c22feba8da26348e3583` |
| 10 | `lemma` | [PrimeSpectrum.comap_surjective_of_faithfullyFlat](../../../../mathematics/Algebra/Algebra/Variant690c02da4f2bb71dd3877b6cf52e3c6c363047177617d3cf40eb1ca83aa09af6.lean/declarations/primespectrum-comap-surjective-of-faithfullyflat--425523b4930b07a33ef02568.md) | 146 | `result-track:425523b4930b07a33ef025687be9df3833b68d884af4290bd732e059fffc1c7c` |
| 11 | `instance` | [Module.FaithfullyFlat.isLocalHom](../../../../mathematics/Algebra/Algebra/Variant690c02da4f2bb71dd3877b6cf52e3c6c363047177617d3cf40eb1ca83aa09af6.lean/declarations/module-faithfullyflat-islocalhom--3138a8490275702bf7ace3b2.md) | 155 | `declaration-track:3138a8490275702bf7ace3b2d8b7ba7cf0a744d83e486bd4d9131c451c058ebb` |
| 12 | `theorem` | [Module.FaithfullyFlat.isLocalRing](../../../../mathematics/Algebra/Algebra/Variant690c02da4f2bb71dd3877b6cf52e3c6c363047177617d3cf40eb1ca83aa09af6.lean/declarations/module-faithfullyflat-islocalring--81aa4bb78eb2e4fe642b6d8c.md) | 159 | `result-track:81aa4bb78eb2e4fe642b6d8c3ea975537c3dccfd59b3d5100d00acb755ab4b17` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
