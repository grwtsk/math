# Verification target: GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.PrimeRatioProductAudit.Variant227f602c68b66736d2cee6489d2301590f27fd79cb477fea4ce2c77495db9ecc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e54cb65b2a9266db537dc0a3a147ffb6af6f6909",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeRatioProductAudit/Variant227f602c68b66736d2cee6489d2301590f27fd79cb477fea4ce2c77495db9ecc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeRatioProductAudit/Variant227f602c68b66736d2cee6489d2301590f27fd79cb477fea4ce2c77495db9ecc.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeRatioProductAudit/Variant227f602c68b66736d2cee6489d2301590f27fd79cb477fea4ce2c77495db9ecc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e54cb65b2a9266db537dc0a3a147ffb6af6f6909`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeRatioProductAudit/Variant227f602c68b66736d2cee6489d2301590f27fd79cb477fea4ce2c77495db9ecc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeRatioProductAudit/Variant227f602c68b66736d2cee6489d2301590f27fd79cb477fea4ce2c77495db9ecc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.MobiusRatio` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Ring.Finset` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Real.Sqrt` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Squarefree` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.PrimeFin` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [ordered_disjoint_assignment_product](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeRatioProductAudit/Variant227f602c68b66736d2cee6489d2301590f27fd79cb477fea4ce2c77495db9ecc.lean/declarations/ordered-disjoint-assignment-product--a60f839b98e8d45554400734.md) | 16 | `result-track:a60f839b98e8d45554400734334800932ac16b9b99d8dc90e6b9c7c597d6988f` |
| 2 | `theorem` | [reciprocal_sqrt_product](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeRatioProductAudit/Variant227f602c68b66736d2cee6489d2301590f27fd79cb477fea4ce2c77495db9ecc.lean/declarations/reciprocal-sqrt-product--acb4c8ba06e962c16c75e121.md) | 28 | `result-track:acb4c8ba06e962c16c75e12102dce99169dfd0da51080ce62637429c8ac8b160` |
| 3 | `theorem` | [reciprocal_sqrt_products](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeRatioProductAudit/Variant227f602c68b66736d2cee6489d2301590f27fd79cb477fea4ce2c77495db9ecc.lean/declarations/reciprocal-sqrt-products--bd8150a9b5afd88a04c68ea6.md) | 34 | `result-track:bd8150a9b5afd88a04c68ea6e2fb62e32da919b0cf71ecc1fae15a317604f625` |
| 4 | `theorem` | [prime_product_squarefree](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeRatioProductAudit/Variant227f602c68b66736d2cee6489d2301590f27fd79cb477fea4ce2c77495db9ecc.lean/declarations/prime-product-squarefree--f0b27b265958a3d3b96960a7.md) | 40 | `result-track:f0b27b265958a3d3b96960a71bfce91ef09b968c79c985e3f4b4cf803c0aae50` |
| 5 | `def` | [assignments](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeRatioProductAudit/Variant227f602c68b66736d2cee6489d2301590f27fd79cb477fea4ce2c77495db9ecc.lean/declarations/assignments--eeedfab1712eac09f5ef2ef2.md) | 47 | `declaration-track:eeedfab1712eac09f5ef2ef256ab1a4706346b9e616b20b1ec7e8fcc421e0e07` |
| 6 | `def` | [joinAssignment](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeRatioProductAudit/Variant227f602c68b66736d2cee6489d2301590f27fd79cb477fea4ce2c77495db9ecc.lean/declarations/joinassignment--2b07c43a1bdfabc858cf4745.md) | 50 | `declaration-track:2b07c43a1bdfabc858cf47455bda5f90c585c7869ed98bce7330ea2757b8606a` |
| 7 | `def` | [supportedPairs](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeRatioProductAudit/Variant227f602c68b66736d2cee6489d2301590f27fd79cb477fea4ce2c77495db9ecc.lean/declarations/supportedpairs--4dc2921e4e0ef18c1c9fd0c7.md) | 53 | `declaration-track:4dc2921e4e0ef18c1c9fd0c7224b911ed5ea6e2e69e2554bfd96a9b3f78f1d23` |
| 8 | `theorem` | [assignment_subsets](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeRatioProductAudit/Variant227f602c68b66736d2cee6489d2301590f27fd79cb477fea4ce2c77495db9ecc.lean/declarations/assignment-subsets--81b58ef323a1e4aa4e3992bf.md) | 56 | `result-track:81b58ef323a1e4aa4e3992bf45518d202d50a2cf3f601e17e9afcea5aa904b82` |
| 9 | `theorem` | [assignment_primeFactors](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeRatioProductAudit/Variant227f602c68b66736d2cee6489d2301590f27fd79cb477fea4ce2c77495db9ecc.lean/declarations/assignment-primefactors--067ed96eed2498ce5f157002.md) | 66 | `result-track:067ed96eed2498ce5f1570027e1c0963dcc1a0a31ccc7951354bcfa443219292` |
| 10 | `theorem` | [joinAssignment_injOn](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeRatioProductAudit/Variant227f602c68b66736d2cee6489d2301590f27fd79cb477fea4ce2c77495db9ecc.lean/declarations/joinassignment-injon--155065132ffdc59e4d78f500.md) | 73 | `result-track:155065132ffdc59e4d78f500924259103373229fd41cd5cf2227b8aa5b275bd9` |
| 11 | `theorem` | [mem_supportedPairs_iff](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeRatioProductAudit/Variant227f602c68b66736d2cee6489d2301590f27fd79cb477fea4ce2c77495db9ecc.lean/declarations/mem-supportedpairs-iff--6f40bec1830b05ea2cd9078d.md) | 85 | `result-track:6f40bec1830b05ea2cd9078dd86344af3db904637b13a1e4225ba3560f937464` |
| 12 | `theorem` | [supportedPairs_weight_sum](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeRatioProductAudit/Variant227f602c68b66736d2cee6489d2301590f27fd79cb477fea4ce2c77495db9ecc.lean/declarations/supportedpairs-weight-sum--7683a692cb10d9419fad7d54.md) | 122 | `result-track:7683a692cb10d9419fad7d54be389a9d97bf2fed71ddf79c25383d50ff5bef55` |
| 13 | `theorem` | [supportedPairs_moebius_weight_sum](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeRatioProductAudit/Variant227f602c68b66736d2cee6489d2301590f27fd79cb477fea4ce2c77495db9ecc.lean/declarations/supportedpairs-moebius-weight-sum--af7d2e0176f5b4bfd0f33eb7.md) | 134 | `result-track:af7d2e0176f5b4bfd0f33eb7c16f3b0787b724fa4d5207ee5a2a2dd713ec8447` |
| 14 | `theorem` | [squareful_ratio_coefficient_zero](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeRatioProductAudit/Variant227f602c68b66736d2cee6489d2301590f27fd79cb477fea4ce2c77495db9ecc.lean/declarations/squareful-ratio-coefficient-zero--35af41428c39f16129a5646d.md) | 149 | `result-track:35af41428c39f16129a5646d39af918fdf76702d512d7465e69126feb94536ec` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
