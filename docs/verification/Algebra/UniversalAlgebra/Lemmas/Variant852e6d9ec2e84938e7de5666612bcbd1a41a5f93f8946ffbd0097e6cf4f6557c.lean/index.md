# Verification target: GRWTSK.Algebra.UniversalAlgebra.Lemmas.Variant852e6d9ec2e84938e7de5666612bcbd1a41a5f93f8946ffbd0097e6cf4f6557c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d6dc6865ae7e3b1a5c077e4e2bc1db9f6c456996",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Lemmas/Variant852e6d9ec2e84938e7de5666612bcbd1a41a5f93f8946ffbd0097e6cf4f6557c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Lemmas/Variant852e6d9ec2e84938e7de5666612bcbd1a41a5f93f8946ffbd0097e6cf4f6557c.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Lemmas/Variant852e6d9ec2e84938e7de5666612bcbd1a41a5f93f8946ffbd0097e6cf4f6557c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d6dc6865ae7e3b1a5c077e4e2bc1db9f6c456996`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Lemmas/Variant852e6d9ec2e84938e7de5666612bcbd1a41a5f93f8946ffbd0097e6cf4f6557c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Lemmas/Variant852e6d9ec2e84938e7de5666612bcbd1a41a5f93f8946ffbd0097e6cf4f6557c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Divisibility.Hom` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Irreducible.Lemmas` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupWithZero.Equiv` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Prime.Defs` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Monotone.Defs` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [comap_prime](../../../../../mathematics/Algebra/UniversalAlgebra/Lemmas/Variant852e6d9ec2e84938e7de5666612bcbd1a41a5f93f8946ffbd0097e6cf4f6557c.lean/declarations/comap-prime--e88d97eb460d6d3c7f9a4655.md) | 51 | `result-track:e88d97eb460d6d3c7f9a46557b779c30de603fd9db7a5943d4da84bc92ef9168` |
| 2 | `theorem` | [MulEquiv.prime_iff](../../../../../mathematics/Algebra/UniversalAlgebra/Lemmas/Variant852e6d9ec2e84938e7de5666612bcbd1a41a5f93f8946ffbd0097e6cf4f6557c.lean/declarations/mulequiv-prime-iff--11b611d70c6b845074efe870.md) | 61 | `result-track:11b611d70c6b845074efe870e557dbea4748a6caf10318ffe82852a546eb940e` |
| 3 | `theorem` | [Prime.left_dvd_or_dvd_right_of_dvd_mul](../../../../../mathematics/Algebra/UniversalAlgebra/Lemmas/Variant852e6d9ec2e84938e7de5666612bcbd1a41a5f93f8946ffbd0097e6cf4f6557c.lean/declarations/prime-left-dvd-or-dvd-right-of-dvd-mul--b4241b8cccca445e17dae845.md) | 71 | `result-track:b4241b8cccca445e17dae84579c25c86a6c1340faf0abe0f59f3e116a803579c` |
| 4 | `theorem` | [Prime.pow_dvd_of_dvd_mul_left](../../../../../mathematics/Algebra/UniversalAlgebra/Lemmas/Variant852e6d9ec2e84938e7de5666612bcbd1a41a5f93f8946ffbd0097e6cf4f6557c.lean/declarations/prime-pow-dvd-of-dvd-mul-left--d7dc76e5f71cf26937d519c5.md) | 79 | `result-track:d7dc76e5f71cf26937d519c5bc7d7ace4fdfa9d0d767db201c83229658faf1de` |
| 5 | `theorem` | [Prime.pow_dvd_of_dvd_mul_right](../../../../../mathematics/Algebra/UniversalAlgebra/Lemmas/Variant852e6d9ec2e84938e7de5666612bcbd1a41a5f93f8946ffbd0097e6cf4f6557c.lean/declarations/prime-pow-dvd-of-dvd-mul-right--406c8b5a9ddda948cff641ae.md) | 91 | `result-track:406c8b5a9ddda948cff641aea4a0f78a68f55e9f55953f4858948c98e2737a54` |
| 6 | `theorem` | [Prime.dvd_of_pow_dvd_pow_mul_pow_of_square_not_dvd](../../../../../mathematics/Algebra/UniversalAlgebra/Lemmas/Variant852e6d9ec2e84938e7de5666612bcbd1a41a5f93f8946ffbd0097e6cf4f6557c.lean/declarations/prime-dvd-of-pow-dvd-pow-mul-pow-of-square-not-dvd--e7257e0c944619242dfeb345.md) | 96 | `result-track:e7257e0c944619242dfeb345979823b48c571a34f61c5ed2dbd2a43ff592a61e` |
| 7 | `theorem` | [prime_pow_succ_dvd_mul](../../../../../mathematics/Algebra/UniversalAlgebra/Lemmas/Variant852e6d9ec2e84938e7de5666612bcbd1a41a5f93f8946ffbd0097e6cf4f6557c.lean/declarations/prime-pow-succ-dvd-mul--99ce45d048c35348f72d7a07.md) | 114 | `result-track:99ce45d048c35348f72d7a072af5709ac35ea39eddb15d4da5bf47630f3006ff` |
| 8 | `theorem` | [succ_dvd_or_succ_dvd_of_succ_sum_dvd_mul](../../../../../mathematics/Algebra/UniversalAlgebra/Lemmas/Variant852e6d9ec2e84938e7de5666612bcbd1a41a5f93f8946ffbd0097e6cf4f6557c.lean/declarations/succ-dvd-or-succ-dvd-of-succ-sum-dvd-mul--b145e1e3be299f4333ed9883.md) | 130 | `result-track:b145e1e3be299f4333ed98835ddf0c1aa9044a83db75dd3c73db8d0291532eaf` |
| 9 | `theorem` | [Prime.not_isSquare](../../../../../mathematics/Algebra/UniversalAlgebra/Lemmas/Variant852e6d9ec2e84938e7de5666612bcbd1a41a5f93f8946ffbd0097e6cf4f6557c.lean/declarations/prime-not-issquare--bc858abb950d8dd6158fd46c.md) | 141 | `result-track:bc858abb950d8dd6158fd46c451dd086aa71214499cbff9e549317c48cf76856` |
| 10 | `theorem` | [IsSquare.not_prime](../../../../../mathematics/Algebra/UniversalAlgebra/Lemmas/Variant852e6d9ec2e84938e7de5666612bcbd1a41a5f93f8946ffbd0097e6cf4f6557c.lean/declarations/issquare-not-prime--8047a8edd1d2a52ae92aec7a.md) | 147 | `result-track:8047a8edd1d2a52ae92aec7a37bd51ece4cccb23a95e6f5896a4ce6f18e3052f` |
| 11 | `theorem` | [not_prime_pow](../../../../../mathematics/Algebra/UniversalAlgebra/Lemmas/Variant852e6d9ec2e84938e7de5666612bcbd1a41a5f93f8946ffbd0097e6cf4f6557c.lean/declarations/not-prime-pow--a8d5857b6758e87ac4d796bd.md) | 149 | `result-track:a8d5857b6758e87ac4d796bd64aa37556e568565f776ca88171870caa01d8052` |
| 12 | `theorem` | [DvdNotUnit.isUnit_of_irreducible_right](../../../../../mathematics/Algebra/UniversalAlgebra/Lemmas/Variant852e6d9ec2e84938e7de5666612bcbd1a41a5f93f8946ffbd0097e6cf4f6557c.lean/declarations/dvdnotunit-isunit-of-irreducible-right--0cd32a63f91039927e954a9d.md) | 156 | `result-track:0cd32a63f91039927e954a9d54f7f9d23a1ef6300e6f287b3257b543bbe1f015` |
| 13 | `theorem` | [not_irreducible_of_not_unit_dvdNotUnit](../../../../../mathematics/Algebra/UniversalAlgebra/Lemmas/Variant852e6d9ec2e84938e7de5666612bcbd1a41a5f93f8946ffbd0097e6cf4f6557c.lean/declarations/not-irreducible-of-not-unit-dvdnotunit--4a23bc0ad545bae17fac84ae.md) | 161 | `result-track:4a23bc0ad545bae17fac84ae948937a9d71e200d8ac42276111810535c4a95f1` |
| 14 | `theorem` | [DvdNotUnit.not_unit](../../../../../mathematics/Algebra/UniversalAlgebra/Lemmas/Variant852e6d9ec2e84938e7de5666612bcbd1a41a5f93f8946ffbd0097e6cf4f6557c.lean/declarations/dvdnotunit-not-unit--c092111a5b33a19925f70214.md) | 165 | `result-track:c092111a5b33a19925f70214ca085084558f23656d63cbe6e1a766a8b73bba33` |
| 15 | `theorem` | [DvdNotUnit.ne](../../../../../mathematics/Algebra/UniversalAlgebra/Lemmas/Variant852e6d9ec2e84938e7de5666612bcbd1a41a5f93f8946ffbd0097e6cf4f6557c.lean/declarations/dvdnotunit-ne--c73520a4e8fad03c516e6215.md) | 173 | `result-track:c73520a4e8fad03c516e6215d8bb390a4182ab022961127a95d2b2893edd3dd8` |
| 16 | `theorem` | [pow_injective_of_not_isUnit](../../../../../mathematics/Algebra/UniversalAlgebra/Lemmas/Variant852e6d9ec2e84938e7de5666612bcbd1a41a5f93f8946ffbd0097e6cf4f6557c.lean/declarations/pow-injective-of-not-isunit--1c211dd1ee64c6ad2abcd1f7.md) | 180 | `result-track:1c211dd1ee64c6ad2abcd1f7747b2882c12e7ef616ed30792042fa60f2213a4d` |
| 17 | `theorem` | [pow_inj_of_not_isUnit](../../../../../mathematics/Algebra/UniversalAlgebra/Lemmas/Variant852e6d9ec2e84938e7de5666612bcbd1a41a5f93f8946ffbd0097e6cf4f6557c.lean/declarations/pow-inj-of-not-isunit--5abf37b4c9c7d7e8967a7443.md) | 186 | `result-track:5abf37b4c9c7d7e8967a74439227439e86cdb98d9ad31e0055017dbd38da0c0b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
