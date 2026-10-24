# Verification target: GRWTSK.Algebra.CommutativeAlgebra.Imo1969Q1.Variantf36f9bc78519756cf73953367148b18362c883644d3d9ccca00addf4a0359f75

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2c9a498155fbf957e05da6df350d2a332a555fbf",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Imo1969Q1/Variantf36f9bc78519756cf73953367148b18362c883644d3d9ccca00addf4a0359f75.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/Imo1969Q1/Variantf36f9bc78519756cf73953367148b18362c883644d3d9ccca00addf4a0359f75.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/Imo1969Q1/Variantf36f9bc78519756cf73953367148b18362c883644d3d9ccca00addf4a0359f75.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2c9a498155fbf957e05da6df350d2a332a555fbf`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Imo1969Q1/Variantf36f9bc78519756cf73953367148b18362c883644d3d9ccca00addf4a0359f75.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Imo1969Q1/Variantf36f9bc78519756cf73953367148b18362c883644d3d9ccca00addf4a0359f75.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.GroupPower.Identities` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Int.NatPrime` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Linarith` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormCast` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Finite` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [goodNats](../../../../../mathematics/Algebra/CommutativeAlgebra/Imo1969Q1/Variantf36f9bc78519756cf73953367148b18362c883644d3d9ccca00addf4a0359f75.lean/declarations/goodnats--277b3044b1a2e3e436ea92c7.md) | 36 | `declaration-track:277b3044b1a2e3e436ea92c7fb03babed4422bd394ea4ec33c030996013b47bd` |
| 2 | `theorem` | [factorization](../../../../../mathematics/Algebra/CommutativeAlgebra/Imo1969Q1/Variantf36f9bc78519756cf73953367148b18362c883644d3d9ccca00addf4a0359f75.lean/declarations/factorization--6a65efc0cd2b746efa665497.md) | 47 | `result-track:6a65efc0cd2b746efa66549788016f8bc435890186a570e40a9a687201f29b30` |
| 3 | `theorem` | [left_factor_large](../../../../../mathematics/Algebra/CommutativeAlgebra/Imo1969Q1/Variantf36f9bc78519756cf73953367148b18362c883644d3d9ccca00addf4a0359f75.lean/declarations/left-factor-large--75a638cafc87228beb4e743b.md) | 58 | `result-track:75a638cafc87228beb4e743ba80d4309102f517cbefb6cae2f5dc8e160bc39d8` |
| 4 | `theorem` | [right_factor_large](../../../../../mathematics/Algebra/CommutativeAlgebra/Imo1969Q1/Variantf36f9bc78519756cf73953367148b18362c883644d3d9ccca00addf4a0359f75.lean/declarations/right-factor-large--3773803123f2026930ed8c48.md) | 61 | `result-track:3773803123f2026930ed8c48724a2607e8452f304eee5ffa31324dd839b088d1` |
| 5 | `theorem` | [int_large](../../../../../mathematics/Algebra/CommutativeAlgebra/Imo1969Q1/Variantf36f9bc78519756cf73953367148b18362c883644d3d9ccca00addf4a0359f75.lean/declarations/int-large--b09aba448a6160f22844434f.md) | 69 | `result-track:b09aba448a6160f22844434f0e5c06a1f122cb4bfaf9fbffac3ef2814f5e4e0e` |
| 6 | `theorem` | [not_prime_of_int_mul'](../../../../../mathematics/Algebra/CommutativeAlgebra/Imo1969Q1/Variantf36f9bc78519756cf73953367148b18362c883644d3d9ccca00addf4a0359f75.lean/declarations/not-prime-of-int-mul--3ac58b10a28254517a14e8c0.md) | 73 | `result-track:3ac58b10a28254517a14e8c0997fe318caac3a3cf0b613757b922d2801dff54c` |
| 7 | `theorem` | [polynomial_not_prime](../../../../../mathematics/Algebra/CommutativeAlgebra/Imo1969Q1/Variantf36f9bc78519756cf73953367148b18362c883644d3d9ccca00addf4a0359f75.lean/declarations/polynomial-not-prime--916df95a2c5126cde7898be0.md) | 79 | `result-track:916df95a2c5126cde7898be00a83246c6a4f92e021f0891879be8480c4a1fed1` |
| 8 | `def` | [aChoice](../../../../../mathematics/Algebra/CommutativeAlgebra/Imo1969Q1/Variantf36f9bc78519756cf73953367148b18362c883644d3d9ccca00addf4a0359f75.lean/declarations/achoice--54aae63777dcf1a90eed7490.md) | 87 | `declaration-track:54aae63777dcf1a90eed749038f112eb3bac3f78120f207e05d467e06efbca30` |
| 9 | `theorem` | [aChoice_good](../../../../../mathematics/Algebra/CommutativeAlgebra/Imo1969Q1/Variantf36f9bc78519756cf73953367148b18362c883644d3d9ccca00addf4a0359f75.lean/declarations/achoice-good--a971c509cbcdebdfeb8024b6.md) | 91 | `result-track:a971c509cbcdebdfeb8024b64d3ad1a5250fb90e16e0c19c30190cf4ea20b523` |
| 10 | `theorem` | [aChoice_strictMono](../../../../../mathematics/Algebra/CommutativeAlgebra/Imo1969Q1/Variantf36f9bc78519756cf73953367148b18362c883644d3d9ccca00addf4a0359f75.lean/declarations/achoice-strictmono--6c131879f166843e937680d7.md) | 97 | `result-track:6c131879f166843e937680d723e92fc52a11954064fe819f192ce4e1b0d33d58` |
| 11 | `theorem` | [imo1969_q1](../../../../../mathematics/Algebra/CommutativeAlgebra/Imo1969Q1/Variantf36f9bc78519756cf73953367148b18362c883644d3d9ccca00addf4a0359f75.lean/declarations/imo1969-q1--538196eb811b8a511e9abd35.md) | 107 | `result-track:538196eb811b8a511e9abd35f4c94d5ce7f553c02128dfddaacc6613db41a18e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
