# Verification target: GRWTSK.Algebra.UniversalAlgebra.AdjointAction.Variant3cb172eddcd3d4a248ecd74a45a3433c1158434d4aabe3580dcaad9cbf99b81d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1c3fe22a1e5526e988932e1830c71a0bdb8b0e49",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/AdjointAction/Variant3cb172eddcd3d4a248ecd74a45a3433c1158434d4aabe3580dcaad9cbf99b81d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/AdjointAction/Variant3cb172eddcd3d4a248ecd74a45a3433c1158434d4aabe3580dcaad9cbf99b81d.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/AdjointAction/Variant3cb172eddcd3d4a248ecd74a45a3433c1158434d4aabe3580dcaad9cbf99b81d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1c3fe22a1e5526e988932e1830c71a0bdb8b0e49`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/AdjointAction/Variant3cb172eddcd3d4a248ecd74a45a3433c1158434d4aabe3580dcaad9cbf99b81d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/AdjointAction/Variant3cb172eddcd3d4a248ecd74a45a3433c1158434d4aabe3580dcaad9cbf99b81d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Lie.Abelian` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Lie.Derivation.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Lie.OfAssociative` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ad](../../../../../mathematics/Algebra/UniversalAlgebra/AdjointAction/Variant3cb172eddcd3d4a248ecd74a45a3433c1158434d4aabe3580dcaad9cbf99b81d.lean/declarations/ad--1decab7265ccee88691117fe.md) | 49 | `declaration-track:1decab7265ccee88691117fe34d2906eca214c0f884a8f8e078157e48a99b5d6` |
| 2 | `lemma` | [coe_ad_apply_eq_ad_apply](../../../../../mathematics/Algebra/UniversalAlgebra/AdjointAction/Variant3cb172eddcd3d4a248ecd74a45a3433c1158434d4aabe3580dcaad9cbf99b81d.lean/declarations/coe-ad-apply-eq-ad-apply--7dc77e7c1282a8e08f2b39b2.md) | 62 | `result-track:7dc77e7c1282a8e08f2b39b26151eeabcf972db844f7426301fa38ede1c38cea` |
| 3 | `lemma` | [ad_apply_lieDerivation](../../../../../mathematics/Algebra/UniversalAlgebra/AdjointAction/Variant3cb172eddcd3d4a248ecd74a45a3433c1158434d4aabe3580dcaad9cbf99b81d.lean/declarations/ad-apply-liederivation--445484bc5bd2562665fab05e.md) | 64 | `result-track:445484bc5bd2562665fab05ecc2d4eed6ac4baee4db1ea65332eda54cc131a75` |
| 4 | `lemma` | [lie_ad](../../../../../mathematics/Algebra/UniversalAlgebra/AdjointAction/Variant3cb172eddcd3d4a248ecd74a45a3433c1158434d4aabe3580dcaad9cbf99b81d.lean/declarations/lie-ad--22dc2ef3e109768e41628d93.md) | 66 | `result-track:22dc2ef3e109768e41628d93765bfd231e9ee36eedc27e3bf27f3c4361e8f4e3` |
| 5 | `lemma` | [ad_ker_eq_center](../../../../../mathematics/Algebra/UniversalAlgebra/AdjointAction/Variant3cb172eddcd3d4a248ecd74a45a3433c1158434d4aabe3580dcaad9cbf99b81d.lean/declarations/ad-ker-eq-center--c75bbf63779b41610d7de69e.md) | 70 | `result-track:c75bbf63779b41610d7de69ea0373ebd493eb024024e401ad1aef004692d2522` |
| 6 | `lemma` | [injective_ad_of_center_eq_bot](../../../../../mathematics/Algebra/UniversalAlgebra/AdjointAction/Variant3cb172eddcd3d4a248ecd74a45a3433c1158434d4aabe3580dcaad9cbf99b81d.lean/declarations/injective-ad-of-center-eq-bot--419c77e08426cafdb76b3103.md) | 76 | `result-track:419c77e08426cafdb76b310339bcf5dab3eb06308e79afc205f3e2126b4a8823` |
| 7 | `lemma` | [lie_der_ad_eq_ad_der](../../../../../mathematics/Algebra/UniversalAlgebra/AdjointAction/Variant3cb172eddcd3d4a248ecd74a45a3433c1158434d4aabe3580dcaad9cbf99b81d.lean/declarations/lie-der-ad-eq-ad-der--b7c7bd9b151950c71779fcc5.md) | 81 | `result-track:b7c7bd9b151950c71779fcc5546843bbf5a6c90d1d41aff4ff38fce42e2b7d78` |
| 8 | `lemma` | [ad_isIdealMorphism](../../../../../mathematics/Algebra/UniversalAlgebra/AdjointAction/Variant3cb172eddcd3d4a248ecd74a45a3433c1158434d4aabe3580dcaad9cbf99b81d.lean/declarations/ad-isidealmorphism--4a61e22937007c8d50213bec.md) | 87 | `result-track:4a61e22937007c8d50213beccb65847a709fb6b2559674fd540fe559a8958f64` |
| 9 | `lemma` | [mem_ad_idealRange_iff](../../../../../mathematics/Algebra/UniversalAlgebra/AdjointAction/Variant3cb172eddcd3d4a248ecd74a45a3433c1158434d4aabe3580dcaad9cbf99b81d.lean/declarations/mem-ad-idealrange-iff--ebd504e63d9ec00f03b2bdf0.md) | 93 | `result-track:ebd504e63d9ec00f03b2bdf0e018e3145eb2f7f4a9fb873b60e55d7afb733f6d` |
| 10 | `lemma` | [maxTrivSubmodule_eq_bot_of_center_eq_bot](../../../../../mathematics/Algebra/UniversalAlgebra/AdjointAction/Variant3cb172eddcd3d4a248ecd74a45a3433c1158434d4aabe3580dcaad9cbf99b81d.lean/declarations/maxtrivsubmodule-eq-bot-of-center-eq-bot--eab7ef335eb5ad2acf31711b.md) | 97 | `result-track:eab7ef335eb5ad2acf31711b74db4c7087c827d9e88de3f50620bd746aaf21a2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
