# Verification target: GRWTSK.Algebra.UniversalAlgebra.Rat.Variant695018251ef9615fcacc6aaa0013f0354a8761075ea5ab77151b1cbebfec2734

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dba9e780f510175aafc7580c9dfa9e736d5b2b17",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Rat/Variant695018251ef9615fcacc6aaa0013f0354a8761075ea5ab77151b1cbebfec2734.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Rat/Variant695018251ef9615fcacc6aaa0013f0354a8761075ea5ab77151b1cbebfec2734.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Rat/Variant695018251ef9615fcacc6aaa0013f0354a8761075ea5ab77151b1cbebfec2734.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dba9e780f510175aafc7580c9dfa9e736d5b2b17`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Rat/Variant695018251ef9615fcacc6aaa0013f0354a8761075ea5ab77151b1cbebfec2734.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Rat/Variant695018251ef9615fcacc6aaa0013f0354a8761075ea5ab77151b1cbebfec2734.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Module.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.NNRat.Lemmas` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Rat.Cast.Order` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [PosSMulMono.nnrat_of_rat](../../../../../mathematics/Algebra/UniversalAlgebra/Rat/Variant695018251ef9615fcacc6aaa0013f0354a8761075ea5ab77151b1cbebfec2734.lean/declarations/possmulmono-nnrat-of-rat--2b322c1a4cbf59a273cf7d25.md) | 16 | `declaration-track:2b322c1a4cbf59a273cf7d25128cf91babecd819115aa415f6d049708fcd9ca1` |
| 2 | `instance` | [PosSMulStrictMono.nnrat_of_rat](../../../../../mathematics/Algebra/UniversalAlgebra/Rat/Variant695018251ef9615fcacc6aaa0013f0354a8761075ea5ab77151b1cbebfec2734.lean/declarations/possmulstrictmono-nnrat-of-rat--9d0212cc2b88b4c2d0b289f9.md) | 19 | `declaration-track:9d0212cc2b88b4c2d0b289f97e1b911daa05e6ce4561269ea04df5a057451bd2` |
| 3 | `lemma` | [abs_nnqsmul](../../../../../mathematics/Algebra/UniversalAlgebra/Rat/Variant695018251ef9615fcacc6aaa0013f0354a8761075ea5ab77151b1cbebfec2734.lean/declarations/abs-nnqsmul--25bf35105335c5fa9e3b0812.md) | 25 | `result-track:25bf35105335c5fa9e3b08120c1870fa8e76f41852e08acc60d1e54eebb51ac8` |
| 4 | `lemma` | [abs_qsmul](../../../../../mathematics/Algebra/UniversalAlgebra/Rat/Variant695018251ef9615fcacc6aaa0013f0354a8761075ea5ab77151b1cbebfec2734.lean/declarations/abs-qsmul--f9ad25f1d93b0c7b0bd5e7f3.md) | 30 | `result-track:f9ad25f1d93b0c7b0bd5e7f33d20d2cea3a35dfab0c8077aaaf45c9b4ebee726` |
| 5 | `instance` | [LinearOrderedSemifield.toPosSMulStrictMono_rat](../../../../../mathematics/Algebra/UniversalAlgebra/Rat/Variant695018251ef9615fcacc6aaa0013f0354a8761075ea5ab77151b1cbebfec2734.lean/declarations/linearorderedsemifield-topossmulstrictmono-rat--62ee06e36347984536d5b7aa.md) | 41 | `declaration-track:62ee06e36347984536d5b7aa1d4375a5c8c3510e52926ac1a4e2fbb2e7383f43` |
| 6 | `instance` | [LinearOrderedField.toPosSMulStrictMono_rat](../../../../../mathematics/Algebra/UniversalAlgebra/Rat/Variant695018251ef9615fcacc6aaa0013f0354a8761075ea5ab77151b1cbebfec2734.lean/declarations/linearorderedfield-topossmulstrictmono-rat--bf867bce1b9aab5cc4c907a6.md) | 50 | `declaration-track:bf867bce1b9aab5cc4c907a658adc158fb3d1d6995818f081f4f1dc4aaacb568` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
