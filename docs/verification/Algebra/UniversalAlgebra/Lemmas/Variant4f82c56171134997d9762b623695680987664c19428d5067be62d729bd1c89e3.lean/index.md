# Verification target: GRWTSK.Algebra.UniversalAlgebra.Lemmas.Variant4f82c56171134997d9762b623695680987664c19428d5067be62d729bd1c89e3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6a50285949df1af9a0ff4f500862fd8cb20f1442",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Lemmas/Variant4f82c56171134997d9762b623695680987664c19428d5067be62d729bd1c89e3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Lemmas/Variant4f82c56171134997d9762b623695680987664c19428d5067be62d729bd1c89e3.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Lemmas/Variant4f82c56171134997d9762b623695680987664c19428d5067be62d729bd1c89e3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6a50285949df1af9a0ff4f500862fd8cb20f1442`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Lemmas/Variant4f82c56171134997d9762b623695680987664c19428d5067be62d729bd1c89e3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Lemmas/Variant4f82c56171134997d9762b623695680987664c19428d5067be62d729bd1c89e3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Divisibility.Hom` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Irreducible.Lemmas` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupWithZero.Equiv` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Prime.Defs` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Monotone.Defs` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [comap_prime](../../../../../mathematics/Algebra/UniversalAlgebra/Lemmas/Variant4f82c56171134997d9762b623695680987664c19428d5067be62d729bd1c89e3.lean/declarations/comap-prime--8b9a06b6f39a27bb5c19ef0e.md) | 43 | `result-track:8b9a06b6f39a27bb5c19ef0e97d7724b62848b524d0436a72e665de074f1d790` |
| 2 | `theorem` | [MulEquiv.prime_iff](../../../../../mathematics/Algebra/UniversalAlgebra/Lemmas/Variant4f82c56171134997d9762b623695680987664c19428d5067be62d729bd1c89e3.lean/declarations/mulequiv-prime-iff--117d10a68dd733e9ff567208.md) | 53 | `result-track:117d10a68dd733e9ff567208f17099a137b7cee48331d8a34af73058e876d0d3` |
| 3 | `theorem` | [Prime.left_dvd_or_dvd_right_of_dvd_mul](../../../../../mathematics/Algebra/UniversalAlgebra/Lemmas/Variant4f82c56171134997d9762b623695680987664c19428d5067be62d729bd1c89e3.lean/declarations/prime-left-dvd-or-dvd-right-of-dvd-mul--4cc6b8747da637f002240d16.md) | 63 | `result-track:4cc6b8747da637f002240d16296c899b7d3f3745dac091bda18aeaf577cfb50a` |
| 4 | `theorem` | [Prime.pow_dvd_of_dvd_mul_left](../../../../../mathematics/Algebra/UniversalAlgebra/Lemmas/Variant4f82c56171134997d9762b623695680987664c19428d5067be62d729bd1c89e3.lean/declarations/prime-pow-dvd-of-dvd-mul-left--7cc5e13a119e266126939ef1.md) | 71 | `result-track:7cc5e13a119e266126939ef1444b4eeb93e4a8f118f7cbbc62ba48128aaa8563` |
| 5 | `theorem` | [Prime.pow_dvd_of_dvd_mul_right](../../../../../mathematics/Algebra/UniversalAlgebra/Lemmas/Variant4f82c56171134997d9762b623695680987664c19428d5067be62d729bd1c89e3.lean/declarations/prime-pow-dvd-of-dvd-mul-right--3d5f800c7a1b7cac385b4642.md) | 83 | `result-track:3d5f800c7a1b7cac385b4642c43d165c1e7915cfbddce5d233a754086dcfda41` |
| 6 | `theorem` | [Prime.dvd_of_pow_dvd_pow_mul_pow_of_square_not_dvd](../../../../../mathematics/Algebra/UniversalAlgebra/Lemmas/Variant4f82c56171134997d9762b623695680987664c19428d5067be62d729bd1c89e3.lean/declarations/prime-dvd-of-pow-dvd-pow-mul-pow-of-square-not-dvd--076a29abd9d0373d1a2faa0d.md) | 88 | `result-track:076a29abd9d0373d1a2faa0d7528bd0e09fbb6f1366d7e3503dde771e4a029eb` |
| 7 | `theorem` | [prime_pow_succ_dvd_mul](../../../../../mathematics/Algebra/UniversalAlgebra/Lemmas/Variant4f82c56171134997d9762b623695680987664c19428d5067be62d729bd1c89e3.lean/declarations/prime-pow-succ-dvd-mul--e6f5c29139097bfb8f7838d9.md) | 106 | `result-track:e6f5c29139097bfb8f7838d9111aef4e918d274009bca1ba0b2f25d82d98693f` |
| 8 | `theorem` | [succ_dvd_or_succ_dvd_of_succ_sum_dvd_mul](../../../../../mathematics/Algebra/UniversalAlgebra/Lemmas/Variant4f82c56171134997d9762b623695680987664c19428d5067be62d729bd1c89e3.lean/declarations/succ-dvd-or-succ-dvd-of-succ-sum-dvd-mul--f4dea60f206da67992fb57ef.md) | 122 | `result-track:f4dea60f206da67992fb57efa315573659309b9b9c6493690ca839630fab0946` |
| 9 | `theorem` | [Prime.not_isSquare](../../../../../mathematics/Algebra/UniversalAlgebra/Lemmas/Variant4f82c56171134997d9762b623695680987664c19428d5067be62d729bd1c89e3.lean/declarations/prime-not-issquare--aa665f73686762a74a8771fd.md) | 133 | `result-track:aa665f73686762a74a8771fd06a4c16d2934a847de21478f633e2bdaafa88245` |
| 10 | `theorem` | [IsSquare.not_prime](../../../../../mathematics/Algebra/UniversalAlgebra/Lemmas/Variant4f82c56171134997d9762b623695680987664c19428d5067be62d729bd1c89e3.lean/declarations/issquare-not-prime--b8a0a986cc77f9a1f08b4a2e.md) | 139 | `result-track:b8a0a986cc77f9a1f08b4a2e905a6a911a3565a2ad2298290f1fa0ffb836ce16` |
| 11 | `theorem` | [not_prime_pow](../../../../../mathematics/Algebra/UniversalAlgebra/Lemmas/Variant4f82c56171134997d9762b623695680987664c19428d5067be62d729bd1c89e3.lean/declarations/not-prime-pow--a96e6a0e0fbd1422bbdf53a2.md) | 141 | `result-track:a96e6a0e0fbd1422bbdf53a23d5051d850fdbbf4ed1ab851b4924ba4a65304b8` |
| 12 | `theorem` | [DvdNotUnit.isUnit_of_irreducible_right](../../../../../mathematics/Algebra/UniversalAlgebra/Lemmas/Variant4f82c56171134997d9762b623695680987664c19428d5067be62d729bd1c89e3.lean/declarations/dvdnotunit-isunit-of-irreducible-right--3d233c1b1f8a94642004b442.md) | 148 | `result-track:3d233c1b1f8a94642004b442d087c6bbe0770394eaf325bb3a82109ef70ee7ba` |
| 13 | `theorem` | [not_irreducible_of_not_unit_dvdNotUnit](../../../../../mathematics/Algebra/UniversalAlgebra/Lemmas/Variant4f82c56171134997d9762b623695680987664c19428d5067be62d729bd1c89e3.lean/declarations/not-irreducible-of-not-unit-dvdnotunit--ade7d89639ebff1369ab08eb.md) | 153 | `result-track:ade7d89639ebff1369ab08eb93a0affc9602406b8d6f9e5cd09ad6ebe7bd9c05` |
| 14 | `theorem` | [DvdNotUnit.not_unit](../../../../../mathematics/Algebra/UniversalAlgebra/Lemmas/Variant4f82c56171134997d9762b623695680987664c19428d5067be62d729bd1c89e3.lean/declarations/dvdnotunit-not-unit--74465ab666fd153fb92fe112.md) | 157 | `result-track:74465ab666fd153fb92fe1123b028d59f5f5b60345eaf4a22afed779414c5272` |
| 15 | `theorem` | [DvdNotUnit.ne](../../../../../mathematics/Algebra/UniversalAlgebra/Lemmas/Variant4f82c56171134997d9762b623695680987664c19428d5067be62d729bd1c89e3.lean/declarations/dvdnotunit-ne--380f7d5dffe97d84c027b58a.md) | 165 | `result-track:380f7d5dffe97d84c027b58a7154ba11c3d4f4b5f095bc9d0c05989873ef4cbf` |
| 16 | `theorem` | [pow_injective_of_not_isUnit](../../../../../mathematics/Algebra/UniversalAlgebra/Lemmas/Variant4f82c56171134997d9762b623695680987664c19428d5067be62d729bd1c89e3.lean/declarations/pow-injective-of-not-isunit--a3ad7a31f540fd3bae78b61f.md) | 172 | `result-track:a3ad7a31f540fd3bae78b61f9432c4856002411e60dd5c75e92309c84d0e4579` |
| 17 | `theorem` | [pow_inj_of_not_isUnit](../../../../../mathematics/Algebra/UniversalAlgebra/Lemmas/Variant4f82c56171134997d9762b623695680987664c19428d5067be62d729bd1c89e3.lean/declarations/pow-inj-of-not-isunit--bab9f5f9e395f1bc3e1ea994.md) | 178 | `result-track:bab9f5f9e395f1bc3e1ea994f7d569134b8f2a098a3e3f3ae1398992e6c5d332` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
