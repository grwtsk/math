# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.GrowsPolynomially.Variant9ea1f062a7c188b8ca5aef1df024b9bef0c7417353b621ce19caf6c637b367bd

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ebc4480187c09e3283587c150206252ceb767a7a",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/GrowsPolynomially/Variant9ea1f062a7c188b8ca5aef1df024b9bef0c7417353b621ce19caf6c637b367bd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/GrowsPolynomially/Variant9ea1f062a7c188b8ca5aef1df024b9bef0c7417353b621ce19caf6c637b367bd.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/GrowsPolynomially/Variant9ea1f062a7c188b8ca5aef1df024b9bef0c7417353b621ce19caf6c637b367bd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ebc4480187c09e3283587c150206252ceb767a7a`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/GrowsPolynomially/Variant9ea1f062a7c188b8ca5aef1df024b9bef0c7417353b621ce19caf6c637b367bd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/GrowsPolynomially/Variant9ea1f062a7c188b8ca5aef1df024b9bef0c7417353b621ce19caf6c637b367bd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Interval.Set.Group` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [GrowsPolynomially](../../../../../mathematics/Analysis/AsymptoticAnalysis/GrowsPolynomially/Variant9ea1f062a7c188b8ca5aef1df024b9bef0c7417353b621ce19caf6c637b367bd.lean/declarations/growspolynomially--d2b35361070eee94e854b600.md) | 49 | `declaration-track:d2b35361070eee94e854b600adfed8f8d9fd5d37898f7f5b34013613119c10e4` |
| 2 | `lemma` | [congr_of_eventuallyEq](../../../../../mathematics/Analysis/AsymptoticAnalysis/GrowsPolynomially/Variant9ea1f062a7c188b8ca5aef1df024b9bef0c7417353b621ce19caf6c637b367bd.lean/declarations/congr-of-eventuallyeq--d47f23d9b0ca9baf49f1a034.md) | 55 | `result-track:d47f23d9b0ca9baf49f1a034f5fa4f142f6c63926b36de0efb9cbca97936d146` |
| 3 | `lemma` | [iff_eventuallyEq](../../../../../mathematics/Analysis/AsymptoticAnalysis/GrowsPolynomially/Variant9ea1f062a7c188b8ca5aef1df024b9bef0c7417353b621ce19caf6c637b367bd.lean/declarations/iff-eventuallyeq--7e164743ce963fad147db93f.md) | 67 | `result-track:7e164743ce963fad147db93f859b3c283c4926e433f0fee85f6ad7bc3ccd651b` |
| 4 | `lemma` | [eventually_atTop_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/GrowsPolynomially/Variant9ea1f062a7c188b8ca5aef1df024b9bef0c7417353b621ce19caf6c637b367bd.lean/declarations/eventually-attop-le--1ff05eb6abff46fa6de4fa37.md) | 73 | `result-track:1ff05eb6abff46fa6de4fa37f52cc55b743af504186f0ad710151a08b9c45376` |
| 5 | `lemma` | [eventually_atTop_le_nat](../../../../../mathematics/Analysis/AsymptoticAnalysis/GrowsPolynomially/Variant9ea1f062a7c188b8ca5aef1df024b9bef0c7417353b621ce19caf6c637b367bd.lean/declarations/eventually-attop-le-nat--c2963e32b457a35366da9b29.md) | 80 | `result-track:c2963e32b457a35366da9b29137a09f329341264aa0ad4a62f7ee9986a517953` |
| 6 | `lemma` | [eventually_atTop_ge](../../../../../mathematics/Analysis/AsymptoticAnalysis/GrowsPolynomially/Variant9ea1f062a7c188b8ca5aef1df024b9bef0c7417353b621ce19caf6c637b367bd.lean/declarations/eventually-attop-ge--7aeac5bbedb88084fb42b999.md) | 85 | `result-track:7aeac5bbedb88084fb42b999a91ee2ae1c558f599d0cb17de7b81f8ad07a7877` |
| 7 | `lemma` | [eventually_atTop_ge_nat](../../../../../mathematics/Analysis/AsymptoticAnalysis/GrowsPolynomially/Variant9ea1f062a7c188b8ca5aef1df024b9bef0c7417353b621ce19caf6c637b367bd.lean/declarations/eventually-attop-ge-nat--806adef11046cd4277e345a2.md) | 92 | `result-track:806adef11046cd4277e345a2c2c69fc58ffb4c4af2cb8c3da010ac713eda6613` |
| 8 | `lemma` | [eventually_zero_of_frequently_zero](../../../../../mathematics/Analysis/AsymptoticAnalysis/GrowsPolynomially/Variant9ea1f062a7c188b8ca5aef1df024b9bef0c7417353b621ce19caf6c637b367bd.lean/declarations/eventually-zero-of-frequently-zero--5eca663e4798e720de31ecf7.md) | 97 | `result-track:5eca663e4798e720de31ecf7037094a4513f6d6561d2d6611a3098279ca19638` |
| 9 | `lemma` | [eventually_atTop_nonneg_or_nonpos](../../../../../mathematics/Analysis/AsymptoticAnalysis/GrowsPolynomially/Variant9ea1f062a7c188b8ca5aef1df024b9bef0c7417353b621ce19caf6c637b367bd.lean/declarations/eventually-attop-nonneg-or-nonpos--c6448d688bbd3b8edf879305.md) | 165 | `result-track:c6448d688bbd3b8edf879305f44cc19dfd2e5d394608e06ca49a6d3d895b875c` |
| 10 | `lemma` | [eventually_atTop_zero_or_pos_or_neg](../../../../../mathematics/Analysis/AsymptoticAnalysis/GrowsPolynomially/Variant9ea1f062a7c188b8ca5aef1df024b9bef0c7417353b621ce19caf6c637b367bd.lean/declarations/eventually-attop-zero-or-pos-or-neg--ad60806cc780b96717c1e262.md) | 217 | `result-track:ad60806cc780b96717c1e26213c970924dd1e573153e537132c39e55629ecbb1` |
| 11 | `lemma` | [neg](../../../../../mathematics/Analysis/AsymptoticAnalysis/GrowsPolynomially/Variant9ea1f062a7c188b8ca5aef1df024b9bef0c7417353b621ce19caf6c637b367bd.lean/declarations/neg--e23193045d517c728132436e.md) | 233 | `result-track:e23193045d517c728132436e5fd0931fadfa3ee2059c14bab63f87dafa88bc36` |
| 12 | `lemma` | [neg_iff](../../../../../mathematics/Analysis/AsymptoticAnalysis/GrowsPolynomially/Variant9ea1f062a7c188b8ca5aef1df024b9bef0c7417353b621ce19caf6c637b367bd.lean/declarations/neg-iff--fc0489ce2ad7c7a3bb7d6e85.md) | 242 | `result-track:fc0489ce2ad7c7a3bb7d6e85c1bdbb1aed6ce7dbc3dc3efba421549d7c4dbb81` |
| 13 | `lemma` | [abs](../../../../../mathematics/Analysis/AsymptoticAnalysis/GrowsPolynomially/Variant9ea1f062a7c188b8ca5aef1df024b9bef0c7417353b621ce19caf6c637b367bd.lean/declarations/abs--c9d2fadfe953fce1bb67d3af.md) | 245 | `result-track:c9d2fadfe953fce1bb67d3afcf3c0d342d2303e0422576f3b4968c645038dbba` |
| 14 | `lemma` | [norm](../../../../../mathematics/Analysis/AsymptoticAnalysis/GrowsPolynomially/Variant9ea1f062a7c188b8ca5aef1df024b9bef0c7417353b621ce19caf6c637b367bd.lean/declarations/norm--2d8676c1e750384694f3bab6.md) | 260 | `result-track:2d8676c1e750384694f3bab60c30acb109118cb8856c3784f0c4929bac7e2418` |
| 15 | `lemma` | [growsPolynomially_const](../../../../../mathematics/Analysis/AsymptoticAnalysis/GrowsPolynomially/Variant9ea1f062a7c188b8ca5aef1df024b9bef0c7417353b621ce19caf6c637b367bd.lean/declarations/growspolynomially-const--4e77191590a2fcd84f29199b.md) | 268 | `result-track:4e77191590a2fcd84f29199b7b2f48474372539df97b74225abf2e7175b74876` |
| 16 | `lemma` | [growsPolynomially_id](../../../../../mathematics/Analysis/AsymptoticAnalysis/GrowsPolynomially/Variant9ea1f062a7c188b8ca5aef1df024b9bef0c7417353b621ce19caf6c637b367bd.lean/declarations/growspolynomially-id--1141e843d20dc762f4d91e3e.md) | 273 | `result-track:1141e843d20dc762f4d91e3e91900fbf22d025349110e14ef8b790f1033ce808` |
| 17 | `lemma` | [GrowsPolynomially.mul](../../../../../mathematics/Analysis/AsymptoticAnalysis/GrowsPolynomially/Variant9ea1f062a7c188b8ca5aef1df024b9bef0c7417353b621ce19caf6c637b367bd.lean/declarations/growspolynomially-mul--6c3672e5da3034e09958061f.md) | 281 | `result-track:6c3672e5da3034e09958061fa0206de32c8ff99727b8c2e410ce8a1a3552813f` |
| 18 | `lemma` | [GrowsPolynomially.const_mul](../../../../../mathematics/Analysis/AsymptoticAnalysis/GrowsPolynomially/Variant9ea1f062a7c188b8ca5aef1df024b9bef0c7417353b621ce19caf6c637b367bd.lean/declarations/growspolynomially-const-mul--113cff5b51a8a061bf5e18c5.md) | 335 | `result-track:113cff5b51a8a061bf5e18c57b0ab3baa5470b244fbea904467b6d3d7718c666` |
| 19 | `lemma` | [GrowsPolynomially.add](../../../../../mathematics/Analysis/AsymptoticAnalysis/GrowsPolynomially/Variant9ea1f062a7c188b8ca5aef1df024b9bef0c7417353b621ce19caf6c637b367bd.lean/declarations/growspolynomially-add--3acfeaf36b25eb4d1ddffaf5.md) | 339 | `result-track:3acfeaf36b25eb4d1ddffaf59b91640d1145bdd4787549c7cd1bb1bd0d08d366` |
| 20 | `lemma` | [GrowsPolynomially.add_isLittleO](../../../../../mathematics/Analysis/AsymptoticAnalysis/GrowsPolynomially/Variant9ea1f062a7c188b8ca5aef1df024b9bef0c7417353b621ce19caf6c637b367bd.lean/declarations/growspolynomially-add-islittleo--1d7997fb056d52e58c8fec54.md) | 379 | `result-track:1d7997fb056d52e58c8fec54a5a69c4eeb6584359799053e530041a7e837f4a2` |
| 21 | `lemma` | [GrowsPolynomially.inv](../../../../../mathematics/Analysis/AsymptoticAnalysis/GrowsPolynomially/Variant9ea1f062a7c188b8ca5aef1df024b9bef0c7417353b621ce19caf6c637b367bd.lean/declarations/growspolynomially-inv--d7fbf5305f7797588931e460.md) | 485 | `result-track:d7fbf5305f7797588931e46026ebc5d3211253aa786a8f1be1acb85a9200d2cc` |
| 22 | `lemma` | [GrowsPolynomially.div](../../../../../mathematics/Analysis/AsymptoticAnalysis/GrowsPolynomially/Variant9ea1f062a7c188b8ca5aef1df024b9bef0c7417353b621ce19caf6c637b367bd.lean/declarations/growspolynomially-div--c0dc03b11eccae356a7aa558.md) | 534 | `result-track:c0dc03b11eccae356a7aa558bd0dd598e7e3afd0ba24ce3c21a1e7fd49f1255c` |
| 23 | `lemma` | [GrowsPolynomially.rpow](../../../../../mathematics/Analysis/AsymptoticAnalysis/GrowsPolynomially/Variant9ea1f062a7c188b8ca5aef1df024b9bef0c7417353b621ce19caf6c637b367bd.lean/declarations/growspolynomially-rpow--9395522f90ee8318e499d294.md) | 540 | `result-track:9395522f90ee8318e499d294020250c3214e489494a1afd07041229e874ae046` |
| 24 | `lemma` | [GrowsPolynomially.pow](../../../../../mathematics/Analysis/AsymptoticAnalysis/GrowsPolynomially/Variant9ea1f062a7c188b8ca5aef1df024b9bef0c7417353b621ce19caf6c637b367bd.lean/declarations/growspolynomially-pow--1f54af39e4eb27fcee54ef10.md) | 593 | `result-track:1f54af39e4eb27fcee54ef10f2a990857aa787e6deff45de9cf71f8893492ed9` |
| 25 | `lemma` | [GrowsPolynomially.zpow](../../../../../mathematics/Analysis/AsymptoticAnalysis/GrowsPolynomially/Variant9ea1f062a7c188b8ca5aef1df024b9bef0c7417353b621ce19caf6c637b367bd.lean/declarations/growspolynomially-zpow--44312a8936525607eae843e0.md) | 598 | `result-track:44312a8936525607eae843e06a7adcd2c922033c3364b588495b5b8968aa449f` |
| 26 | `lemma` | [growsPolynomially_rpow](../../../../../mathematics/Analysis/AsymptoticAnalysis/GrowsPolynomially/Variant9ea1f062a7c188b8ca5aef1df024b9bef0c7417353b621ce19caf6c637b367bd.lean/declarations/growspolynomially-rpow--e5b99b95f4fa7a793480bb73.md) | 603 | `result-track:e5b99b95f4fa7a793480bb7318833f2073da602db4f371149b513c4f412f743c` |
| 27 | `lemma` | [growsPolynomially_pow](../../../../../mathematics/Analysis/AsymptoticAnalysis/GrowsPolynomially/Variant9ea1f062a7c188b8ca5aef1df024b9bef0c7417353b621ce19caf6c637b367bd.lean/declarations/growspolynomially-pow--cc352bf22aa9343d98f65154.md) | 606 | `result-track:cc352bf22aa9343d98f651549e4578865fd6895b661fa974d61e2f3fcaf310e7` |
| 28 | `lemma` | [growsPolynomially_zpow](../../../../../mathematics/Analysis/AsymptoticAnalysis/GrowsPolynomially/Variant9ea1f062a7c188b8ca5aef1df024b9bef0c7417353b621ce19caf6c637b367bd.lean/declarations/growspolynomially-zpow--f91f79d0bb87d6ce9ccbe6cd.md) | 609 | `result-track:f91f79d0bb87d6ce9ccbe6cd268e1c80f16654691d7d2489dcf70954d3398e54` |
| 29 | `lemma` | [growsPolynomially_log](../../../../../mathematics/Analysis/AsymptoticAnalysis/GrowsPolynomially/Variant9ea1f062a7c188b8ca5aef1df024b9bef0c7417353b621ce19caf6c637b367bd.lean/declarations/growspolynomially-log--0ec7d4f715e45f5372fdef33.md) | 612 | `result-track:0ec7d4f715e45f5372fdef3350b8eb33292bdffd397e77d8a6049565e135b701` |
| 30 | `lemma` | [GrowsPolynomially.of_isTheta](../../../../../mathematics/Analysis/AsymptoticAnalysis/GrowsPolynomially/Variant9ea1f062a7c188b8ca5aef1df024b9bef0c7417353b621ce19caf6c637b367bd.lean/declarations/growspolynomially-of-istheta--8b869703824389d0228b5835.md) | 636 | `result-track:8b869703824389d0228b5835e7cca4baa6cb48c3c41d89ade6ad73cd06bcabbd` |
| 31 | `lemma` | [GrowsPolynomially.of_isEquivalent](../../../../../mathematics/Analysis/AsymptoticAnalysis/GrowsPolynomially/Variant9ea1f062a7c188b8ca5aef1df024b9bef0c7417353b621ce19caf6c637b367bd.lean/declarations/growspolynomially-of-isequivalent--fffc5c1700cc347beea014f5.md) | 684 | `result-track:fffc5c1700cc347beea014f505dcbf193f323f74af78cccfc6b0fdab945b5257` |
| 32 | `lemma` | [GrowsPolynomially.of_isEquivalent_const](../../../../../mathematics/Analysis/AsymptoticAnalysis/GrowsPolynomially/Variant9ea1f062a7c188b8ca5aef1df024b9bef0c7417353b621ce19caf6c637b367bd.lean/declarations/growspolynomially-of-isequivalent-const--dda0a709e8799468de6c0186.md) | 690 | `result-track:dda0a709e8799468de6c0186bbfd9142453a76f90b6d9a533e172227495fc6e6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
