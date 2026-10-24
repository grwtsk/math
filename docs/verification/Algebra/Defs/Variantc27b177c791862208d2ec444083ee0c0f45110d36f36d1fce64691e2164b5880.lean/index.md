# Verification target: GRWTSK.Algebra.Defs.Variantc27b177c791862208d2ec444083ee0c0f45110d36f36d1fce64691e2164b5880

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0b603769279a8121460aef93e329cdcbfed55860",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Defs/Variantc27b177c791862208d2ec444083ee0c0f45110d36f36d1fce64691e2164b5880.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Defs/Variantc27b177c791862208d2ec444083ee0c0f45110d36f36d1fce64691e2164b5880.lean/index.md) · [Full source](../../../../mathematics/Algebra/Defs/Variantc27b177c791862208d2ec444083ee0c0f45110d36f36d1fce64691e2164b5880.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0b603769279a8121460aef93e329cdcbfed55860`.

Source path: `GRWTSK/Algebra/Defs/Variantc27b177c791862208d2ec444083ee0c0f45110d36f36d1fce64691e2164b5880.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Defs/Variantc27b177c791862208d2ec444083ee0c0f45110d36f36d1fce64691e2164b5880.lean.json)

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
| 1 | `class` | [CharZero](../../../../mathematics/Algebra/Defs/Variantc27b177c791862208d2ec444083ee0c0f45110d36f36d1fce64691e2164b5880.lean/declarations/charzero--e4cdf89c4de08366f40208c5.md) | 50 | `declaration-track:e4cdf89c4de08366f40208c512fd9757205ca2569007f2057ff0145359f77f57` |
| 2 | `theorem` | [charZero_of_inj_zero](../../../../mathematics/Algebra/Defs/Variantc27b177c791862208d2ec444083ee0c0f45110d36f36d1fce64691e2164b5880.lean/declarations/charzero-of-inj-zero--88ddd148021e02d541869b20.md) | 57 | `result-track:88ddd148021e02d541869b206036440f097457624b157a887763c266f354a283` |
| 3 | `theorem` | [cast_injective](../../../../mathematics/Algebra/Defs/Variantc27b177c791862208d2ec444083ee0c0f45110d36f36d1fce64691e2164b5880.lean/declarations/cast-injective--0af793fbee47e208d59ee41d.md) | 71 | `result-track:0af793fbee47e208d59ee41d81a65b38b355bd51097237c85c9c42f348885eb2` |
| 4 | `theorem` | [cast_inj](../../../../mathematics/Algebra/Defs/Variantc27b177c791862208d2ec444083ee0c0f45110d36f36d1fce64691e2164b5880.lean/declarations/cast-inj--a6199189fe6cb47b5a1d5c0e.md) | 75 | `result-track:a6199189fe6cb47b5a1d5c0e85be839a93e8429d3c696d4feaa50556e32e5236` |
| 5 | `theorem` | [cast_eq_zero](../../../../mathematics/Algebra/Defs/Variantc27b177c791862208d2ec444083ee0c0f45110d36f36d1fce64691e2164b5880.lean/declarations/cast-eq-zero--b67ad0b78296621a082e27bb.md) | 79 | `result-track:b67ad0b78296621a082e27bb788e7da88e5b0fa19d6fa99f0a13e470c56c1607` |
| 6 | `theorem` | [cast_ne_zero](../../../../mathematics/Algebra/Defs/Variantc27b177c791862208d2ec444083ee0c0f45110d36f36d1fce64691e2164b5880.lean/declarations/cast-ne-zero--705e81c4a99a065658cbe406.md) | 82 | `result-track:705e81c4a99a065658cbe40678c1a42fd74dc368f11b7450dbe632dc85381e11` |
| 7 | `theorem` | [cast_add_one_ne_zero](../../../../mathematics/Algebra/Defs/Variantc27b177c791862208d2ec444083ee0c0f45110d36f36d1fce64691e2164b5880.lean/declarations/cast-add-one-ne-zero--3359f53f1fe501f6d7218922.md) | 85 | `result-track:3359f53f1fe501f6d7218922138d12a241ad8c83c1792a88962472d70b5e8bb4` |
| 8 | `theorem` | [cast_eq_one](../../../../mathematics/Algebra/Defs/Variantc27b177c791862208d2ec444083ee0c0f45110d36f36d1fce64691e2164b5880.lean/declarations/cast-eq-one--c1620e153e7b2578db839ce6.md) | 89 | `result-track:c1620e153e7b2578db839ce610d81b802ca4d339632b6ad3e01b049c04608209` |
| 9 | `theorem` | [cast_ne_one](../../../../mathematics/Algebra/Defs/Variantc27b177c791862208d2ec444083ee0c0f45110d36f36d1fce64691e2164b5880.lean/declarations/cast-ne-one--3597355aaa93445fec0fd5c6.md) | 92 | `result-track:3597355aaa93445fec0fd5c6a0b7c8e7f5c94f3745a68af6d85311327d6d70b5` |
| 10 | `lemma` | [ofNat_ne_zero](../../../../mathematics/Algebra/Defs/Variantc27b177c791862208d2ec444083ee0c0f45110d36f36d1fce64691e2164b5880.lean/declarations/ofnat-ne-zero--ab241bc7f9feca40a3e0d06f.md) | 101 | `result-track:ab241bc7f9feca40a3e0d06fc20da115fa35bf43f7afba54b118725c4daa9308` |
| 11 | `lemma` | [zero_ne_ofNat](../../../../mathematics/Algebra/Defs/Variantc27b177c791862208d2ec444083ee0c0f45110d36f36d1fce64691e2164b5880.lean/declarations/zero-ne-ofnat--e86e786ba66224e259d1a21d.md) | 104 | `result-track:e86e786ba66224e259d1a21dc2f92af4eae52ea34eb4568f44f73a8036151a6d` |
| 12 | `lemma` | [ofNat_ne_one](../../../../mathematics/Algebra/Defs/Variantc27b177c791862208d2ec444083ee0c0f45110d36f36d1fce64691e2164b5880.lean/declarations/ofnat-ne-one--d7d91ece9533d7ab97b69b9b.md) | 107 | `result-track:d7d91ece9533d7ab97b69b9b918bef217ee6b0e6fd5de4745980b0caed2149d1` |
| 13 | `lemma` | [one_ne_ofNat](../../../../mathematics/Algebra/Defs/Variantc27b177c791862208d2ec444083ee0c0f45110d36f36d1fce64691e2164b5880.lean/declarations/one-ne-ofnat--ca42b56f96a8ad43cb79bd56.md) | 110 | `result-track:ca42b56f96a8ad43cb79bd56fd71a1fee286a625d87ae625d29aa87b521fe29e` |
| 14 | `lemma` | [ofNat_eq_ofNat](../../../../mathematics/Algebra/Defs/Variantc27b177c791862208d2ec444083ee0c0f45110d36f36d1fce64691e2164b5880.lean/declarations/ofnat-eq-ofnat--133b2f8c21c347b391978fe7.md) | 113 | `result-track:133b2f8c21c347b391978fe7eaab68277514aa780c879fc4440ab2dafe956b02` |
| 15 | `instance` | [charZero](../../../../mathematics/Algebra/Defs/Variantc27b177c791862208d2ec444083ee0c0f45110d36f36d1fce64691e2164b5880.lean/declarations/charzero--d5f0f8be8eff5a809d5efe3e.md) | 121 | `declaration-track:d5f0f8be8eff5a809d5efe3e496897dd9c33ceb34c84471be570128989f67ade` |
| 16 | `instance` | [charZero_one](../../../../mathematics/Algebra/Defs/Variantc27b177c791862208d2ec444083ee0c0f45110d36f36d1fce64691e2164b5880.lean/declarations/charzero-one--f12a6b8cec4d988f5ed6612e.md) | 124 | `declaration-track:f12a6b8cec4d988f5ed6612e181c127184524853435ba9a9e06fcf592d619f91` |
| 17 | `instance` | [charZero_ofNat](../../../../mathematics/Algebra/Defs/Variantc27b177c791862208d2ec444083ee0c0f45110d36f36d1fce64691e2164b5880.lean/declarations/charzero-ofnat--c2f2e2aa28e29245265236a3.md) | 129 | `declaration-track:c2f2e2aa28e29245265236a3b0ae06a7354db3584b06dc315458f2c702eb5db5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
