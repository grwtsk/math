# Verification target: GRWTSK.Algebra.CommutativeAlgebra.Imo1969Q1.Variantdca19d8d582b3d2eaab153205524284a00708fd6982b05999b91952cf06578e3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0d5e59e88bda662aa9d3dc76f83eac119f52ebe9",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Imo1969Q1/Variantdca19d8d582b3d2eaab153205524284a00708fd6982b05999b91952cf06578e3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/Imo1969Q1/Variantdca19d8d582b3d2eaab153205524284a00708fd6982b05999b91952cf06578e3.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/Imo1969Q1/Variantdca19d8d582b3d2eaab153205524284a00708fd6982b05999b91952cf06578e3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0d5e59e88bda662aa9d3dc76f83eac119f52ebe9`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Imo1969Q1/Variantdca19d8d582b3d2eaab153205524284a00708fd6982b05999b91952cf06578e3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Imo1969Q1/Variantdca19d8d582b3d2eaab153205524284a00708fd6982b05999b91952cf06578e3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.GroupPower.Identities` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Int.NatPrime` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Linarith` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormCast` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Finite` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [goodNats](../../../../../mathematics/Algebra/CommutativeAlgebra/Imo1969Q1/Variantdca19d8d582b3d2eaab153205524284a00708fd6982b05999b91952cf06578e3.lean/declarations/goodnats--712c371a771dd7f2655a5d4b.md) | 28 | `declaration-track:712c371a771dd7f2655a5d4becd9796950d8dbb7e86a5f7a2b850da41d8df217` |
| 2 | `theorem` | [factorization](../../../../../mathematics/Algebra/CommutativeAlgebra/Imo1969Q1/Variantdca19d8d582b3d2eaab153205524284a00708fd6982b05999b91952cf06578e3.lean/declarations/factorization--ccaea4fb0d05863c291f6a55.md) | 39 | `result-track:ccaea4fb0d05863c291f6a554717a5ac31823c5c8045ad82d032889026634bdd` |
| 3 | `theorem` | [left_factor_large](../../../../../mathematics/Algebra/CommutativeAlgebra/Imo1969Q1/Variantdca19d8d582b3d2eaab153205524284a00708fd6982b05999b91952cf06578e3.lean/declarations/left-factor-large--ecdcbe77abec5598bd9bf998.md) | 50 | `result-track:ecdcbe77abec5598bd9bf998ca1e67cb39b4624b020c723809cd6229a811e656` |
| 4 | `theorem` | [right_factor_large](../../../../../mathematics/Algebra/CommutativeAlgebra/Imo1969Q1/Variantdca19d8d582b3d2eaab153205524284a00708fd6982b05999b91952cf06578e3.lean/declarations/right-factor-large--62352d25ad9f6dd00e1788f8.md) | 53 | `result-track:62352d25ad9f6dd00e1788f88bb4740500668b3587530d65a7d29635af392ac7` |
| 5 | `theorem` | [int_large](../../../../../mathematics/Algebra/CommutativeAlgebra/Imo1969Q1/Variantdca19d8d582b3d2eaab153205524284a00708fd6982b05999b91952cf06578e3.lean/declarations/int-large--45535cd29fef59dfd4a4192c.md) | 61 | `result-track:45535cd29fef59dfd4a4192ca5464b96cf24d2d5d96c8d0bfcf1086d3789fab7` |
| 6 | `theorem` | [not_prime_of_int_mul'](../../../../../mathematics/Algebra/CommutativeAlgebra/Imo1969Q1/Variantdca19d8d582b3d2eaab153205524284a00708fd6982b05999b91952cf06578e3.lean/declarations/not-prime-of-int-mul--4a7675441cf7ab6d9af514e0.md) | 65 | `result-track:4a7675441cf7ab6d9af514e09729c68178f6d4d5406fd01dc0af6ba2b609a3f1` |
| 7 | `theorem` | [polynomial_not_prime](../../../../../mathematics/Algebra/CommutativeAlgebra/Imo1969Q1/Variantdca19d8d582b3d2eaab153205524284a00708fd6982b05999b91952cf06578e3.lean/declarations/polynomial-not-prime--8569ca4580d61263f2039c69.md) | 71 | `result-track:8569ca4580d61263f2039c69fe4a246af2d32a7eafb22c3cf159aa80b1f97fbb` |
| 8 | `def` | [aChoice](../../../../../mathematics/Algebra/CommutativeAlgebra/Imo1969Q1/Variantdca19d8d582b3d2eaab153205524284a00708fd6982b05999b91952cf06578e3.lean/declarations/achoice--bd39575992b9ea1aea8a24f2.md) | 79 | `declaration-track:bd39575992b9ea1aea8a24f257aac0927c19d32a0c1f32ecb38fd785f9531c09` |
| 9 | `theorem` | [aChoice_good](../../../../../mathematics/Algebra/CommutativeAlgebra/Imo1969Q1/Variantdca19d8d582b3d2eaab153205524284a00708fd6982b05999b91952cf06578e3.lean/declarations/achoice-good--40ef057a3cedd28913e0ba20.md) | 83 | `result-track:40ef057a3cedd28913e0ba200136cd544fdc98a8fb3e0dd66f552139613c4a47` |
| 10 | `theorem` | [aChoice_strictMono](../../../../../mathematics/Algebra/CommutativeAlgebra/Imo1969Q1/Variantdca19d8d582b3d2eaab153205524284a00708fd6982b05999b91952cf06578e3.lean/declarations/achoice-strictmono--7dd27ed5f8425daa37f79d58.md) | 89 | `result-track:7dd27ed5f8425daa37f79d585bc4ebd24e1e454692ea8e8f881d1d2c2c51cd7c` |
| 11 | `theorem` | [imo1969_q1](../../../../../mathematics/Algebra/CommutativeAlgebra/Imo1969Q1/Variantdca19d8d582b3d2eaab153205524284a00708fd6982b05999b91952cf06578e3.lean/declarations/imo1969-q1--03ab160962ca63dfda261c2e.md) | 99 | `result-track:03ab160962ca63dfda261c2e8d9efbf35e85cfc5190fac761a083468a6b8dfb5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
