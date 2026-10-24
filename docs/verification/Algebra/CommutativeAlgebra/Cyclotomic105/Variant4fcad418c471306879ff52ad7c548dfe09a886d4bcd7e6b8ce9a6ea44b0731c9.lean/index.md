# Verification target: GRWTSK.Algebra.CommutativeAlgebra.Cyclotomic105.Variant4fcad418c471306879ff52ad7c548dfe09a886d4bcd7e6b8ce9a6ea44b0731c9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f544bffee64d080287cff77fc082bd8180a68194",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Cyclotomic105/Variant4fcad418c471306879ff52ad7c548dfe09a886d4bcd7e6b8ce9a6ea44b0731c9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/Cyclotomic105/Variant4fcad418c471306879ff52ad7c548dfe09a886d4bcd7e6b8ce9a6ea44b0731c9.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/Cyclotomic105/Variant4fcad418c471306879ff52ad7c548dfe09a886d4bcd7e6b8ce9a6ea44b0731c9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f544bffee64d080287cff77fc082bd8180a68194`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Cyclotomic105/Variant4fcad418c471306879ff52ad7c548dfe09a886d4bcd7e6b8ce9a6ea44b0731c9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Cyclotomic105/Variant4fcad418c471306879ff52ad7c548dfe09a886d4bcd7e6b8ce9a6ea44b0731c9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Polynomial.Cyclotomic.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormNum.Prime` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [Nat.fact_prime_five](../../../../../mathematics/Algebra/CommutativeAlgebra/Cyclotomic105/Variant4fcad418c471306879ff52ad7c548dfe09a886d4bcd7e6b8ce9a6ea44b0731c9.lean/declarations/nat-fact-prime-five--6cdcb68aaaed2ee2f56081f1.md) | 34 | `declaration-track:6cdcb68aaaed2ee2f56081f1db327d39846149365c803a687ea8e5939abeb785` |
| 2 | `instance` | [Nat.fact_prime_seven](../../../../../mathematics/Algebra/CommutativeAlgebra/Cyclotomic105/Variant4fcad418c471306879ff52ad7c548dfe09a886d4bcd7e6b8ce9a6ea44b0731c9.lean/declarations/nat-fact-prime-seven--a5b0df001dc771ad8b5ebf0c.md) | 37 | `declaration-track:a5b0df001dc771ad8b5ebf0cb6afa92102f6c95eca85f30f51ccdbc9f059cfb6` |
| 3 | `theorem` | [properDivisors_15](../../../../../mathematics/Algebra/CommutativeAlgebra/Cyclotomic105/Variant4fcad418c471306879ff52ad7c548dfe09a886d4bcd7e6b8ce9a6ea44b0731c9.lean/declarations/properdivisors-15--41a1d7bba9a96452b6608e12.md) | 40 | `result-track:41a1d7bba9a96452b6608e12a9c2f33103b4547d8d467391a9da3d48357804a5` |
| 4 | `theorem` | [properDivisors_21](../../../../../mathematics/Algebra/CommutativeAlgebra/Cyclotomic105/Variant4fcad418c471306879ff52ad7c548dfe09a886d4bcd7e6b8ce9a6ea44b0731c9.lean/declarations/properdivisors-21--adceab492240d5f193a26b4e.md) | 43 | `result-track:adceab492240d5f193a26b4e308f5b609edd60668eb93404996bdb49123382ff` |
| 5 | `theorem` | [properDivisors_35](../../../../../mathematics/Algebra/CommutativeAlgebra/Cyclotomic105/Variant4fcad418c471306879ff52ad7c548dfe09a886d4bcd7e6b8ce9a6ea44b0731c9.lean/declarations/properdivisors-35--6d8e27a5a3424c279d97a73e.md) | 46 | `result-track:6d8e27a5a3424c279d97a73e6f788d9427a3e36505a4a80ac9eb6996e503179e` |
| 6 | `theorem` | [properDivisors_105](../../../../../mathematics/Algebra/CommutativeAlgebra/Cyclotomic105/Variant4fcad418c471306879ff52ad7c548dfe09a886d4bcd7e6b8ce9a6ea44b0731c9.lean/declarations/properdivisors-105--77474a70bbddbfb9cf1c759f.md) | 49 | `result-track:77474a70bbddbfb9cf1c759fab36e831738e12db597f8d524ba740693ce88c4c` |
| 7 | `theorem` | [cyclotomic_3](../../../../../mathematics/Algebra/CommutativeAlgebra/Cyclotomic105/Variant4fcad418c471306879ff52ad7c548dfe09a886d4bcd7e6b8ce9a6ea44b0731c9.lean/declarations/cyclotomic-3--f9d0d73788b73bbdc29a3298.md) | 56 | `result-track:f9d0d73788b73bbdc29a32981443a8ee1ae4e0231a14614a03a58cdb8531bae7` |
| 8 | `theorem` | [cyclotomic_5](../../../../../mathematics/Algebra/CommutativeAlgebra/Cyclotomic105/Variant4fcad418c471306879ff52ad7c548dfe09a886d4bcd7e6b8ce9a6ea44b0731c9.lean/declarations/cyclotomic-5--c907a71004b4521bb003035a.md) | 59 | `result-track:c907a71004b4521bb003035a369f27885841f834ca0f39af8c0ea5defd60dc30` |
| 9 | `theorem` | [cyclotomic_7](../../../../../mathematics/Algebra/CommutativeAlgebra/Cyclotomic105/Variant4fcad418c471306879ff52ad7c548dfe09a886d4bcd7e6b8ce9a6ea44b0731c9.lean/declarations/cyclotomic-7--f1afb532ac5f607a8d13983a.md) | 62 | `result-track:f1afb532ac5f607a8d13983ae561880b750aaf6e309e06958ad9c9c36676abba` |
| 10 | `theorem` | [cyclotomic_15](../../../../../mathematics/Algebra/CommutativeAlgebra/Cyclotomic105/Variant4fcad418c471306879ff52ad7c548dfe09a886d4bcd7e6b8ce9a6ea44b0731c9.lean/declarations/cyclotomic-15--864b05b69f7534aac511524d.md) | 65 | `result-track:864b05b69f7534aac511524d065d8c859c5eba33d82d4ffcc398c667af65806c` |
| 11 | `theorem` | [cyclotomic_21](../../../../../mathematics/Algebra/CommutativeAlgebra/Cyclotomic105/Variant4fcad418c471306879ff52ad7c548dfe09a886d4bcd7e6b8ce9a6ea44b0731c9.lean/declarations/cyclotomic-21--9bc0d2a93b36126667688f25.md) | 72 | `result-track:9bc0d2a93b36126667688f25967af38ff61509dd679cb704c11f5bfd32a84df3` |
| 12 | `theorem` | [cyclotomic_35](../../../../../mathematics/Algebra/CommutativeAlgebra/Cyclotomic105/Variant4fcad418c471306879ff52ad7c548dfe09a886d4bcd7e6b8ce9a6ea44b0731c9.lean/declarations/cyclotomic-35--12dbc37334a78fa2f252efaa.md) | 80 | `result-track:12dbc37334a78fa2f252efaab2762bde18ec17042093fd0ba23cf71c53c10492` |
| 13 | `theorem` | [cyclotomic_105](../../../../../mathematics/Algebra/CommutativeAlgebra/Cyclotomic105/Variant4fcad418c471306879ff52ad7c548dfe09a886d4bcd7e6b8ce9a6ea44b0731c9.lean/declarations/cyclotomic-105--750e134ea9df053eb8b71b95.md) | 90 | `result-track:750e134ea9df053eb8b71b953ceaf6321d4cc815bf83131654ebb6e93066ab58` |
| 14 | `theorem` | [coeff_cyclotomic_105](../../../../../mathematics/Algebra/CommutativeAlgebra/Cyclotomic105/Variant4fcad418c471306879ff52ad7c548dfe09a886d4bcd7e6b8ce9a6ea44b0731c9.lean/declarations/coeff-cyclotomic-105--efbd5cc7a00dd4d78ec94566.md) | 104 | `result-track:efbd5cc7a00dd4d78ec9456651fe96a0dc6187e17f195fd027bff29b15983ad6` |
| 15 | `theorem` | [not_forall_coeff_cyclotomic_neg_one_zero_one](../../../../../mathematics/Algebra/CommutativeAlgebra/Cyclotomic105/Variant4fcad418c471306879ff52ad7c548dfe09a886d4bcd7e6b8ce9a6ea44b0731c9.lean/declarations/not-forall-coeff-cyclotomic-neg-one-zero-one--933ef0d3090f72a79c4c6bc1.md) | 107 | `result-track:933ef0d3090f72a79c4c6bc1c91caaa97a011b1441b0f1ef4a67846403ecbdb3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
