# Verification target: GRWTSK.Algebra.LinearAlgebra.Minpoly.Variant6c821918754a9143e1b5cebeadaf8a9fca7c584e275f81ab878c7ffccf01aae7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e2a73551493a8fbbf378585c1043b611a61faef7",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Minpoly/Variant6c821918754a9143e1b5cebeadaf8a9fca7c584e275f81ab878c7ffccf01aae7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Minpoly/Variant6c821918754a9143e1b5cebeadaf8a9fca7c584e275f81ab878c7ffccf01aae7.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Minpoly/Variant6c821918754a9143e1b5cebeadaf8a9fca7c584e275f81ab878c7ffccf01aae7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e2a73551493a8fbbf378585c1043b611a61faef7`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Minpoly/Variant6c821918754a9143e1b5cebeadaf8a9fca7c584e275f81ab878c7ffccf01aae7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Minpoly/Variant6c821918754a9143e1b5cebeadaf8a9fca7c584e275f81ab878c7ffccf01aae7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Matrix.Charpoly.Coeff` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.ToLin` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.PowerBasis` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [minpoly_toLin'](../../../../../mathematics/Algebra/LinearAlgebra/Minpoly/Variant6c821918754a9143e1b5cebeadaf8a9fca7c584e275f81ab878c7ffccf01aae7.lean/declarations/minpoly-tolin--9408208a43ccedd20c205ca7.md) | 34 | `result-track:9408208a43ccedd20c205ca7a8278bb13169c2b8a62615f599a5bb0fdf3faa72` |
| 2 | `theorem` | [minpoly_toLin](../../../../../mathematics/Algebra/LinearAlgebra/Minpoly/Variant6c821918754a9143e1b5cebeadaf8a9fca7c584e275f81ab878c7ffccf01aae7.lean/declarations/minpoly-tolin--62db344e4d88289167f6bd6c.md) | 38 | `result-track:62db344e4d88289167f6bd6c6ae434189af1ef42c7212907f724df7a5b58ba88` |
| 3 | `theorem` | [isIntegral](../../../../../mathematics/Algebra/LinearAlgebra/Minpoly/Variant6c821918754a9143e1b5cebeadaf8a9fca7c584e275f81ab878c7ffccf01aae7.lean/declarations/isintegral--4c3eff951b658fe0bec79471.md) | 42 | `result-track:4c3eff951b658fe0bec79471bd1b5d2f364383a40dc309dd65b250f2c4adfbaa` |
| 4 | `theorem` | [minpoly_dvd_charpoly](../../../../../mathematics/Algebra/LinearAlgebra/Minpoly/Variant6c821918754a9143e1b5cebeadaf8a9fca7c584e275f81ab878c7ffccf01aae7.lean/declarations/minpoly-dvd-charpoly--c6ebbaef91fa183ca4a1a3df.md) | 45 | `result-track:c6ebbaef91fa183ca4a1a3df23d0a59ece1bb270559a26ac27f8d08fb93bf174` |
| 5 | `theorem` | [minpoly_toMatrix'](../../../../../mathematics/Algebra/LinearAlgebra/Minpoly/Variant6c821918754a9143e1b5cebeadaf8a9fca7c584e275f81ab878c7ffccf01aae7.lean/declarations/minpoly-tomatrix--b471875d481dcfb26e3c70cc.md) | 53 | `result-track:b471875d481dcfb26e3c70cc5c51433d0254cc4fec8855f1907d5a4c7d613650` |
| 6 | `theorem` | [minpoly_toMatrix](../../../../../mathematics/Algebra/LinearAlgebra/Minpoly/Variant6c821918754a9143e1b5cebeadaf8a9fca7c584e275f81ab878c7ffccf01aae7.lean/declarations/minpoly-tomatrix--6c35b69ab2457668acdbd0db.md) | 57 | `result-track:6c35b69ab2457668acdbd0db677ae53b7bfe7dfaba447e3207a402b6b3d23736` |
| 7 | `theorem` | [charpoly_leftMulMatrix](../../../../../mathematics/Algebra/LinearAlgebra/Minpoly/Variant6c821918754a9143e1b5cebeadaf8a9fca7c584e275f81ab878c7ffccf01aae7.lean/declarations/charpoly-leftmulmatrix--107f0fb0067cc520f1b4caf5.md) | 73 | `result-track:107f0fb0067cc520f1b4caf5fabad443463b4a2d634bdd9d98960a49189033fb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
