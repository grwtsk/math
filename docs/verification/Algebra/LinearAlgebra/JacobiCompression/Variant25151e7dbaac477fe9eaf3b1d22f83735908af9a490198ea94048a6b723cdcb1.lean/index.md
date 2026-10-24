# Verification target: GRWTSK.Algebra.LinearAlgebra.JacobiCompression.Variant25151e7dbaac477fe9eaf3b1d22f83735908af9a490198ea94048a6b723cdcb1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f66f45beffbbb048f1e5e6350d9da9c40addc361",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/JacobiCompression/Variant25151e7dbaac477fe9eaf3b1d22f83735908af9a490198ea94048a6b723cdcb1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/JacobiCompression/Variant25151e7dbaac477fe9eaf3b1d22f83735908af9a490198ea94048a6b723cdcb1.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/JacobiCompression/Variant25151e7dbaac477fe9eaf3b1d22f83735908af9a490198ea94048a6b723cdcb1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f66f45beffbbb048f1e5e6350d9da9c40addc361`.

Source path: `GRWTSK/Algebra/LinearAlgebra/JacobiCompression/Variant25151e7dbaac477fe9eaf3b1d22f83735908af9a490198ea94048a6b723cdcb1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/JacobiCompression/Variant25151e7dbaac477fe9eaf3b1d22f83735908af9a490198ea94048a6b723cdcb1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.SemiLocalDefect.QSeries.OnePrimeMoment` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Matrix.Basic` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [RationalMatrix](../../../../../mathematics/Algebra/LinearAlgebra/JacobiCompression/Variant25151e7dbaac477fe9eaf3b1d22f83735908af9a490198ea94048a6b723cdcb1.lean/declarations/rationalmatrix--eb20e707c024d384720aa2c6.md) | 12 | `declaration-track:eb20e707c024d384720aa2c6202ce6c69ce60a6261934e7c1cf4c84c7cd0133d` |
| 2 | `def` | [rationalQuadraticForm](../../../../../mathematics/Algebra/LinearAlgebra/JacobiCompression/Variant25151e7dbaac477fe9eaf3b1d22f83735908af9a490198ea94048a6b723cdcb1.lean/declarations/rationalquadraticform--0ad373333f5dbbf396d6e0bf.md) | 15 | `declaration-track:0ad373333f5dbbf396d6e0bfa8563ea37b2bb0817d5f1e5af41c47f938ac12f9` |
| 3 | `structure` | [JacobiCompression](../../../../../mathematics/Algebra/LinearAlgebra/JacobiCompression/Variant25151e7dbaac477fe9eaf3b1d22f83735908af9a490198ea94048a6b723cdcb1.lean/declarations/jacobicompression--c492a095d4b30b7818488dd2.md) | 22 | `declaration-track:c492a095d4b30b7818488dd2f8404b2e7b8e7d29bae0ae59f1808ed0c574417f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
