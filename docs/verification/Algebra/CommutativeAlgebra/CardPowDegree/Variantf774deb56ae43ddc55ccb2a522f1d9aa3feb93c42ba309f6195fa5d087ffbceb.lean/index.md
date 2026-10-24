# Verification target: GRWTSK.Algebra.CommutativeAlgebra.CardPowDegree.Variantf774deb56ae43ddc55ccb2a522f1d9aa3feb93c42ba309f6195fa5d087ffbceb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d8cbd22ca216ed03ea25a9d254b737f8a1af93b8",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/CardPowDegree/Variantf774deb56ae43ddc55ccb2a522f1d9aa3feb93c42ba309f6195fa5d087ffbceb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/CardPowDegree/Variantf774deb56ae43ddc55ccb2a522f1d9aa3feb93c42ba309f6195fa5d087ffbceb.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/CardPowDegree/Variantf774deb56ae43ddc55ccb2a522f1d9aa3feb93c42ba309f6195fa5d087ffbceb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d8cbd22ca216ed03ea25a9d254b737f8a1af93b8`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/CardPowDegree/Variantf774deb56ae43ddc55ccb2a522f1d9aa3feb93c42ba309f6195fa5d087ffbceb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/CardPowDegree/Variantf774deb56ae43ddc55ccb2a522f1d9aa3feb93c42ba309f6195fa5d087ffbceb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.EuclideanAbsoluteValue` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Polynomial.FieldDivision` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [cardPowDegree](../../../../../mathematics/Algebra/CommutativeAlgebra/CardPowDegree/Variantf774deb56ae43ddc55ccb2a522f1d9aa3feb93c42ba309f6195fa5d087ffbceb.lean/declarations/cardpowdegree--5aedd3506773e9a8b98d75f0.md) | 41 | `declaration-track:5aedd3506773e9a8b98d75f0b911eae44c80b8a57ecf6cca6966247f7b7e7821` |
| 2 | `theorem` | [cardPowDegree_apply](../../../../../mathematics/Algebra/CommutativeAlgebra/CardPowDegree/Variantf774deb56ae43ddc55ccb2a522f1d9aa3feb93c42ba309f6195fa5d087ffbceb.lean/declarations/cardpowdegree-apply--89cfa4a202cd415ae8d9cf3a.md) | 76 | `result-track:89cfa4a202cd415ae8d9cf3a3e7ecde8eaf4cb22a9963e915575dce220a21910` |
| 3 | `theorem` | [cardPowDegree_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/CardPowDegree/Variantf774deb56ae43ddc55ccb2a522f1d9aa3feb93c42ba309f6195fa5d087ffbceb.lean/declarations/cardpowdegree-zero--76c37fed54d5a6f431ca4305.md) | 82 | `result-track:76c37fed54d5a6f431ca43058fcbea4e28f35e437ff8c7c296bcf968ce327ad0` |
| 4 | `theorem` | [cardPowDegree_nonzero](../../../../../mathematics/Algebra/CommutativeAlgebra/CardPowDegree/Variantf774deb56ae43ddc55ccb2a522f1d9aa3feb93c42ba309f6195fa5d087ffbceb.lean/declarations/cardpowdegree-nonzero--b117051468e8e57efe495322.md) | 86 | `result-track:b117051468e8e57efe4953227279be4d93dd2c9edfc1a577806bfe848c62c2b7` |
| 5 | `theorem` | [cardPowDegree_isEuclidean](../../../../../mathematics/Algebra/CommutativeAlgebra/CardPowDegree/Variantf774deb56ae43ddc55ccb2a522f1d9aa3feb93c42ba309f6195fa5d087ffbceb.lean/declarations/cardpowdegree-iseuclidean--b8b64c97d5eae3b0c8e354a1.md) | 91 | `result-track:b8b64c97d5eae3b0c8e354a16775c9c0527c2c3e0e3c2fff389e09e62410c1f5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
