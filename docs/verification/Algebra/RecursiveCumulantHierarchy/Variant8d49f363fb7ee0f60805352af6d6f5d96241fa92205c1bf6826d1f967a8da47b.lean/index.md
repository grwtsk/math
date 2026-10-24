# Verification target: GRWTSK.Algebra.RecursiveCumulantHierarchy.Variant8d49f363fb7ee0f60805352af6d6f5d96241fa92205c1bf6826d1f967a8da47b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f1677e362fa4f4bac4296aace5e4aa94af66f3dc",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/RecursiveCumulantHierarchy/Variant8d49f363fb7ee0f60805352af6d6f5d96241fa92205c1bf6826d1f967a8da47b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/RecursiveCumulantHierarchy/Variant8d49f363fb7ee0f60805352af6d6f5d96241fa92205c1bf6826d1f967a8da47b.lean/index.md) · [Full source](../../../../mathematics/Algebra/RecursiveCumulantHierarchy/Variant8d49f363fb7ee0f60805352af6d6f5d96241fa92205c1bf6826d1f967a8da47b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f1677e362fa4f4bac4296aace5e4aa94af66f3dc`.

Source path: `GRWTSK/Algebra/RecursiveCumulantHierarchy/Variant8d49f363fb7ee0f60805352af6d6f5d96241fa92205c1bf6826d1f967a8da47b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/RecursiveCumulantHierarchy/Variant8d49f363fb7ee0f60805352af6d6f5d96241fa92205c1bf6826d1f967a8da47b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.PositiveAtlas.FiniteCumulantPrefix` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [DirectionMomentFamily](../../../../mathematics/Algebra/RecursiveCumulantHierarchy/Variant8d49f363fb7ee0f60805352af6d6f5d96241fa92205c1bf6826d1f967a8da47b.lean/declarations/directionmomentfamily--0ba5ec01e9b6ba2e1ee7a3a0.md) | 34 | `declaration-track:0ba5ec01e9b6ba2e1ee7a3a09b87e86ae9f421a38eb40a36541615a2779824d3` |
| 2 | `def` | [lowerFamily](../../../../mathematics/Algebra/RecursiveCumulantHierarchy/Variant8d49f363fb7ee0f60805352af6d6f5d96241fa92205c1bf6826d1f967a8da47b.lean/declarations/lowerfamily--f031c7b6104da292d95ac206.md) | 41 | `declaration-track:f031c7b6104da292d95ac20632b50cc52ad38cfdde3bbe455a18ae7e9819883f` |
| 3 | `def` | [recursiveCumulantStep](../../../../mathematics/Algebra/RecursiveCumulantHierarchy/Variant8d49f363fb7ee0f60805352af6d6f5d96241fa92205c1bf6826d1f967a8da47b.lean/declarations/recursivecumulantstep--8be8cdd99c5d37544113555d.md) | 50 | `declaration-track:8be8cdd99c5d37544113555d702789d4c1b8614500cc707a384cacbeb06ba9c4` |
| 4 | `def` | [recursiveCumulantAux](../../../../mathematics/Algebra/RecursiveCumulantHierarchy/Variant8d49f363fb7ee0f60805352af6d6f5d96241fa92205c1bf6826d1f967a8da47b.lean/declarations/recursivecumulantaux--a5e0705104fab97bca2a1a8b.md) | 65 | `declaration-track:a5e0705104fab97bca2a1a8bc92a864d4d23a8c4140f4dd55b8c08e45c0154bf` |
| 5 | `def` | [recursiveCumulantFamily](../../../../mathematics/Algebra/RecursiveCumulantHierarchy/Variant8d49f363fb7ee0f60805352af6d6f5d96241fa92205c1bf6826d1f967a8da47b.lean/declarations/recursivecumulantfamily--98384f470eea89c7e193654d.md) | 75 | `declaration-track:98384f470eea89c7e193654d136b9f214e5c9eb56663388bd54cdf2da0f15db0` |
| 6 | `theorem` | [recursiveCumulantAux_eq_step](../../../../mathematics/Algebra/RecursiveCumulantHierarchy/Variant8d49f363fb7ee0f60805352af6d6f5d96241fa92205c1bf6826d1f967a8da47b.lean/declarations/recursivecumulantaux-eq-step--c55cde5f46195bf67061f2c6.md) | 81 | `result-track:c55cde5f46195bf67061f2c66245e7851f6691476af46bf7eba44c13a3bdd586` |
| 7 | `theorem` | [recursiveCumulantFamily_zero](../../../../mathematics/Algebra/RecursiveCumulantHierarchy/Variant8d49f363fb7ee0f60805352af6d6f5d96241fa92205c1bf6826d1f967a8da47b.lean/declarations/recursivecumulantfamily-zero--7c9939ba1cad4ea54f2544f0.md) | 92 | `result-track:7c9939ba1cad4ea54f2544f0d14d56f512414760abbcf1e2e8e647424d29eaf5` |
| 8 | `theorem` | [recursiveCumulantFamily_succ](../../../../mathematics/Algebra/RecursiveCumulantHierarchy/Variant8d49f363fb7ee0f60805352af6d6f5d96241fa92205c1bf6826d1f967a8da47b.lean/declarations/recursivecumulantfamily-succ--1f5b8e2379beac2f7c1f3aa3.md) | 103 | `result-track:1f5b8e2379beac2f7c1f3aa3ae613f17e7365c5f95ec79d3e01142cf17862531` |
| 9 | `theorem` | [recursiveCumulantFamily_eq_recursive](../../../../mathematics/Algebra/RecursiveCumulantHierarchy/Variant8d49f363fb7ee0f60805352af6d6f5d96241fa92205c1bf6826d1f967a8da47b.lean/declarations/recursivecumulantfamily-eq-recursive--54c55a79a261bcac80d2d40a.md) | 138 | `result-track:54c55a79a261bcac80d2d40a8eb2c5cffe1d3c2a76aa071ef0b9491913d0d568` |
| 10 | `theorem` | [recursiveCumulantFamily_eq_moment_sub_proper](../../../../mathematics/Algebra/RecursiveCumulantHierarchy/Variant8d49f363fb7ee0f60805352af6d6f5d96241fa92205c1bf6826d1f967a8da47b.lean/declarations/recursivecumulantfamily-eq-moment-sub-proper--0dd04466cd14c022929c485d.md) | 155 | `result-track:0dd04466cd14c022929c485dfdc6880606a5ffc515181018427ac91d39bd3773` |
| 11 | `structure` | [IsRecursiveCumulantFamily](../../../../mathematics/Algebra/RecursiveCumulantHierarchy/Variant8d49f363fb7ee0f60805352af6d6f5d96241fa92205c1bf6826d1f967a8da47b.lean/declarations/isrecursivecumulantfamily--ce5945936cdef9ef61286049.md) | 170 | `declaration-track:ce5945936cdef9ef61286049b410328d974caf13aa96e3aba6dfe2d43c674641` |
| 12 | `theorem` | [recursiveCumulantFamily_isRecursive](../../../../mathematics/Algebra/RecursiveCumulantHierarchy/Variant8d49f363fb7ee0f60805352af6d6f5d96241fa92205c1bf6826d1f967a8da47b.lean/declarations/recursivecumulantfamily-isrecursive--908323372e830d98daaa1ac1.md) | 184 | `result-track:908323372e830d98daaa1ac1d7f1c16d6c389f1f5565bc96e3fc0336de721b1b` |
| 13 | `theorem` | [IsRecursiveCumulantFamily.unique](../../../../mathematics/Algebra/RecursiveCumulantHierarchy/Variant8d49f363fb7ee0f60805352af6d6f5d96241fa92205c1bf6826d1f967a8da47b.lean/declarations/isrecursivecumulantfamily-unique--05feb2089cec3d1cbe83e6b4.md) | 193 | `result-track:05feb2089cec3d1cbe83e6b4a0a4d3f73126a030e99c4044d66ed307e16ca96d` |
| 14 | `theorem` | [recursiveCumulantFamily_unique](../../../../mathematics/Algebra/RecursiveCumulantHierarchy/Variant8d49f363fb7ee0f60805352af6d6f5d96241fa92205c1bf6826d1f967a8da47b.lean/declarations/recursivecumulantfamily-unique--d7ece22d59a128cbc9030abc.md) | 216 | `result-track:d7ece22d59a128cbc9030abca080db66d67dc4b8e957c3b952099cf6f361588b` |
| 15 | `def` | [MomentsAgreeBelow](../../../../mathematics/Algebra/RecursiveCumulantHierarchy/Variant8d49f363fb7ee0f60805352af6d6f5d96241fa92205c1bf6826d1f967a8da47b.lean/declarations/momentsagreebelow--b6fe474cc5c7155dc7ef55f2.md) | 225 | `declaration-track:b6fe474cc5c7155dc7ef55f2528752b8f75d55a50697d0e2843012ec638f0042` |
| 16 | `theorem` | [MomentsAgreeBelow.refl](../../../../mathematics/Algebra/RecursiveCumulantHierarchy/Variant8d49f363fb7ee0f60805352af6d6f5d96241fa92205c1bf6826d1f967a8da47b.lean/declarations/momentsagreebelow-refl--02a2e8da3f691164285016dc.md) | 232 | `result-track:02a2e8da3f691164285016dcff7e139c8b982857ae7b369ead9db4396db71e6d` |
| 17 | `theorem` | [MomentsAgreeBelow.symm](../../../../mathematics/Algebra/RecursiveCumulantHierarchy/Variant8d49f363fb7ee0f60805352af6d6f5d96241fa92205c1bf6826d1f967a8da47b.lean/declarations/momentsagreebelow-symm--adb73b3fd09be79bce1e1234.md) | 239 | `result-track:adb73b3fd09be79bce1e12346534ac49b537ba6370e889fdb21ff0ea73f5a7eb` |
| 18 | `theorem` | [MomentsAgreeBelow.trans](../../../../mathematics/Algebra/RecursiveCumulantHierarchy/Variant8d49f363fb7ee0f60805352af6d6f5d96241fa92205c1bf6826d1f967a8da47b.lean/declarations/momentsagreebelow-trans--41339c6020b1951613dd9476.md) | 247 | `result-track:41339c6020b1951613dd9476698f034049a180251d2e544d5b452ea0b01fa4b3` |
| 19 | `theorem` | [recursiveCumulantFamily_agreeBelow_of_momentsAgreeBelow](../../../../mathematics/Algebra/RecursiveCumulantHierarchy/Variant8d49f363fb7ee0f60805352af6d6f5d96241fa92205c1bf6826d1f967a8da47b.lean/declarations/recursivecumulantfamily-agreebelow-of-momentsagreebelow--2c72e260c33c1327e6da29aa.md) | 258 | `result-track:2c72e260c33c1327e6da29aae8828734f1610554e3df5943c954444d4d7705e3` |
| 20 | `theorem` | [recursiveCumulantFamily_eq_of_momentsAgreeBelow_succ](../../../../mathematics/Algebra/RecursiveCumulantHierarchy/Variant8d49f363fb7ee0f60805352af6d6f5d96241fa92205c1bf6826d1f967a8da47b.lean/declarations/recursivecumulantfamily-eq-of-momentsagreebelow-succ--b8e872b3bfcf84480b623bfe.md) | 292 | `result-track:b8e872b3bfcf84480b623bfe3afdb4ea463d307409421db82ec638b74463ef6e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
