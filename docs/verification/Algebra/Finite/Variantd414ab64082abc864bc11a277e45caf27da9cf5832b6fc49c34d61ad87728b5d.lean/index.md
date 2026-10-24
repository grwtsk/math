# Verification target: GRWTSK.Algebra.Finite.Variantd414ab64082abc864bc11a277e45caf27da9cf5832b6fc49c34d61ad87728b5d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a851b1dbafcc8699550d42291e12e1e8030863de",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Finite/Variantd414ab64082abc864bc11a277e45caf27da9cf5832b6fc49c34d61ad87728b5d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Finite/Variantd414ab64082abc864bc11a277e45caf27da9cf5832b6fc49c34d61ad87728b5d.lean/index.md) · [Full source](../../../../mathematics/Algebra/Finite/Variantd414ab64082abc864bc11a277e45caf27da9cf5832b6fc49c34d61ad87728b5d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a851b1dbafcc8699550d42291e12e1e8030863de`.

Source path: `GRWTSK/Algebra/Finite/Variantd414ab64082abc864bc11a277e45caf27da9cf5832b6fc49c34d61ad87728b5d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Finite/Variantd414ab64082abc864bc11a277e45caf27da9cf5832b6fc49c34d61ad87728b5d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Pow.Real` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.FreeModule.PID` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.AbsoluteValue` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.ClassNumber.AdmissibleAbsoluteValue` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.ClassGroup` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.DedekindDomain.IntegralClosure` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Norm` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [normBound](../../../../mathematics/Algebra/Finite/Variantd414ab64082abc864bc11a277e45caf27da9cf5832b6fc49c34d61ad87728b5d.lean/declarations/normbound--c9fa0dc6d98d6c6aeb3972d1.md) | 59 | `declaration-track:c9fa0dc6d98d6c6aeb3972d1def0292ee14fb9b3dc1044d884c0227028febaf3` |
| 2 | `theorem` | [normBound_pos](../../../../mathematics/Algebra/Finite/Variantd414ab64082abc864bc11a277e45caf27da9cf5832b6fc49c34d61ad87728b5d.lean/declarations/normbound-pos--ed354cdaedb94b2f49e0b942.md) | 70 | `result-track:ed354cdaedb94b2f49e0b942ea2a416e516089f564e9b3cd3fadd4a2cce13bb8` |
| 3 | `theorem` | [norm_le](../../../../mathematics/Algebra/Finite/Variantd414ab64082abc864bc11a277e45caf27da9cf5832b6fc49c34d61ad87728b5d.lean/declarations/norm-le--3b3028d37275422d6ec87586.md) | 88 | `result-track:3b3028d37275422d6ec87586d2307b5b26f1a87cea2a4f4e58539081ca862477` |
| 4 | `theorem` | [norm_lt](../../../../mathematics/Algebra/Finite/Variantd414ab64082abc864bc11a277e45caf27da9cf5832b6fc49c34d61ad87728b5d.lean/declarations/norm-lt--9aa010602dde4e107607c8c4.md) | 111 | `result-track:9aa010602dde4e107607c8c44eae10bf12ef972ebbd82d90494f28dcdcc298d0` |
| 5 | `theorem` | [exists_min](../../../../mathematics/Algebra/Finite/Variantd414ab64082abc864bc11a277e45caf27da9cf5832b6fc49c34d61ad87728b5d.lean/declarations/exists-min--046aea6439d7b9fb83849500.md) | 140 | `result-track:046aea6439d7b9fb838495006a228cf9228ca0d88974f0de8a35ff9a612a6dc0` |
| 6 | `def` | [cardM](../../../../mathematics/Algebra/Finite/Variantd414ab64082abc864bc11a277e45caf27da9cf5832b6fc49c34d61ad87728b5d.lean/declarations/cardm--058770e8f1758dad0de62d97.md) | 171 | `declaration-track:058770e8f1758dad0de62d97a48e7fc4372743ef7235e920594241d4e24c8db1` |
| 7 | `def` | [distinctElems](../../../../mathematics/Algebra/Finite/Variantd414ab64082abc864bc11a277e45caf27da9cf5832b6fc49c34d61ad87728b5d.lean/declarations/distinctelems--0a16118fd7870f4fe0028ff1.md) | 179 | `declaration-track:0a16118fd7870f4fe0028ff12730285126194673f0a01e7603a11424f7aaed24` |
| 8 | `def` | [finsetApprox](../../../../mathematics/Algebra/Finite/Variantd414ab64082abc864bc11a277e45caf27da9cf5832b6fc49c34d61ad87728b5d.lean/declarations/finsetapprox--9f1a5c17cd6c1ea04d042993.md) | 187 | `declaration-track:9f1a5c17cd6c1ea04d04299311b90faf506010abd46ea0ca309d482aaf74aa4a` |
| 9 | `theorem` | [finsetApprox.zero_not_mem](../../../../mathematics/Algebra/Finite/Variantd414ab64082abc864bc11a277e45caf27da9cf5832b6fc49c34d61ad87728b5d.lean/declarations/finsetapprox-zero-not-mem--fc596c1bac5162229660ffcb.md) | 192 | `result-track:fc596c1bac5162229660ffcb8a2406b353c0aac6e5a71a3333804b48d026d307` |
| 10 | `theorem` | [mem_finsetApprox](../../../../mathematics/Algebra/Finite/Variantd414ab64082abc864bc11a277e45caf27da9cf5832b6fc49c34d61ad87728b5d.lean/declarations/mem-finsetapprox--c4c00548da154ec506968059.md) | 197 | `result-track:c4c00548da154ec506968059ee4ecf953113dc83d5eff1a7918b21c5bf1b8064` |
| 11 | `theorem` | [exists_mem_finsetApprox](../../../../mathematics/Algebra/Finite/Variantd414ab64082abc864bc11a277e45caf27da9cf5832b6fc49c34d61ad87728b5d.lean/declarations/exists-mem-finsetapprox--0d24776a05501f613a29f879.md) | 220 | `result-track:0d24776a05501f613a29f879fc0f3537e99441d9b95cb1db49506f4aec658488` |
| 12 | `theorem` | [exists_mem_finset_approx'](../../../../mathematics/Algebra/Finite/Variantd414ab64082abc864bc11a277e45caf27da9cf5832b6fc49c34d61ad87728b5d.lean/declarations/exists-mem-finset-approx--7e78ac58a214aebfdb7d03d5.md) | 274 | `result-track:7e78ac58a214aebfdb7d03d5c86cd50b4ac9c492115a1e20f7e067e779b8a21c` |
| 13 | `theorem` | [prod_finsetApprox_ne_zero](../../../../mathematics/Algebra/Finite/Variantd414ab64082abc864bc11a277e45caf27da9cf5832b6fc49c34d61ad87728b5d.lean/declarations/prod-finsetapprox-ne-zero--ff43430643d5704a4f5c2365.md) | 296 | `result-track:ff43430643d5704a4f5c2365235c02f0d7d5dca6731ad8d1d3905c101b822036` |
| 14 | `theorem` | [ne_bot_of_prod_finsetApprox_mem](../../../../mathematics/Algebra/Finite/Variantd414ab64082abc864bc11a277e45caf27da9cf5832b6fc49c34d61ad87728b5d.lean/declarations/ne-bot-of-prod-finsetapprox-mem--037878f223266b1f3c7d2b62.md) | 303 | `result-track:037878f223266b1f3c7d2b62079d51a2d471c0be8a8939311232f36bdbb2f8a2` |
| 15 | `theorem` | [exists_mk0_eq_mk0](../../../../mathematics/Algebra/Finite/Variantd414ab64082abc864bc11a277e45caf27da9cf5832b6fc49c34d61ad87728b5d.lean/declarations/exists-mk0-eq-mk0--6cd07b8a3210763267eccfdd.md) | 310 | `result-track:6cd07b8a3210763267eccfdd71e148f43394fb250515ff21b0d69cf414003425` |
| 16 | `def` | [mkMMem](../../../../mathematics/Algebra/Finite/Variantd414ab64082abc864bc11a277e45caf27da9cf5832b6fc49c34d61ad87728b5d.lean/declarations/mkmmem--cf4f8c45f8f26fe26dda6af0.md) | 348 | `declaration-track:cf4f8c45f8f26fe26dda6af0cbed580fa8e24ee48864b536a40abd77749f97e1` |
| 17 | `theorem` | [mkMMem_surjective](../../../../mathematics/Algebra/Finite/Variantd414ab64082abc864bc11a277e45caf27da9cf5832b6fc49c34d61ad87728b5d.lean/declarations/mkmmem-surjective--f54fb5fc3beba70a3714129e.md) | 355 | `result-track:f54fb5fc3beba70a3714129e83042017d68bd48c71c60138baa241adc0576de9` |
| 18 | `def` | [fintypeOfAdmissibleOfAlgebraic](../../../../mathematics/Algebra/Finite/Variantd414ab64082abc864bc11a277e45caf27da9cf5832b6fc49c34d61ad87728b5d.lean/declarations/fintypeofadmissibleofalgebraic--0e000429b3dc640f908cb62d.md) | 372 | `declaration-track:0e000429b3dc640f908cb62da0856dadd346a801698fbec6dbd71c55d3b23561` |
| 19 | `def` | [fintypeOfAdmissibleOfFinite](../../../../mathematics/Algebra/Finite/Variantd414ab64082abc864bc11a277e45caf27da9cf5832b6fc49c34d61ad87728b5d.lean/declarations/fintypeofadmissibleoffinite--d9c4be883ef3b2cf2052bbe9.md) | 394 | `declaration-track:d9c4be883ef3b2cf2052bbe9fd0449347bfed40d18474a12a342d72ef56777b6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
