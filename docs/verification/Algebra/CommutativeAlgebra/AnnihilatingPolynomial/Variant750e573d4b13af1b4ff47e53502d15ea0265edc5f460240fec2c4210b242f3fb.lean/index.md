# Verification target: GRWTSK.Algebra.CommutativeAlgebra.AnnihilatingPolynomial.Variant750e573d4b13af1b4ff47e53502d15ea0265edc5f460240fec2c4210b242f3fb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6e110b92ab89f7d8d60296ef846633dda3388c33",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/AnnihilatingPolynomial/Variant750e573d4b13af1b4ff47e53502d15ea0265edc5f460240fec2c4210b242f3fb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/AnnihilatingPolynomial/Variant750e573d4b13af1b4ff47e53502d15ea0265edc5f460240fec2c4210b242f3fb.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/AnnihilatingPolynomial/Variant750e573d4b13af1b4ff47e53502d15ea0265edc5f460240fec2c4210b242f3fb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6e110b92ab89f7d8d60296ef846633dda3388c33`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/AnnihilatingPolynomial/Variant750e573d4b13af1b4ff47e53502d15ea0265edc5f460240fec2c4210b242f3fb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/AnnihilatingPolynomial/Variant750e573d4b13af1b4ff47e53502d15ea0265edc5f460240fec2c4210b242f3fb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.FieldTheory.Minpoly.Field` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.PrincipalIdealDomain` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [annIdeal](../../../../../mathematics/Algebra/CommutativeAlgebra/AnnihilatingPolynomial/Variant750e573d4b13af1b4ff47e53502d15ea0265edc5f460240fec2c4210b242f3fb.lean/declarations/annideal--edcaab3ac86a79cf9c734bb2.md) | 53 | `declaration-track:edcaab3ac86a79cf9c734bb231dad811e2b2e29852f410bbe749c6949f8f8d91` |
| 2 | `theorem` | [mem_annIdeal_iff_aeval_eq_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/AnnihilatingPolynomial/Variant750e573d4b13af1b4ff47e53502d15ea0265edc5f460240fec2c4210b242f3fb.lean/declarations/mem-annideal-iff-aeval-eq-zero--a7a9b676f5c6ca55a85fff4f.md) | 61 | `result-track:a7a9b676f5c6ca55a85fff4f1faf70c425fb703e07155242b34b56556b3de9ff` |
| 3 | `def` | [annIdealGenerator](../../../../../mathematics/Algebra/CommutativeAlgebra/AnnihilatingPolynomial/Variant750e573d4b13af1b4ff47e53502d15ea0265edc5f460240fec2c4210b242f3fb.lean/declarations/annidealgenerator--5a16173d1af17a0c11cc27a2.md) | 82 | `declaration-track:5a16173d1af17a0c11cc27a24d3b204b2951800e28848776a42a0d6e6a4f698e` |
| 4 | `theorem` | [annIdealGenerator_eq_zero_iff](../../../../../mathematics/Algebra/CommutativeAlgebra/AnnihilatingPolynomial/Variant750e573d4b13af1b4ff47e53502d15ea0265edc5f460240fec2c4210b242f3fb.lean/declarations/annidealgenerator-eq-zero-iff--e7abdb59f61ba86ac0a20dc1.md) | 92 | `result-track:e7abdb59f61ba86ac0a20dc1f02af8a2ceef1a6e387529a66b8ad45b91927a78` |
| 5 | `theorem` | [span_singleton_annIdealGenerator](../../../../../mathematics/Algebra/CommutativeAlgebra/AnnihilatingPolynomial/Variant750e573d4b13af1b4ff47e53502d15ea0265edc5f460240fec2c4210b242f3fb.lean/declarations/span-singleton-annidealgenerator--b789483e88d05f5a4abfdaab.md) | 101 | `result-track:b789483e88d05f5a4abfdaab61cc2b282f7478c3fb64bef6535c252af46166d3` |
| 6 | `theorem` | [annIdealGenerator_mem](../../../../../mathematics/Algebra/CommutativeAlgebra/AnnihilatingPolynomial/Variant750e573d4b13af1b4ff47e53502d15ea0265edc5f460240fec2c4210b242f3fb.lean/declarations/annidealgenerator-mem--84caf2ad062972381ae0d90f.md) | 114 | `result-track:84caf2ad062972381ae0d90fde3f3da1421538034378c62d96a3882567e71013` |
| 7 | `theorem` | [mem_iff_eq_smul_annIdealGenerator](../../../../../mathematics/Algebra/CommutativeAlgebra/AnnihilatingPolynomial/Variant750e573d4b13af1b4ff47e53502d15ea0265edc5f460240fec2c4210b242f3fb.lean/declarations/mem-iff-eq-smul-annidealgenerator--4d6ce5ac67f42fb3e2618027.md) | 118 | `result-track:4d6ce5ac67f42fb3e2618027d3cccb84afb6a7bea7a4fc8e0e216673f8be348a` |
| 8 | `theorem` | [monic_annIdealGenerator](../../../../../mathematics/Algebra/CommutativeAlgebra/AnnihilatingPolynomial/Variant750e573d4b13af1b4ff47e53502d15ea0265edc5f460240fec2c4210b242f3fb.lean/declarations/monic-annidealgenerator--35b2809e65f3899b97956c7f.md) | 124 | `result-track:35b2809e65f3899b97956c7f401b2659107726c2a41b10142605dd6436f70daf` |
| 9 | `theorem` | [annIdealGenerator_aeval_eq_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/AnnihilatingPolynomial/Variant750e573d4b13af1b4ff47e53502d15ea0265edc5f460240fec2c4210b242f3fb.lean/declarations/annidealgenerator-aeval-eq-zero--1e7f005a3422109aef26800a.md) | 136 | `result-track:1e7f005a3422109aef26800a189a370897d785950b7f1d689a9bbba6db4d3f10` |
| 10 | `theorem` | [mem_iff_annIdealGenerator_dvd](../../../../../mathematics/Algebra/CommutativeAlgebra/AnnihilatingPolynomial/Variant750e573d4b13af1b4ff47e53502d15ea0265edc5f460240fec2c4210b242f3fb.lean/declarations/mem-iff-annidealgenerator-dvd--822cd836900b59fa906d3736.md) | 142 | `result-track:822cd836900b59fa906d3736a77af2d1aa4d7f8f4b3e223de3e95b2e60f80480` |
| 11 | `theorem` | [degree_annIdealGenerator_le_of_mem](../../../../../mathematics/Algebra/CommutativeAlgebra/AnnihilatingPolynomial/Variant750e573d4b13af1b4ff47e53502d15ea0265edc5f460240fec2c4210b242f3fb.lean/declarations/degree-annidealgenerator-le-of-mem--77e3a361c81e34e2b3a68a5c.md) | 149 | `result-track:77e3a361c81e34e2b3a68a5c1f67c17b09e7a304aa202b68ddf4f7fb2298eb4a` |
| 12 | `theorem` | [annIdealGenerator_eq_minpoly](../../../../../mathematics/Algebra/CommutativeAlgebra/AnnihilatingPolynomial/Variant750e573d4b13af1b4ff47e53502d15ea0265edc5f460240fec2c4210b242f3fb.lean/declarations/annidealgenerator-eq-minpoly--a26c090ff102c5d3fbb104d1.md) | 157 | `result-track:a26c090ff102c5d3fbb104d1372267da2e6e7b6976a699be29860d87a3a68ba2` |
| 13 | `theorem` | [monic_generator_eq_minpoly](../../../../../mathematics/Algebra/CommutativeAlgebra/AnnihilatingPolynomial/Variant750e573d4b13af1b4ff47e53502d15ea0265edc5f460240fec2c4210b242f3fb.lean/declarations/monic-generator-eq-minpoly--cdc0cefa700ab48886afd4b4.md) | 171 | `result-track:cdc0cefa700ab48886afd4b4d8bdbd1b5dfc5f7b554d40120ea928f75cfd20e7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
