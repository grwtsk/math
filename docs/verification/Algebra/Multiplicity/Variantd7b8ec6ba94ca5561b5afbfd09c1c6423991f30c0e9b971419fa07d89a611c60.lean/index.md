# Verification target: GRWTSK.Algebra.Multiplicity.Variantd7b8ec6ba94ca5561b5afbfd09c1c6423991f30c0e9b971419fa07d89a611c60

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "693c07db5964005f125996f5a04e81b206fe8654",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Multiplicity/Variantd7b8ec6ba94ca5561b5afbfd09c1c6423991f30c0e9b971419fa07d89a611c60.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Multiplicity/Variantd7b8ec6ba94ca5561b5afbfd09c1c6423991f30c0e9b971419fa07d89a611c60.lean/index.md) · [Full source](../../../../mathematics/Algebra/Multiplicity/Variantd7b8ec6ba94ca5561b5afbfd09c1c6423991f30c0e9b971419fa07d89a611c60.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `693c07db5964005f125996f5a04e81b206fe8654`.

Source path: `GRWTSK/Algebra/Multiplicity/Variantd7b8ec6ba94ca5561b5afbfd09c1c6423991f30c0e9b971419fa07d89a611c60.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Multiplicity/Variantd7b8ec6ba94ca5561b5afbfd09c1c6423991f30c0e9b971419fa07d89a611c60.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.GeomSum` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Ring.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Int.Parity` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Choose.Sum` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Prime.Int` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.Padics.PadicVal.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.Quotient.Defs` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.Span` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [dvd_geom_sum₂_iff_of_dvd_sub](../../../../mathematics/Algebra/Multiplicity/Variantd7b8ec6ba94ca5561b5afbfd09c1c6423991f30c0e9b971419fa07d89a611c60.lean/declarations/dvd-geom-sum-iff-of-dvd-sub--4d898e7e550a2a0151e9bacb.md) | 40 | `result-track:4d898e7e550a2a0151e9bacba9c0cc25a6f78ac6b46252ecdba5c25b2cee1371` |
| 2 | `theorem` | [dvd_geom_sum₂_iff_of_dvd_sub'](../../../../mathematics/Algebra/Multiplicity/Variantd7b8ec6ba94ca5561b5afbfd09c1c6423991f30c0e9b971419fa07d89a611c60.lean/declarations/dvd-geom-sum-iff-of-dvd-sub--800963ae7c435789166b2a7d.md) | 46 | `result-track:800963ae7c435789166b2a7dfb7ff2b33a7714257e9aae5831b546d36a695a59` |
| 3 | `theorem` | [dvd_geom_sum₂_self](../../../../mathematics/Algebra/Multiplicity/Variantd7b8ec6ba94ca5561b5afbfd09c1c6423991f30c0e9b971419fa07d89a611c60.lean/declarations/dvd-geom-sum-self--2d718e99a79bd96686144eaa.md) | 50 | `result-track:2d718e99a79bd96686144eaac1b5b8979e6aabb9a0505f172520223fc30597ee` |
| 4 | `theorem` | [sq_dvd_add_pow_sub_sub](../../../../mathematics/Algebra/Multiplicity/Variantd7b8ec6ba94ca5561b5afbfd09c1c6423991f30c0e9b971419fa07d89a611c60.lean/declarations/sq-dvd-add-pow-sub-sub--65bfdb3d62e202b8c977488d.md) | 54 | `result-track:65bfdb3d62e202b8c977488d6b65a23026b3992b3b7c38f6fcc725f9a897ce81` |
| 5 | `theorem` | [not_dvd_geom_sum₂](../../../../mathematics/Algebra/Multiplicity/Variantd7b8ec6ba94ca5561b5afbfd09c1c6423991f30c0e9b971419fa07d89a611c60.lean/declarations/not-dvd-geom-sum--fab9643d51c25eee71a386ce.md) | 71 | `result-track:fab9643d51c25eee71a386ce2668b9560513f6327c024e99751c464499756e96` |
| 6 | `theorem` | [odd_sq_dvd_geom_sum₂_sub](../../../../mathematics/Algebra/Multiplicity/Variantd7b8ec6ba94ca5561b5afbfd09c1c6423991f30c0e9b971419fa07d89a611c60.lean/declarations/odd-sq-dvd-geom-sum-sub--5789c0a605ed8dd5abe7a9be.md) | 78 | `result-track:5789c0a605ed8dd5abe7a9be91ab87088deebd2324fcb3d44bf1efe432a4ce96` |
| 7 | `theorem` | [emultiplicity_pow_sub_pow_of_prime](../../../../mathematics/Algebra/Multiplicity/Variantd7b8ec6ba94ca5561b5afbfd09c1c6423991f30c0e9b971419fa07d89a611c60.lean/declarations/emultiplicity-pow-sub-pow-of-prime--5ff0cc59a22195c579f9998d.md) | 146 | `result-track:5ff0cc59a22195c579f9998d1be09ed6aadeb62feebee7889cff81a8514bc422` |
| 8 | `theorem` | [emultiplicity_geom_sum₂_eq_one](../../../../mathematics/Algebra/Multiplicity/Variantd7b8ec6ba94ca5561b5afbfd09c1c6423991f30c0e9b971419fa07d89a611c60.lean/declarations/emultiplicity-geom-sum-eq-one--a83e2479833fd0aca6afc4ee.md) | 158 | `result-track:a83e2479833fd0aca6afc4ee294a878f125d0e792da488eaa6aebfcd07c49fc5` |
| 9 | `theorem` | [emultiplicity_pow_prime_sub_pow_prime](../../../../mathematics/Algebra/Multiplicity/Variantd7b8ec6ba94ca5561b5afbfd09c1c6423991f30c0e9b971419fa07d89a611c60.lean/declarations/emultiplicity-pow-prime-sub-pow-prime--bad67240759ca34db9258c40.md) | 174 | `result-track:bad67240759ca34db9258c400c19cc047f138eb8afb8944b34390d6c21ad78ad` |
| 10 | `theorem` | [emultiplicity_pow_prime_pow_sub_pow_prime_pow](../../../../mathematics/Algebra/Multiplicity/Variantd7b8ec6ba94ca5561b5afbfd09c1c6423991f30c0e9b971419fa07d89a611c60.lean/declarations/emultiplicity-pow-prime-pow-sub-pow-prime-pow--eee4bd0cf57e5727d5339a9c.md) | 181 | `result-track:eee4bd0cf57e5727d5339a9cce7d8af1836d0bd713395a079c23928e1ef42463` |
| 11 | `theorem` | [Int.emultiplicity_pow_sub_pow](../../../../mathematics/Algebra/Multiplicity/Variantd7b8ec6ba94ca5561b5afbfd09c1c6423991f30c0e9b971419fa07d89a611c60.lean/declarations/int-emultiplicity-pow-sub-pow--ba6d27e31c07945ce9ba1e00.md) | 203 | `result-track:ba6d27e31c07945ce9ba1e0008d8c6f9c64fbfe4d5e32e5444c80e839a5d11f5` |
| 12 | `theorem` | [Int.emultiplicity_pow_add_pow](../../../../mathematics/Algebra/Multiplicity/Variantd7b8ec6ba94ca5561b5afbfd09c1c6423991f30c0e9b971419fa07d89a611c60.lean/declarations/int-emultiplicity-pow-add-pow--d37f6b59279492cde1f088ac.md) | 225 | `result-track:d37f6b59279492cde1f088ac2920e6c72c73ca72651b3e937769318af2a417c2` |
| 13 | `theorem` | [Nat.emultiplicity_pow_sub_pow](../../../../mathematics/Algebra/Multiplicity/Variantd7b8ec6ba94ca5561b5afbfd09c1c6423991f30c0e9b971419fa07d89a611c60.lean/declarations/nat-emultiplicity-pow-sub-pow--10967dfb3c83446fab5cbf04.md) | 235 | `result-track:10967dfb3c83446fab5cbf0479732e64390c7a059e87492d55e82da250a81f3f` |
| 14 | `theorem` | [Nat.emultiplicity_pow_add_pow](../../../../mathematics/Algebra/Multiplicity/Variantd7b8ec6ba94ca5561b5afbfd09c1c6423991f30c0e9b971419fa07d89a611c60.lean/declarations/nat-emultiplicity-pow-add-pow--9b077eebb89968ea3252b74f.md) | 250 | `result-track:9b077eebb89968ea3252b74fc651e393791d33d20561b5f648ee8e26c2c22c26` |
| 15 | `theorem` | [pow_two_pow_sub_pow_two_pow](../../../../mathematics/Algebra/Multiplicity/Variantd7b8ec6ba94ca5561b5afbfd09c1c6423991f30c0e9b971419fa07d89a611c60.lean/declarations/pow-two-pow-sub-pow-two-pow--3342455bb7d6cd9a6fc0c60d.md) | 265 | `result-track:3342455bb7d6cd9a6fc0c60d7ca69b45a694d39f5df644ba1d92c923ba1d27fe` |
| 16 | `theorem` | [Int.sq_mod_four_eq_one_of_odd](../../../../mathematics/Algebra/Multiplicity/Variantd7b8ec6ba94ca5561b5afbfd09c1c6423991f30c0e9b971419fa07d89a611c60.lean/declarations/int-sq-mod-four-eq-one-of-odd--6c452c0f994879aead2498e9.md) | 275 | `result-track:6c452c0f994879aead2498e95d1cc71cbb79f34ba9087fb7ca16e03be4d51f21` |
| 17 | `theorem` | [Int.two_pow_two_pow_add_two_pow_two_pow](../../../../mathematics/Algebra/Multiplicity/Variantd7b8ec6ba94ca5561b5afbfd09c1c6423991f30c0e9b971419fa07d89a611c60.lean/declarations/int-two-pow-two-pow-add-two-pow-two-pow--dc1812c812225965ee1126e5.md) | 283 | `result-track:dc1812c812225965ee1126e59cded80d0879649995c30b825b82e7f45875eeb2` |
| 18 | `theorem` | [Int.two_pow_two_pow_sub_pow_two_pow](../../../../mathematics/Algebra/Multiplicity/Variantd7b8ec6ba94ca5561b5afbfd09c1c6423991f30c0e9b971419fa07d89a611c60.lean/declarations/int-two-pow-two-pow-sub-pow-two-pow--e0c03a15e6d751505937bd36.md) | 307 | `result-track:e0c03a15e6d751505937bd36a6ca72d002b641068c54ea2d648c5d487d9997d6` |
| 19 | `theorem` | [Int.two_pow_sub_pow'](../../../../mathematics/Algebra/Multiplicity/Variantd7b8ec6ba94ca5561b5afbfd09c1c6423991f30c0e9b971419fa07d89a611c60.lean/declarations/int-two-pow-sub-pow--096b36642e4577be2ee18f3f.md) | 313 | `result-track:096b36642e4577be2ee18f3f6d9dbe427a8b9205e95a0410d6570d8ea6163d3c` |
| 20 | `theorem` | [Int.two_pow_sub_pow](../../../../mathematics/Algebra/Multiplicity/Variantd7b8ec6ba94ca5561b5afbfd09c1c6423991f30c0e9b971419fa07d89a611c60.lean/declarations/int-two-pow-sub-pow--5d9a76f9dda5f0d1997e9663.md) | 337 | `result-track:5d9a76f9dda5f0d1997e9663a5fd4615e72ee417299a4aa2598eb7e56d109f2a` |
| 21 | `theorem` | [Nat.two_pow_sub_pow](../../../../mathematics/Algebra/Multiplicity/Variantd7b8ec6ba94ca5561b5afbfd09c1c6423991f30c0e9b971419fa07d89a611c60.lean/declarations/nat-two-pow-sub-pow--514511bdf89de6e8239e0c5a.md) | 364 | `result-track:514511bdf89de6e8239e0c5a853aa1d5890ea36ab0a326bf766fee37542b0cbe` |
| 22 | `theorem` | [pow_two_sub_pow](../../../../mathematics/Algebra/Multiplicity/Variantd7b8ec6ba94ca5561b5afbfd09c1c6423991f30c0e9b971419fa07d89a611c60.lean/declarations/pow-two-sub-pow--47b2e6c07190d55994219257.md) | 384 | `result-track:47b2e6c07190d55994219257aad182dc9a29ef71eae382794e21b8ea6046deab` |
| 23 | `theorem` | [pow_sub_pow](../../../../mathematics/Algebra/Multiplicity/Variantd7b8ec6ba94ca5561b5afbfd09c1c6423991f30c0e9b971419fa07d89a611c60.lean/declarations/pow-sub-pow--9cc1013bd40aa84708687ba9.md) | 399 | `result-track:9cc1013bd40aa84708687ba91760f28ffe32fde94dd7c89b8450504f3e6da88e` |
| 24 | `theorem` | [pow_add_pow](../../../../mathematics/Algebra/Multiplicity/Variantd7b8ec6ba94ca5561b5afbfd09c1c6423991f30c0e9b971419fa07d89a611c60.lean/declarations/pow-add-pow--ff54ee9983d6654a7649f8c8.md) | 408 | `result-track:ff54ee9983d6654a7649f8c865b6bf73de12f8ce2535bb2e5264a3def25d9e01` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
