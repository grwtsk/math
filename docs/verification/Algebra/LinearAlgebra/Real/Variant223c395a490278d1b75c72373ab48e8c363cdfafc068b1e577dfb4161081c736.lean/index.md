# Verification target: GRWTSK.Algebra.LinearAlgebra.Real.Variant223c395a490278d1b75c72373ab48e8c363cdfafc068b1e577dfb4161081c736

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2c98bd62c4c37b82a66b56c6406c092f094dd1d7",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Real/Variant223c395a490278d1b75c72373ab48e8c363cdfafc068b1e577dfb4161081c736.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Real/Variant223c395a490278d1b75c72373ab48e8c363cdfafc068b1e577dfb4161081c736.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Real/Variant223c395a490278d1b75c72373ab48e8c363cdfafc068b1e577dfb4161081c736.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2c98bd62c4c37b82a66b56c6406c092f094dd1d7`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Real/Variant223c395a490278d1b75c72373ab48e8c363cdfafc068b1e577dfb4161081c736.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Real/Variant223c395a490278d1b75c72373ab48e8c363cdfafc068b1e577dfb4161081c736.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.QuadraticForm.IsometryEquiv` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Sign` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.CharP.Invertible` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.RCLike.Basic` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [isometryEquivSignWeightedSumSquares](../../../../../mathematics/Algebra/LinearAlgebra/Real/Variant223c395a490278d1b75c72373ab48e8c363cdfafc068b1e577dfb4161081c736.lean/declarations/isometryequivsignweightedsumsquares--34402f24ce91411d2f441d0d.md) | 42 | `declaration-track:34402f24ce91411d2f441d0d8606feb4da1efe55983570458ee21ee0cdf2e944` |
| 2 | `theorem` | [equivalent_sign_ne_zero_weighted_sum_squared](../../../../../mathematics/Algebra/LinearAlgebra/Real/Variant223c395a490278d1b75c72373ab48e8c363cdfafc068b1e577dfb4161081c736.lean/declarations/equivalent-sign-ne-zero-weighted-sum-squared--46bd92b68148fa4c12b28b9b.md) | 61 | `result-track:46bd92b68148fa4c12b28b9b2491aeedea7ebcc22ca2452d8d6a20ca324edd1d` |
| 3 | `theorem` | [equivalent_one_neg_one_weighted_sum_squared](../../../../../mathematics/Algebra/LinearAlgebra/Real/Variant223c395a490278d1b75c72373ab48e8c363cdfafc068b1e577dfb4161081c736.lean/declarations/equivalent-one-neg-one-weighted-sum-squared--2e2286a5b808f00e5c9d9890.md) | 71 | `result-track:2e2286a5b808f00e5c9d9890255f2c2357aeff1155fe1b29db1c1dd432573890` |
| 4 | `theorem` | [equivalent_signType_weighted_sum_squared](../../../../../mathematics/Algebra/LinearAlgebra/Real/Variant223c395a490278d1b75c72373ab48e8c363cdfafc068b1e577dfb4161081c736.lean/declarations/equivalent-signtype-weighted-sum-squared--3979e08213612e39844d27de.md) | 80 | `result-track:3979e08213612e39844d27de4cbbc186b736ce3e66d852097ad2bf71618f239e` |
| 5 | `theorem` | [equivalent_one_zero_neg_one_weighted_sum_squared](../../../../../mathematics/Algebra/LinearAlgebra/Real/Variant223c395a490278d1b75c72373ab48e8c363cdfafc068b1e577dfb4161081c736.lean/declarations/equivalent-one-zero-neg-one-weighted-sum-squared--d14bd497548c4271cbedea65.md) | 89 | `result-track:d14bd497548c4271cbedea658d140dbbe20fca8e2d312d1174f7fb9c20125286` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
