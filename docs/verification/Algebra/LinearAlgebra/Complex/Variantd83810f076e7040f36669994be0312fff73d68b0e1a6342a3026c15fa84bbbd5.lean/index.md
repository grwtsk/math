# Verification target: GRWTSK.Algebra.LinearAlgebra.Complex.Variantd83810f076e7040f36669994be0312fff73d68b0e1a6342a3026c15fa84bbbd5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3265ea654a7061b84101da73704950e3e389efc4",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Complex/Variantd83810f076e7040f36669994be0312fff73d68b0e1a6342a3026c15fa84bbbd5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Complex/Variantd83810f076e7040f36669994be0312fff73d68b0e1a6342a3026c15fa84bbbd5.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Complex/Variantd83810f076e7040f36669994be0312fff73d68b0e1a6342a3026c15fa84bbbd5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3265ea654a7061b84101da73704950e3e389efc4`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Complex/Variantd83810f076e7040f36669994be0312fff73d68b0e1a6342a3026c15fa84bbbd5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Complex/Variantd83810f076e7040f36669994be0312fff73d68b0e1a6342a3026c15fa84bbbd5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.QuadraticForm.IsometryEquiv` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Pow.Complex` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [isometryEquivSumSquares](../../../../../mathematics/Algebra/LinearAlgebra/Complex/Variantd83810f076e7040f36669994be0312fff73d68b0e1a6342a3026c15fa84bbbd5.lean/declarations/isometryequivsumsquares--de53cfb73973e8c86684bfcb.md) | 30 | `declaration-track:de53cfb73973e8c86684bfcb3d54758658409f28ba3757760dde2278b69caaab` |
| 2 | `def` | [isometryEquivSumSquaresUnits](../../../../../mathematics/Algebra/LinearAlgebra/Complex/Variantd83810f076e7040f36669994be0312fff73d68b0e1a6342a3026c15fa84bbbd5.lean/declarations/isometryequivsumsquaresunits--4213738d1e5cbdc59d636295.md) | 67 | `declaration-track:4213738d1e5cbdc59d63629553b388c519032f7d407cc930f3a23442be2e2416` |
| 3 | `theorem` | [equivalent_sum_squares](../../../../../mathematics/Algebra/LinearAlgebra/Complex/Variantd83810f076e7040f36669994be0312fff73d68b0e1a6342a3026c15fa84bbbd5.lean/declarations/equivalent-sum-squares--672fe60e8a7f92e1d57d8c01.md) | 74 | `result-track:672fe60e8a7f92e1d57d8c0195bb2415a773a69ad38429880b5bcae394ba6a51` |
| 4 | `theorem` | [complex_equivalent](../../../../../mathematics/Algebra/LinearAlgebra/Complex/Variantd83810f076e7040f36669994be0312fff73d68b0e1a6342a3026c15fa84bbbd5.lean/declarations/complex-equivalent--deee998bedaed3312d0d3fc0.md) | 82 | `result-track:deee998bedaed3312d0d3fc0726289beb8768911276c2796869cf99b574567ac` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
