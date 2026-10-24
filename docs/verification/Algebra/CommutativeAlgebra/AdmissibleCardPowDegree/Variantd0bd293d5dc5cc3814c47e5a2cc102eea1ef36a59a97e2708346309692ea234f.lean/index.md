# Verification target: GRWTSK.Algebra.CommutativeAlgebra.AdmissibleCardPowDegree.Variantd0bd293d5dc5cc3814c47e5a2cc102eea1ef36a59a97e2708346309692ea234f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ca4914d6408e75179c907e311346d9290ccb12ec",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/AdmissibleCardPowDegree/Variantd0bd293d5dc5cc3814c47e5a2cc102eea1ef36a59a97e2708346309692ea234f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/AdmissibleCardPowDegree/Variantd0bd293d5dc5cc3814c47e5a2cc102eea1ef36a59a97e2708346309692ea234f.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/AdmissibleCardPowDegree/Variantd0bd293d5dc5cc3814c47e5a2cc102eea1ef36a59a97e2708346309692ea234f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ca4914d6408e75179c907e311346d9290ccb12ec`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/AdmissibleCardPowDegree/Variantd0bd293d5dc5cc3814c47e5a2cc102eea1ef36a59a97e2708346309692ea234f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/AdmissibleCardPowDegree/Variantd0bd293d5dc5cc3814c47e5a2cc102eea1ef36a59a97e2708346309692ea234f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.NumberTheory.ClassNumber.AdmissibleAbsoluteValue` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Pow.Real` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.LocalRing` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Polynomial.Degree.CardPowDegree` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [exists_eq_polynomial](../../../../../mathematics/Algebra/CommutativeAlgebra/AdmissibleCardPowDegree/Variantd0bd293d5dc5cc3814c47e5a2cc102eea1ef36a59a97e2708346309692ea234f.lean/declarations/exists-eq-polynomial--9f1b2273ac82535f0db2fad7.md) | 44 | `result-track:9f1b2273ac82535f0db2fad763d11069f2704cb47b6d1556516d0c97fe73712a` |
| 2 | `theorem` | [exists_approx_polynomial_aux](../../../../../mathematics/Algebra/CommutativeAlgebra/AdmissibleCardPowDegree/Variantd0bd293d5dc5cc3814c47e5a2cc102eea1ef36a59a97e2708346309692ea234f.lean/declarations/exists-approx-polynomial-aux--db911f6a362029034842d8a1.md) | 71 | `result-track:db911f6a362029034842d8a1943a5141fb223aab14b77427ca018457d1609d0b` |
| 3 | `theorem` | [exists_approx_polynomial](../../../../../mathematics/Algebra/CommutativeAlgebra/AdmissibleCardPowDegree/Variantd0bd293d5dc5cc3814c47e5a2cc102eea1ef36a59a97e2708346309692ea234f.lean/declarations/exists-approx-polynomial--124cba33c4cfc937dbc359d1.md) | 114 | `result-track:124cba33c4cfc937dbc359d12f91b2c0f3e7ff1d1cefa54a641c84f197f3dcdb` |
| 4 | `theorem` | [cardPowDegree_anti_archimedean](../../../../../mathematics/Algebra/CommutativeAlgebra/AdmissibleCardPowDegree/Variantd0bd293d5dc5cc3814c47e5a2cc102eea1ef36a59a97e2708346309692ea234f.lean/declarations/cardpowdegree-anti-archimedean--576e1be7fa85bea31ac2fee9.md) | 161 | `result-track:576e1be7fa85bea31ac2fee9bbe3fb5ba35214fe4fd403751457880f44510fd2` |
| 5 | `theorem` | [exists_partition_polynomial_aux](../../../../../mathematics/Algebra/CommutativeAlgebra/AdmissibleCardPowDegree/Variantd0bd293d5dc5cc3814c47e5a2cc102eea1ef36a59a97e2708346309692ea234f.lean/declarations/exists-partition-polynomial-aux--2018edb17df1144b09b9533e.md) | 186 | `result-track:2018edb17df1144b09b9533eb3d5a6fa990c4775a5d199eb745ead76e2b4c968` |
| 6 | `theorem` | [exists_partition_polynomial](../../../../../mathematics/Algebra/CommutativeAlgebra/AdmissibleCardPowDegree/Variantd0bd293d5dc5cc3814c47e5a2cc102eea1ef36a59a97e2708346309692ea234f.lean/declarations/exists-partition-polynomial--ffd335b2dee6a955f578ecb5.md) | 257 | `result-track:ffd335b2dee6a955f578ecb5bbf1009d414ebcdff60939cd123b96015dcc86af` |
| 7 | `def` | [cardPowDegreeIsAdmissible](../../../../../mathematics/Algebra/CommutativeAlgebra/AdmissibleCardPowDegree/Variantd0bd293d5dc5cc3814c47e5a2cc102eea1ef36a59a97e2708346309692ea234f.lean/declarations/cardpowdegreeisadmissible--dc8c0ca54e460af7b040ad84.md) | 267 | `declaration-track:dc8c0ca54e460af7b040ad844f76b7afda05ac25ed4d1303030605b7da55786c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
