# Verification target: GRWTSK.Algebra.CommutativeAlgebra.Univ.Variantc9a1d4517d7fd9e532ded7ba5a8994b0463a314646471ce7d4d803c30c2e483f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "22503873497a33552c0b13af9012d9b5ff8a3d63",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Univ/Variantc9a1d4517d7fd9e532ded7ba5a8994b0463a314646471ce7d4d803c30c2e483f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/Univ/Variantc9a1d4517d7fd9e532ded7ba5a8994b0463a314646471ce7d4d803c30c2e483f.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/Univ/Variantc9a1d4517d7fd9e532ded7ba5a8994b0463a314646471ce7d4d803c30c2e483f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `22503873497a33552c0b13af9012d9b5ff8a3d63`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Univ/Variantc9a1d4517d7fd9e532ded7ba5a8994b0463a314646471ce7d4d803c30c2e483f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Univ/Variantc9a1d4517d7fd9e532ded7ba5a8994b0463a314646471ce7d4d803c30c2e483f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.MvPolynomial.Equiv` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.Charpoly.Coeff` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.MvPolynomial.Homogeneous` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [univ](../../../../../mathematics/Algebra/CommutativeAlgebra/Univ/Variantc9a1d4517d7fd9e532ded7ba5a8994b0463a314646471ce7d4d803c30c2e483f.lean/declarations/univ--0bf1e04c0c60d5e0af7f10c6.md) | 48 | `declaration-track:0bf1e04c0c60d5e0af7f10c6d2ef8c0eae83639eec9f6c42eda2cd0fdd861741` |
| 2 | `lemma` | [univ_map_eval₂Hom](../../../../../mathematics/Algebra/CommutativeAlgebra/Univ/Variantc9a1d4517d7fd9e532ded7ba5a8994b0463a314646471ce7d4d803c30c2e483f.lean/declarations/univ-map-eval-hom--2d94e0e8d5a9da6e2c2bbd97.md) | 53 | `result-track:2d94e0e8d5a9da6e2c2bbd977913a97dd84e8b300674877c13b12bb02fb67fa8` |
| 3 | `lemma` | [univ_map_map](../../../../../mathematics/Algebra/CommutativeAlgebra/Univ/Variantc9a1d4517d7fd9e532ded7ba5a8994b0463a314646471ce7d4d803c30c2e483f.lean/declarations/univ-map-map--d027c2e6990588e5a7dac395.md) | 58 | `result-track:d027c2e6990588e5a7dac395476a600a0fc6afe1f2bda8cea374d4c0d1091ca5` |
| 4 | `lemma` | [univ_coeff_eval₂Hom](../../../../../mathematics/Algebra/CommutativeAlgebra/Univ/Variantc9a1d4517d7fd9e532ded7ba5a8994b0463a314646471ce7d4d803c30c2e483f.lean/declarations/univ-coeff-eval-hom--a34cb86355567e5c4e4f289b.md) | 63 | `result-track:a34cb86355567e5c4e4f289bbf46cd568394b666af98460f917624cbef94625b` |
| 5 | `lemma` | [univ_monic](../../../../../mathematics/Algebra/CommutativeAlgebra/Univ/Variantc9a1d4517d7fd9e532ded7ba5a8994b0463a314646471ce7d4d803c30c2e483f.lean/declarations/univ-monic--15d3430bea4ea5ea7535ae8b.md) | 70 | `result-track:15d3430bea4ea5ea7535ae8b1c587413754f78d4dd5ed03dff21383070197f17` |
| 6 | `lemma` | [univ_natDegree](../../../../../mathematics/Algebra/CommutativeAlgebra/Univ/Variantc9a1d4517d7fd9e532ded7ba5a8994b0463a314646471ce7d4d803c30c2e483f.lean/declarations/univ-natdegree--ed1ccad4641e8898360e5d06.md) | 72 | `result-track:ed1ccad4641e8898360e5d064438ac1e49f73a33ae3fbbc47ca490caba4a9254` |
| 7 | `lemma` | [univ_coeff_card](../../../../../mathematics/Algebra/CommutativeAlgebra/Univ/Variantc9a1d4517d7fd9e532ded7ba5a8994b0463a314646471ce7d4d803c30c2e483f.lean/declarations/univ-coeff-card--07aed5c9741c378e283c9d53.md) | 76 | `result-track:07aed5c9741c378e283c9d53403736f87c1e741bec497f339c49405fbf9f8fe3` |
| 8 | `lemma` | [optionEquivLeft_symm_univ_isHomogeneous](../../../../../mathematics/Algebra/CommutativeAlgebra/Univ/Variantc9a1d4517d7fd9e532ded7ba5a8994b0463a314646471ce7d4d803c30c2e483f.lean/declarations/optionequivleft-symm-univ-ishomogeneous--f277caaccb2844e705e5b218.md) | 83 | `result-track:f277caaccb2844e705e5b218765fcfb67b91baff5d7af5d702cda2b67a6bb2f4` |
| 9 | `lemma` | [univ_coeff_isHomogeneous](../../../../../mathematics/Algebra/CommutativeAlgebra/Univ/Variantc9a1d4517d7fd9e532ded7ba5a8994b0463a314646471ce7d4d803c30c2e483f.lean/declarations/univ-coeff-ishomogeneous--400e2290bd9d6de7161f1331.md) | 100 | `result-track:400e2290bd9d6de7161f1331c61fc8664838f011e6602e7fd6f3eef0fe8c42ba` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
