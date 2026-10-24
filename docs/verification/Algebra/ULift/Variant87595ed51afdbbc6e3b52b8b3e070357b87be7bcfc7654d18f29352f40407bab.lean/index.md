# Verification target: GRWTSK.Algebra.ULift.Variant87595ed51afdbbc6e3b52b8b3e070357b87be7bcfc7654d18f29352f40407bab

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "81abb5a313c42ba18844cadca5effaa01d8de72b",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/ULift/Variant87595ed51afdbbc6e3b52b8b3e070357b87be7bcfc7654d18f29352f40407bab.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/ULift/Variant87595ed51afdbbc6e3b52b8b3e070357b87be7bcfc7654d18f29352f40407bab.lean/index.md) · [Full source](../../../../mathematics/Algebra/ULift/Variant87595ed51afdbbc6e3b52b8b3e070357b87be7bcfc7654d18f29352f40407bab.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `81abb5a313c42ba18844cadca5effaa01d8de72b`.

Source path: `GRWTSK/Algebra/ULift/Variant87595ed51afdbbc6e3b52b8b3e070357b87be7bcfc7654d18f29352f40407bab.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/ULift/Variant87595ed51afdbbc6e3b52b8b3e070357b87be7bcfc7654d18f29352f40407bab.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Field.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupWithZero.ULift` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.ULift` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [instNNRatCast](../../../../mathematics/Algebra/ULift/Variant87595ed51afdbbc6e3b52b8b3e070357b87be7bcfc7654d18f29352f40407bab.lean/declarations/instnnratcast--e7b1d41df9f9e71ed304c9a7.md) | 23 | `declaration-track:e7b1d41df9f9e71ed304c9a7a5d2ed4274905fba31ae2d41a674755040c9d2eb` |
| 2 | `instance` | [instRatCast](../../../../mathematics/Algebra/ULift/Variant87595ed51afdbbc6e3b52b8b3e070357b87be7bcfc7654d18f29352f40407bab.lean/declarations/instratcast--8847bfb1f955a6d7a09dc85f.md) | 24 | `declaration-track:8847bfb1f955a6d7a09dc85f9bcebc99d69dafc17fc6ac30c3ac2cf5f1729a9e` |
| 3 | `lemma` | [up_nnratCast](../../../../mathematics/Algebra/ULift/Variant87595ed51afdbbc6e3b52b8b3e070357b87be7bcfc7654d18f29352f40407bab.lean/declarations/up-nnratcast--e7d0da84876cfe4da16ed320.md) | 26 | `result-track:e7d0da84876cfe4da16ed320194d122d18ffeac21635a9acb57614b702f85165` |
| 4 | `lemma` | [down_nnratCast](../../../../mathematics/Algebra/ULift/Variant87595ed51afdbbc6e3b52b8b3e070357b87be7bcfc7654d18f29352f40407bab.lean/declarations/down-nnratcast--34be4defc01564fa2564124e.md) | 27 | `result-track:34be4defc01564fa2564124eab17d494fa834d9467d8156252f0b06394840055` |
| 5 | `lemma` | [up_ratCast](../../../../mathematics/Algebra/ULift/Variant87595ed51afdbbc6e3b52b8b3e070357b87be7bcfc7654d18f29352f40407bab.lean/declarations/up-ratcast--590d17d7d90d3e253106be66.md) | 28 | `result-track:590d17d7d90d3e253106be665b863b23dae5b74f6434a69528d1175272e6ccb7` |
| 6 | `lemma` | [down_ratCast](../../../../mathematics/Algebra/ULift/Variant87595ed51afdbbc6e3b52b8b3e070357b87be7bcfc7654d18f29352f40407bab.lean/declarations/down-ratcast--2fe050cfd9f39174a3432808.md) | 29 | `result-track:2fe050cfd9f39174a3432808ac09a3405d511bcbd1d5c8f16fcd39175f9199e7` |
| 7 | `instance` | [divisionSemiring](../../../../mathematics/Algebra/ULift/Variant87595ed51afdbbc6e3b52b8b3e070357b87be7bcfc7654d18f29352f40407bab.lean/declarations/divisionsemiring--70708d89e7dc1ab9c52bfcd2.md) | 31 | `declaration-track:70708d89e7dc1ab9c52bfcd2cd820855619f1569e3f0991370a08258856297f8` |
| 8 | `instance` | [semifield](../../../../mathematics/Algebra/ULift/Variant87595ed51afdbbc6e3b52b8b3e070357b87be7bcfc7654d18f29352f40407bab.lean/declarations/semifield--ea5827cb8085c286637f19af.md) | 36 | `declaration-track:ea5827cb8085c286637f19afacef7a15b68d9c114c37083d9565fab78b26ae3c` |
| 9 | `instance` | [divisionRing](../../../../mathematics/Algebra/ULift/Variant87595ed51afdbbc6e3b52b8b3e070357b87be7bcfc7654d18f29352f40407bab.lean/declarations/divisionring--7b6c6d2a1a02752c2e06f9f8.md) | 39 | `declaration-track:7b6c6d2a1a02752c2e06f9f83901a46ead9b02da981435d93781bcc50843b540` |
| 10 | `instance` | [field](../../../../mathematics/Algebra/ULift/Variant87595ed51afdbbc6e3b52b8b3e070357b87be7bcfc7654d18f29352f40407bab.lean/declarations/field--d08be69ef386a51807a6fca8.md) | 49 | `declaration-track:d08be69ef386a51807a6fca8c8d3d45fcbf1f298d4158b70ad047a9360a0fc72` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
