# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.IsEmpty.Variantbe90c690e93b6b8b9fbd8d060066608326986f4bb14d871ab70a166014044198

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9f5b997cfdd8678ed0db9c782628c1a439eb068d",
  "lexical_observation_count": 43,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/IsEmpty/Variantbe90c690e93b6b8b9fbd8d060066608326986f4bb14d871ab70a166014044198.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/IsEmpty/Variantbe90c690e93b6b8b9fbd8d060066608326986f4bb14d871ab70a166014044198.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/IsEmpty/Variantbe90c690e93b6b8b9fbd8d060066608326986f4bb14d871ab70a166014044198.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9f5b997cfdd8678ed0db9c782628c1a439eb068d`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/IsEmpty/Variantbe90c690e93b6b8b9fbd8d060066608326986f4bb14d871ab70a166014044198.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/IsEmpty/Variantbe90c690e93b6b8b9fbd8d060066608326986f4bb14d871ab70a166014044198.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Logic.Function.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [IsEmpty](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/IsEmpty/Variantbe90c690e93b6b8b9fbd8d060066608326986f4bb14d871ab70a166014044198.lean/declarations/isempty--3319d4b043d5b94a6720ed72.md) | 34 | `declaration-track:3319d4b043d5b94a6720ed72749222542d76962f4a3870aef7bf98777cd9856a` |
| 2 | `instance` | [instIsEmptyEmpty](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/IsEmpty/Variantbe90c690e93b6b8b9fbd8d060066608326986f4bb14d871ab70a166014044198.lean/declarations/instisemptyempty--b7f3b29cc31639aae8d7075b.md) | 38 | `declaration-track:b7f3b29cc31639aae8d7075b10bc30e8ce12b8e837fc9c406f686b412f4424e1` |
| 3 | `instance` | [instIsEmptyPEmpty](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/IsEmpty/Variantbe90c690e93b6b8b9fbd8d060066608326986f4bb14d871ab70a166014044198.lean/declarations/instisemptypempty--ea5a315f3c72110d0aef19be.md) | 41 | `declaration-track:ea5a315f3c72110d0aef19bebc7901bab0d582283ae539a1cd28f55cec6e9bb7` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/IsEmpty/Variantbe90c690e93b6b8b9fbd8d060066608326986f4bb14d871ab70a166014044198.lean/declarations/instance--259582100169bd9502351650.md) | 44 | `declaration-track:259582100169bd95023516504771bfe2148be532a8a2990ec4e561d49aa8634b` |
| 5 | `instance` | [Fin.isEmpty](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/IsEmpty/Variantbe90c690e93b6b8b9fbd8d060066608326986f4bb14d871ab70a166014044198.lean/declarations/fin-isempty--4d67f2025dcca5cc0d7f6844.md) | 47 | `declaration-track:4d67f2025dcca5cc0d7f6844b8b390cd71f2c37e697e47e88c12b56fbd80a5d1` |
| 6 | `theorem` | [Function.isEmpty](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/IsEmpty/Variantbe90c690e93b6b8b9fbd8d060066608326986f4bb14d871ab70a166014044198.lean/declarations/function-isempty--69b23b6c3e770b3847acb48a.md) | 50 | `result-track:69b23b6c3e770b3847acb48a8c288bd5ce9ecfa9e9d7059744d60e0bd7d7b11d` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/IsEmpty/Variantbe90c690e93b6b8b9fbd8d060066608326986f4bb14d871ab70a166014044198.lean/declarations/instance--b9382921cd3183914e784646.md) | 54 | `declaration-track:b9382921cd3183914e78464602dbd2e4e8fb4ddfb93ddc07e30550148afc240d` |
| 8 | `instance` | [PProd.isEmpty_left](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/IsEmpty/Variantbe90c690e93b6b8b9fbd8d060066608326986f4bb14d871ab70a166014044198.lean/declarations/pprod-isempty-left--e6dcc130a590c2606762e5c6.md) | 57 | `declaration-track:e6dcc130a590c2606762e5c688daa2d485deff199920d106719bbcf2f58e72e5` |
| 9 | `instance` | [PProd.isEmpty_right](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/IsEmpty/Variantbe90c690e93b6b8b9fbd8d060066608326986f4bb14d871ab70a166014044198.lean/declarations/pprod-isempty-right--a5b3d78914c393d94e4e459f.md) | 60 | `declaration-track:a5b3d78914c393d94e4e459fd66b73dd0daa0c409082fc86b0a4ef7f1fc48d12` |
| 10 | `instance` | [Prod.isEmpty_left](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/IsEmpty/Variantbe90c690e93b6b8b9fbd8d060066608326986f4bb14d871ab70a166014044198.lean/declarations/prod-isempty-left--7a32582148c3528d0e18b572.md) | 63 | `declaration-track:7a32582148c3528d0e18b572be34fa0b7bb3b02e782220d515c98a232eef0a1c` |
| 11 | `instance` | [Prod.isEmpty_right](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/IsEmpty/Variantbe90c690e93b6b8b9fbd8d060066608326986f4bb14d871ab70a166014044198.lean/declarations/prod-isempty-right--e6061cc74bd2c0a256662851.md) | 66 | `declaration-track:e6061cc74bd2c0a2566628518d511aa82dffc8c723c99844e4d655288a21c4ab` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/IsEmpty/Variantbe90c690e93b6b8b9fbd8d060066608326986f4bb14d871ab70a166014044198.lean/declarations/instance--5ee439fa45d524d47556059c.md) | 69 | `declaration-track:5ee439fa45d524d47556059ce47685196db7b711835d7584d5ead98f3063fff8` |
| 13 | `instance` | [instIsEmptySum](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/IsEmpty/Variantbe90c690e93b6b8b9fbd8d060066608326986f4bb14d871ab70a166014044198.lean/declarations/instisemptysum--a2b68056813169df9480de20.md) | 72 | `declaration-track:a2b68056813169df9480de2042d5f36851188a34b05fdfd81a1661a5bab43630` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/IsEmpty/Variantbe90c690e93b6b8b9fbd8d060066608326986f4bb14d871ab70a166014044198.lean/declarations/instance--075322ea52f57b9bfdc8fe84.md) | 76 | `declaration-track:075322ea52f57b9bfdc8fe84c8b8f2282d30ad6fc95ced9429682fd7a4c241c0` |
| 15 | `theorem` | [Subtype.isEmpty_of_false](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/IsEmpty/Variantbe90c690e93b6b8b9fbd8d060066608326986f4bb14d871ab70a166014044198.lean/declarations/subtype-isempty-of-false--e4be14ff56656702a96fa774.md) | 80 | `result-track:e4be14ff56656702a96fa7743f9261d2cfbe25f4fff22ceb555c08f3099d9b87` |
| 16 | `instance` | [Subtype.isEmpty_false](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/IsEmpty/Variantbe90c690e93b6b8b9fbd8d060066608326986f4bb14d871ab70a166014044198.lean/declarations/subtype-isempty-false--417288a7d52b1c70179f68ce.md) | 85 | `declaration-track:417288a7d52b1c70179f68ce8b3534686d31cedbb020c06ea12e7f1dbde58244` |
| 17 | `instance` | [Sigma.isEmpty_left](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/IsEmpty/Variantbe90c690e93b6b8b9fbd8d060066608326986f4bb14d871ab70a166014044198.lean/declarations/sigma-isempty-left--f10ed9efd86d30ad1a3efc45.md) | 88 | `declaration-track:f10ed9efd86d30ad1a3efc45560aa6f81e1b0f84011eaffae3469938e19bae84` |
| 18 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/IsEmpty/Variantbe90c690e93b6b8b9fbd8d060066608326986f4bb14d871ab70a166014044198.lean/declarations/example--28c39e2654a98d6bd98e3472.md) | 91 | `declaration-track:28c39e2654a98d6bd98e3472c1e163fdac4eb2bd04fa963ea0d0c0869d5ebe5d` |
| 19 | `def` | [isEmptyElim](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/IsEmpty/Variantbe90c690e93b6b8b9fbd8d060066608326986f4bb14d871ab70a166014044198.lean/declarations/isemptyelim--bae4fbb5541447b10a22e739.md) | 95 | `declaration-track:bae4fbb5541447b10a22e739ea19c45328bb45112a7e86f4074b26d01847d688` |
| 20 | `theorem` | [isEmpty_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/IsEmpty/Variantbe90c690e93b6b8b9fbd8d060066608326986f4bb14d871ab70a166014044198.lean/declarations/isempty-iff--da277e2efa669f4a2fbc43ac.md) | 99 | `result-track:da277e2efa669f4a2fbc43accc72e7bf783b09900f075ad88bb63156c8a747f7` |
| 21 | `def` | [elim](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/IsEmpty/Variantbe90c690e93b6b8b9fbd8d060066608326986f4bb14d871ab70a166014044198.lean/declarations/elim--0b4ff48be632c23050dfb2d6.md) | 109 | `declaration-track:0b4ff48be632c23050dfb2d6e7bb156d99aed4ec348583444b44d19639329888` |
| 22 | `def` | [elim'](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/IsEmpty/Variantbe90c690e93b6b8b9fbd8d060066608326986f4bb14d871ab70a166014044198.lean/declarations/elim--d559bc805ac1f8acdcb6647d.md) | 115 | `declaration-track:d559bc805ac1f8acdcb6647d7bc9159f8005ad5453982686368511743c6e9e08` |
| 23 | `theorem` | [prop_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/IsEmpty/Variantbe90c690e93b6b8b9fbd8d060066608326986f4bb14d871ab70a166014044198.lean/declarations/prop-iff--7d0185a2866a7bd268942040.md) | 119 | `result-track:7d0185a2866a7bd2689420404289386549a205284d940b2b814861f3f76164fb` |
| 24 | `theorem` | [forall_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/IsEmpty/Variantbe90c690e93b6b8b9fbd8d060066608326986f4bb14d871ab70a166014044198.lean/declarations/forall-iff--8d664c4224f48993ba0fe20c.md) | 126 | `result-track:8d664c4224f48993ba0fe20c53e342714bebbbe05bc663f2250ecedac693a6ce` |
| 25 | `theorem` | [exists_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/IsEmpty/Variantbe90c690e93b6b8b9fbd8d060066608326986f4bb14d871ab70a166014044198.lean/declarations/exists-iff--01c3441f1e82aae90996ed9e.md) | 131 | `result-track:01c3441f1e82aae90996ed9e743a7d418811703f53d1bcf307654acdc40cf2fe` |
| 26 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/IsEmpty/Variantbe90c690e93b6b8b9fbd8d060066608326986f4bb14d871ab70a166014044198.lean/declarations/instance--3d5d7caec5c0e4f001adf629.md) | 136 | `declaration-track:3d5d7caec5c0e4f001adf629e4db90b860696fe3aa637328a736adcf97d9e5d7` |
| 27 | `theorem` | [not_nonempty_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/IsEmpty/Variantbe90c690e93b6b8b9fbd8d060066608326986f4bb14d871ab70a166014044198.lean/declarations/not-nonempty-iff--cfe6a0d21de7006912cd8d0d.md) | 142 | `result-track:cfe6a0d21de7006912cd8d0d497fa43dba447056bc17c579cfccb19a38ba37d1` |
| 28 | `theorem` | [not_isEmpty_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/IsEmpty/Variantbe90c690e93b6b8b9fbd8d060066608326986f4bb14d871ab70a166014044198.lean/declarations/not-isempty-iff--59f20b93e01c758ce74d2019.md) | 147 | `result-track:59f20b93e01c758ce74d201907e72cbb314b23a7c660f55e56bb2617f98f75aa` |
| 29 | `theorem` | [isEmpty_Prop](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/IsEmpty/Variantbe90c690e93b6b8b9fbd8d060066608326986f4bb14d871ab70a166014044198.lean/declarations/isempty-prop--86d04ba7374dd3148cf02185.md) | 152 | `result-track:86d04ba7374dd3148cf0218571335c1263a5ac53ac36d5200df66c8229c400ff` |
| 30 | `theorem` | [isEmpty_pi](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/IsEmpty/Variantbe90c690e93b6b8b9fbd8d060066608326986f4bb14d871ab70a166014044198.lean/declarations/isempty-pi--762738d029129f6b33b568d1.md) | 157 | `result-track:762738d029129f6b33b568d1f02bc3b798d981c00e27cfe1f86c30afee63d10b` |
| 31 | `theorem` | [isEmpty_sigma](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/IsEmpty/Variantbe90c690e93b6b8b9fbd8d060066608326986f4bb14d871ab70a166014044198.lean/declarations/isempty-sigma--6919243c721c4d262cb232e3.md) | 162 | `result-track:6919243c721c4d262cb232e33ef0f14b5d12cbdf1d6be300b45a72bb0420795a` |
| 32 | `theorem` | [isEmpty_psigma](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/IsEmpty/Variantbe90c690e93b6b8b9fbd8d060066608326986f4bb14d871ab70a166014044198.lean/declarations/isempty-psigma--36167593be01070e6e0c9c32.md) | 167 | `result-track:36167593be01070e6e0c9c32c34ea08fd5a02638a11d5d936af3ece2606d2d20` |
| 33 | `theorem` | [isEmpty_subtype](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/IsEmpty/Variantbe90c690e93b6b8b9fbd8d060066608326986f4bb14d871ab70a166014044198.lean/declarations/isempty-subtype--0e72e31842d182f0fad942d7.md) | 172 | `result-track:0e72e31842d182f0fad942d7279b9898a506047ecb237da00145180223899fa8` |
| 34 | `theorem` | [isEmpty_prod](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/IsEmpty/Variantbe90c690e93b6b8b9fbd8d060066608326986f4bb14d871ab70a166014044198.lean/declarations/isempty-prod--e2ad1b2a933df1577d58af1a.md) | 177 | `result-track:e2ad1b2a933df1577d58af1aa6038a6ac94e0d772230ae97e11007e4487880b2` |
| 35 | `theorem` | [isEmpty_pprod](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/IsEmpty/Variantbe90c690e93b6b8b9fbd8d060066608326986f4bb14d871ab70a166014044198.lean/declarations/isempty-pprod--02b46601f7587dc7fcb531fa.md) | 182 | `result-track:02b46601f7587dc7fcb531fa73d0d6d08b6ab31bc02ecbac3716655545f456ba` |
| 36 | `theorem` | [isEmpty_sum](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/IsEmpty/Variantbe90c690e93b6b8b9fbd8d060066608326986f4bb14d871ab70a166014044198.lean/declarations/isempty-sum--90478b60c60c1a2b034ebf79.md) | 187 | `result-track:90478b60c60c1a2b034ebf79efb46b3c796f7a6ce8f802abea455c750345c08b` |
| 37 | `theorem` | [isEmpty_psum](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/IsEmpty/Variantbe90c690e93b6b8b9fbd8d060066608326986f4bb14d871ab70a166014044198.lean/declarations/isempty-psum--d9e561f35e8b1a51b36b1f43.md) | 192 | `result-track:d9e561f35e8b1a51b36b1f432f8a077d982c9473964c335984eb2e64388aaef2` |
| 38 | `theorem` | [isEmpty_ulift](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/IsEmpty/Variantbe90c690e93b6b8b9fbd8d060066608326986f4bb14d871ab70a166014044198.lean/declarations/isempty-ulift--3d146b93f923c7d30275ba9e.md) | 197 | `result-track:3d146b93f923c7d30275ba9ebe8088435ef8da3a39528542c39606b85d6d4c70` |
| 39 | `theorem` | [isEmpty_plift](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/IsEmpty/Variantbe90c690e93b6b8b9fbd8d060066608326986f4bb14d871ab70a166014044198.lean/declarations/isempty-plift--c2a97894974ed8d97a5ef339.md) | 202 | `result-track:c2a97894974ed8d97a5ef339d98bc8359e749a96cbc1254a24639eaa5f0fd3ec` |
| 40 | `theorem` | [wellFounded_of_isEmpty](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/IsEmpty/Variantbe90c690e93b6b8b9fbd8d060066608326986f4bb14d871ab70a166014044198.lean/declarations/wellfounded-of-isempty--040c52bda00f0dbbd64eb803.md) | 206 | `result-track:040c52bda00f0dbbd64eb8037a8ae0bda7a8237d7a7e57f179fe4ce4be42552f` |
| 41 | `theorem` | [isEmpty_or_nonempty](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/IsEmpty/Variantbe90c690e93b6b8b9fbd8d060066608326986f4bb14d871ab70a166014044198.lean/declarations/isempty-or-nonempty--01d16b7db3563055cce0fc5b.md) | 212 | `result-track:01d16b7db3563055cce0fc5b92ceeeb6d9b19845018a9b84314c744eba1baa1e` |
| 42 | `theorem` | [not_isEmpty_of_nonempty](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/IsEmpty/Variantbe90c690e93b6b8b9fbd8d060066608326986f4bb14d871ab70a166014044198.lean/declarations/not-isempty-of-nonempty--e46525a0a138addd23cc196b.md) | 217 | `result-track:e46525a0a138addd23cc196b55b9ff189f5dccddf2ca8f4a7ae0b0932c836836` |
| 43 | `theorem` | [Function.extend_of_isEmpty](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/IsEmpty/Variantbe90c690e93b6b8b9fbd8d060066608326986f4bb14d871ab70a166014044198.lean/declarations/function-extend-of-isempty--10a4de2f19a9fdbbab48055b.md) | 223 | `result-track:10a4de2f19a9fdbbab48055b708817aa8beb0b39e988aa2895b40850f7d015e5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
