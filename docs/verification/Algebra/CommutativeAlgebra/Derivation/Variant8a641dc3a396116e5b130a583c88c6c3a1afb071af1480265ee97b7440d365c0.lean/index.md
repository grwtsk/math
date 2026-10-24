# Verification target: GRWTSK.Algebra.CommutativeAlgebra.Derivation.Variant8a641dc3a396116e5b130a583c88c6c3a1afb071af1480265ee97b7440d365c0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7c092cae102598538b65242931f1e6e4384e5104",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Derivation/Variant8a641dc3a396116e5b130a583c88c6c3a1afb071af1480265ee97b7440d365c0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/Derivation/Variant8a641dc3a396116e5b130a583c88c6c3a1afb071af1480265ee97b7440d365c0.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/Derivation/Variant8a641dc3a396116e5b130a583c88c6c3a1afb071af1480265ee97b7440d365c0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7c092cae102598538b65242931f1e6e4384e5104`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Derivation/Variant8a641dc3a396116e5b130a583c88c6c3a1afb071af1480265ee97b7440d365c0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Derivation/Variant8a641dc3a396116e5b130a583c88c6c3a1afb071af1480265ee97b7440d365c0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Polynomial.AlgebraMap` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Polynomial.Derivative` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Polynomial.Module.AEval` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Adjoin.Polynomial` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Derivation.Basic` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [derivative'](../../../../../mathematics/Algebra/CommutativeAlgebra/Derivation/Variant8a641dc3a396116e5b130a583c88c6c3a1afb071af1480265ee97b7440d365c0.lean/declarations/derivative--b556efd34b13066513edbc83.md) | 30 | `declaration-track:b556efd34b13066513edbc834b8987df17378aca83c8c511449a07f02e70eb5b` |
| 2 | `theorem` | [derivation_C](../../../../../mathematics/Algebra/CommutativeAlgebra/Derivation/Variant8a641dc3a396116e5b130a583c88c6c3a1afb071af1480265ee97b7440d365c0.lean/declarations/derivation-c--66e01dc237facb70306b1d16.md) | 40 | `result-track:66e01dc237facb70306b1d1612adf167d98b592794a61f8ef891bdfdd2757516` |
| 3 | `theorem` | [C_smul_derivation_apply](../../../../../mathematics/Algebra/CommutativeAlgebra/Derivation/Variant8a641dc3a396116e5b130a583c88c6c3a1afb071af1480265ee97b7440d365c0.lean/declarations/c-smul-derivation-apply--aaf64a245da131228db7ed78.md) | 44 | `result-track:aaf64a245da131228db7ed78f972a26ffe501f11543814758e64b2fcd38eddf8` |
| 4 | `theorem` | [derivation_ext](../../../../../mathematics/Algebra/CommutativeAlgebra/Derivation/Variant8a641dc3a396116e5b130a583c88c6c3a1afb071af1480265ee97b7440d365c0.lean/declarations/derivation-ext--259d9434fba4f2055d4c7cc0.md) | 50 | `result-track:259d9434fba4f2055d4c7cc046a832a5eb6fe62a135fb088d27f3bc00013d094` |
| 5 | `def` | [mkDerivation](../../../../../mathematics/Algebra/CommutativeAlgebra/Derivation/Variant8a641dc3a396116e5b130a583c88c6c3a1afb071af1480265ee97b7440d365c0.lean/declarations/mkderivation--44a9d38639185d88c4559900.md) | 58 | `declaration-track:44a9d38639185d88c45599009776fc7c04ec51e537d2ec7bcd263f81e077027e` |
| 6 | `lemma` | [mkDerivation_apply](../../../../../mathematics/Algebra/CommutativeAlgebra/Derivation/Variant8a641dc3a396116e5b130a583c88c6c3a1afb071af1480265ee97b7440d365c0.lean/declarations/mkderivation-apply--df1389de6d962ab232d57572.md) | 63 | `result-track:df1389de6d962ab232d575729e3b3be3dbc4c157728a0d54838bcd9446e8b850` |
| 7 | `theorem` | [mkDerivation_X](../../../../../mathematics/Algebra/CommutativeAlgebra/Derivation/Variant8a641dc3a396116e5b130a583c88c6c3a1afb071af1480265ee97b7440d365c0.lean/declarations/mkderivation-x--1ebb59291a2b237bbd57f317.md) | 68 | `result-track:1ebb59291a2b237bbd57f31745b90d9532e4711ae0efd25f274c822674fea67b` |
| 8 | `lemma` | [mkDerivation_one_eq_derivative'](../../../../../mathematics/Algebra/CommutativeAlgebra/Derivation/Variant8a641dc3a396116e5b130a583c88c6c3a1afb071af1480265ee97b7440d365c0.lean/declarations/mkderivation-one-eq-derivative--3c35c0fc1b8c96aa9fa7b6c3.md) | 70 | `result-track:3c35c0fc1b8c96aa9fa7b6c3101c99e2f36c7302491f5266e1b30a60a732abe3` |
| 9 | `lemma` | [mkDerivation_one_eq_derivative](../../../../../mathematics/Algebra/CommutativeAlgebra/Derivation/Variant8a641dc3a396116e5b130a583c88c6c3a1afb071af1480265ee97b7440d365c0.lean/declarations/mkderivation-one-eq-derivative--774fe3cb3bd3c54dabbc8f59.md) | 74 | `result-track:774fe3cb3bd3c54dabbc8f59fcef6f4533615a5da51f1526922b6f9148fb6f0d` |
| 10 | `def` | [mkDerivationEquiv](../../../../../mathematics/Algebra/CommutativeAlgebra/Derivation/Variant8a641dc3a396116e5b130a583c88c6c3a1afb071af1480265ee97b7440d365c0.lean/declarations/mkderivationequiv--b6749b538d4bce90b7dc8b76.md) | 79 | `declaration-track:b6749b538d4bce90b7dc8b7622928334382f5db18c9be5bfe127a44a4d3ae773` |
| 11 | `lemma` | [mkDerivationEquiv_apply](../../../../../mathematics/Algebra/CommutativeAlgebra/Derivation/Variant8a641dc3a396116e5b130a583c88c6c3a1afb071af1480265ee97b7440d365c0.lean/declarations/mkderivationequiv-apply--1a5272d1c631e3111339f459.md) | 88 | `result-track:1a5272d1c631e3111339f4591dedb2a1782a6d059cc99b967b2e4a6b74961a44` |
| 12 | `lemma` | [mkDerivationEquiv_symm_apply](../../../../../mathematics/Algebra/CommutativeAlgebra/Derivation/Variant8a641dc3a396116e5b130a583c88c6c3a1afb071af1480265ee97b7440d365c0.lean/declarations/mkderivationequiv-symm-apply--b219a5fe3a35e968982c26b9.md) | 92 | `result-track:b219a5fe3a35e968982c26b9da9d0c53a1ebc93dd271eff443ec5bc1159fee8d` |
| 13 | `def` | [compAEval](../../../../../mathematics/Algebra/CommutativeAlgebra/Derivation/Variant8a641dc3a396116e5b130a583c88c6c3a1afb071af1480265ee97b7440d365c0.lean/declarations/compaeval--c883d8a4a9a59c132c9d4aa5.md) | 118 | `declaration-track:c883d8a4a9a59c132c9d4aa5f9a44ed5c8745e19148288d1c2ccb78ec697d68f` |
| 14 | `theorem` | [compAEval_eq](../../../../../mathematics/Algebra/CommutativeAlgebra/Derivation/Variant8a641dc3a396116e5b130a583c88c6c3a1afb071af1480265ee97b7440d365c0.lean/declarations/compaeval-eq--878ec8b3bac5dbd385ad9c96.md) | 132 | `result-track:878ec8b3bac5dbd385ad9c96162b9d04217d4b15d0076f1812368df88a712732` |
| 15 | `theorem` | [comp_aeval_eq](../../../../../mathematics/Algebra/CommutativeAlgebra/Derivation/Variant8a641dc3a396116e5b130a583c88c6c3a1afb071af1480265ee97b7440d365c0.lean/declarations/comp-aeval-eq--8b615f90cfcd95623dc22cd7.md) | 146 | `result-track:8b615f90cfcd95623dc22cd771b8e6ef37edab4d181d50ccacac0b3bce6a5310` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
