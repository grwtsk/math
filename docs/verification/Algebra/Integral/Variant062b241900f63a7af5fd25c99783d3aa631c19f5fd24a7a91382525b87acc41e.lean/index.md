# Verification target: GRWTSK.Algebra.Integral.Variant062b241900f63a7af5fd25c99783d3aa631c19f5fd24a7a91382525b87acc41e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "df1e8870497e6d04a682659ce876b190d3884b6a",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Integral/Variant062b241900f63a7af5fd25c99783d3aa631c19f5fd24a7a91382525b87acc41e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Integral/Variant062b241900f63a7af5fd25c99783d3aa631c19f5fd24a7a91382525b87acc41e.lean/index.md) · [Full source](../../../../mathematics/Algebra/Integral/Variant062b241900f63a7af5fd25c99783d3aa631c19f5fd24a7a91382525b87acc41e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `df1e8870497e6d04a682659ce876b190d3884b6a`.

Source path: `GRWTSK/Algebra/Integral/Variant062b241900f63a7af5fd25c99783d3aa631c19f5fd24a7a91382525b87acc41e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Integral/Variant062b241900f63a7af5fd25c99783d3aa631c19f5fd24a7a91382525b87acc41e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Polynomial.Lifts` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.MonoidLocalization` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Algebraic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.LocalRing` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.IntegralClosure` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Localization.FractionRing` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Localization.Integer` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.NonZeroDivisors` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [coeffIntegerNormalization](../../../../mathematics/Algebra/Integral/Variant062b241900f63a7af5fd25c99783d3aa631c19f5fd24a7a91382525b87acc41e.lean/declarations/coeffintegernormalization--9bdceeb9c7b4e30311388a02.md) | 48 | `declaration-track:9bdceeb9c7b4e30311388a021fc8fa4cb666f0d8c15bd8bbf5855370530586e1` |
| 2 | `theorem` | [coeffIntegerNormalization_of_not_mem_support](../../../../mathematics/Algebra/Integral/Variant062b241900f63a7af5fd25c99783d3aa631c19f5fd24a7a91382525b87acc41e.lean/declarations/coeffintegernormalization-of-not-mem-support--30615a9eda15455ba7ff7165.md) | 56 | `result-track:30615a9eda15455ba7ff7165e924254ecb968169ad19b7ceb09e4ead5a8a217e` |
| 3 | `theorem` | [coeffIntegerNormalization_mem_support](../../../../mathematics/Algebra/Integral/Variant062b241900f63a7af5fd25c99783d3aa631c19f5fd24a7a91382525b87acc41e.lean/declarations/coeffintegernormalization-mem-support--7f082eaa9f08d0ced58d0ffc.md) | 62 | `result-track:7f082eaa9f08d0ced58d0ffc2cd4f67a9d95e3d4bcc574290888ecdd2cce29f0` |
| 4 | `def` | [integerNormalization](../../../../mathematics/Algebra/Integral/Variant062b241900f63a7af5fd25c99783d3aa631c19f5fd24a7a91382525b87acc41e.lean/declarations/integernormalization--845ab492e7d5ca745bf29202.md) | 70 | `declaration-track:845ab492e7d5ca745bf292023c62ce1e7115ff30d5d5f17723941e07e4815eb8` |
| 5 | `theorem` | [integerNormalization_coeff](../../../../mathematics/Algebra/Integral/Variant062b241900f63a7af5fd25c99783d3aa631c19f5fd24a7a91382525b87acc41e.lean/declarations/integernormalization-coeff--0acb009513cc9df9084558c2.md) | 75 | `result-track:0acb009513cc9df9084558c20a6a619f74c77489896da49117a0ae003191e88b` |
| 6 | `theorem` | [integerNormalization_spec](../../../../mathematics/Algebra/Integral/Variant062b241900f63a7af5fd25c99783d3aa631c19f5fd24a7a91382525b87acc41e.lean/declarations/integernormalization-spec--056724c833f4c31709409385.md) | 81 | `result-track:056724c833f4c3170940938570efe2d6a6e2a4d3a5374ffa95c654d9498f41fb` |
| 7 | `theorem` | [integerNormalization_map_to_map](../../../../mathematics/Algebra/Integral/Variant062b241900f63a7af5fd25c99783d3aa631c19f5fd24a7a91382525b87acc41e.lean/declarations/integernormalization-map-to-map--ed8a34cda19363c45dff7b29.md) | 97 | `result-track:ed8a34cda19363c45dff7b2934a50ef5f45047893d0813943c4fec7f9cc334e8` |
| 8 | `theorem` | [integerNormalization_eval₂_eq_zero](../../../../mathematics/Algebra/Integral/Variant062b241900f63a7af5fd25c99783d3aa631c19f5fd24a7a91382525b87acc41e.lean/declarations/integernormalization-eval-eq-zero--5b537237299cde9652fd65f6.md) | 108 | `result-track:5b537237299cde9652fd65f6ba012c881e07d5f5126fe4a52ad1737d28a9593d` |
| 9 | `theorem` | [integerNormalization_aeval_eq_zero](../../../../mathematics/Algebra/Integral/Variant062b241900f63a7af5fd25c99783d3aa631c19f5fd24a7a91382525b87acc41e.lean/declarations/integernormalization-aeval-eq-zero--47a4af07463d1a7334020699.md) | 115 | `result-track:47a4af07463d1a73340206993e27f51a7c26d2f4306105fc6acdc236271d6a72` |
| 10 | `theorem` | [integerNormalization_eq_zero_iff](../../../../mathematics/Algebra/Integral/Variant062b241900f63a7af5fd25c99783d3aa631c19f5fd24a7a91382525b87acc41e.lean/declarations/integernormalization-eq-zero-iff--1fbd0b1f3c94bf8de2706237.md) | 132 | `result-track:1fbd0b1f3c94bf8de2706237caee053d92fcb649b1362c4120639e316991569c` |
| 11 | `theorem` | [isAlgebraic_iff](../../../../mathematics/Algebra/Integral/Variant062b241900f63a7af5fd25c99783d3aa631c19f5fd24a7a91382525b87acc41e.lean/declarations/isalgebraic-iff--e5a91e6a443eda10d3935320.md) | 152 | `result-track:e5a91e6a443eda10d393532075035038606c313ba58584e19ba86be82c154ef5` |
| 12 | `theorem` | [comap_isAlgebraic_iff](../../../../mathematics/Algebra/Integral/Variant062b241900f63a7af5fd25c99783d3aa631c19f5fd24a7a91382525b87acc41e.lean/declarations/comap-isalgebraic-iff--a1d102e5922c304cf5e4d4d5.md) | 169 | `result-track:a1d102e5922c304cf5e4d4d5b2abb8fb1507289c28b3e20fd48e221f6bff3eb8` |
| 13 | `theorem` | [RingHom.isIntegralElem_localization_at_leadingCoeff](../../../../mathematics/Algebra/Integral/Variant062b241900f63a7af5fd25c99783d3aa631c19f5fd24a7a91382525b87acc41e.lean/declarations/ringhom-isintegralelem-localization-at-leadingcoeff--f4895f27b510c874313db960.md) | 190 | `result-track:f4895f27b510c874313db960913bf7378a5ed0898cd77cdda87d57236060be65` |
| 14 | `theorem` | [is_integral_localization_at_leadingCoeff](../../../../mathematics/Algebra/Integral/Variant062b241900f63a7af5fd25c99783d3aa631c19f5fd24a7a91382525b87acc41e.lean/declarations/is-integral-localization-at-leadingcoeff--1bd7d3586e66b5625a22743e.md) | 212 | `result-track:1bd7d3586e66b5625a22743ebf2af92a8e48d5af14606a6a02c4dc0608c12a40` |
| 15 | `theorem` | [isIntegral_localization](../../../../mathematics/Algebra/Integral/Variant062b241900f63a7af5fd25c99783d3aa631c19f5fd24a7a91382525b87acc41e.lean/declarations/isintegral-localization--6a36b108131ec83146d414ed.md) | 228 | `result-track:6a36b108131ec83146d414edcd26d86f993b3c6f1aac77ac3884367da20d684e` |
| 16 | `theorem` | [isIntegral_localization'](../../../../mathematics/Algebra/Integral/Variant062b241900f63a7af5fd25c99783d3aa631c19f5fd24a7a91382525b87acc41e.lean/declarations/isintegral-localization--b2fc80296d1d855e87792e08.md) | 249 | `result-track:b2fc80296d1d855e87792e080fbef710744b1921365580c5c9621f167ded6151` |
| 17 | `theorem` | [IsLocalization.scaleRoots_commonDenom_mem_lifts](../../../../mathematics/Algebra/Integral/Variant062b241900f63a7af5fd25c99783d3aa631c19f5fd24a7a91382525b87acc41e.lean/declarations/islocalization-scaleroots-commondenom-mem-lifts--8694784bb2c01be773e23f94.md) | 263 | `result-track:8694784bb2c01be773e23f94774e396174281bf3a202e49920d75071bf5773ca` |
| 18 | `theorem` | [IsIntegral.exists_multiple_integral_of_isLocalization](../../../../mathematics/Algebra/Integral/Variant062b241900f63a7af5fd25c99783d3aa631c19f5fd24a7a91382525b87acc41e.lean/declarations/isintegral-exists-multiple-integral-of-islocalization--231644d8989d667c620a794a.md) | 286 | `result-track:231644d8989d667c620a794a873fad3e9686c3e52eeffcb79557d4f84d2b6ed9` |
| 19 | `theorem` | [isFractionRing_of_algebraic](../../../../mathematics/Algebra/Integral/Variant062b241900f63a7af5fd25c99783d3aa631c19f5fd24a7a91382525b87acc41e.lean/declarations/isfractionring-of-algebraic--1a0a3b87452bb2e20b0652b5.md) | 322 | `result-track:1a0a3b87452bb2e20b0652b5ec58953e0339df581217eb08705a5b05bb8cf68b` |
| 20 | `theorem` | [isFractionRing_of_finite_extension](../../../../mathematics/Algebra/Integral/Variant062b241900f63a7af5fd25c99783d3aa631c19f5fd24a7a91382525b87acc41e.lean/declarations/isfractionring-of-finite-extension--9d93441372c610dda99b0ae9.md) | 346 | `result-track:9d93441372c610dda99b0ae9c5070de528602b5e27536005ef18c7a1431b6c69` |
| 21 | `theorem` | [isFractionRing_of_algebraic](../../../../mathematics/Algebra/Integral/Variant062b241900f63a7af5fd25c99783d3aa631c19f5fd24a7a91382525b87acc41e.lean/declarations/isfractionring-of-algebraic--add353dd10832d24b3e7be5b.md) | 365 | `result-track:add353dd10832d24b3e7be5bd66921889a323282ecc7bde4da426d6fefefd35e` |
| 22 | `theorem` | [isFractionRing_of_finite_extension](../../../../mathematics/Algebra/Integral/Variant062b241900f63a7af5fd25c99783d3aa631c19f5fd24a7a91382525b87acc41e.lean/declarations/isfractionring-of-finite-extension--cccd05fc30badcc469116c9d.md) | 374 | `result-track:cccd05fc30badcc469116c9d039d7033d845819e292a2069272b37dbe19cfc34` |
| 23 | `theorem` | [isAlgebraic_iff'](../../../../mathematics/Algebra/Integral/Variant062b241900f63a7af5fd25c99783d3aa631c19f5fd24a7a91382525b87acc41e.lean/declarations/isalgebraic-iff--8a6905c92732c511546bf990.md) | 386 | `result-track:8a6905c92732c511546bf990355be1737ac120c72984ccd3307b42bba70a1f8c` |
| 24 | `theorem` | [ideal_span_singleton_map_subset](../../../../mathematics/Algebra/Integral/Variant062b241900f63a7af5fd25c99783d3aa631c19f5fd24a7a91382525b87acc41e.lean/declarations/ideal-span-singleton-map-subset--f68e03b0a7e696705f2fc8bc.md) | 434 | `result-track:f68e03b0a7e696705f2fc8bc2a0479d7c5b796c6caf23bbabde38700f0cb4a15` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
