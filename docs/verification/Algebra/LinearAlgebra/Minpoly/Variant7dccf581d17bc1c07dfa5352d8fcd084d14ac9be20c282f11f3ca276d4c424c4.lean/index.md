# Verification target: GRWTSK.Algebra.LinearAlgebra.Minpoly.Variant7dccf581d17bc1c07dfa5352d8fcd084d14ac9be20c282f11f3ca276d4c424c4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bc5a710140aa33b2e55ad12ba1fd7c38c6309db6",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Minpoly/Variant7dccf581d17bc1c07dfa5352d8fcd084d14ac9be20c282f11f3ca276d4c424c4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Minpoly/Variant7dccf581d17bc1c07dfa5352d8fcd084d14ac9be20c282f11f3ca276d4c424c4.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Minpoly/Variant7dccf581d17bc1c07dfa5352d8fcd084d14ac9be20c282f11f3ca276d4c424c4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bc5a710140aa33b2e55ad12ba1fd7c38c6309db6`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Minpoly/Variant7dccf581d17bc1c07dfa5352d8fcd084d14ac9be20c282f11f3ca276d4c424c4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Minpoly/Variant7dccf581d17bc1c07dfa5352d8fcd084d14ac9be20c282f11f3ca276d4c424c4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Matrix.Charpoly.Coeff` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.ToLin` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.PowerBasis` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [minpoly_toLin'](../../../../../mathematics/Algebra/LinearAlgebra/Minpoly/Variant7dccf581d17bc1c07dfa5352d8fcd084d14ac9be20c282f11f3ca276d4c424c4.lean/declarations/minpoly-tolin--466813f4db920c11695ee587.md) | 48 | `result-track:466813f4db920c11695ee58732e8a9fc98550a4d978a1469a480496dcce097d1` |
| 2 | `theorem` | [minpoly_toLin](../../../../../mathematics/Algebra/LinearAlgebra/Minpoly/Variant7dccf581d17bc1c07dfa5352d8fcd084d14ac9be20c282f11f3ca276d4c424c4.lean/declarations/minpoly-tolin--b3429e2c1a5575d242f41025.md) | 53 | `result-track:b3429e2c1a5575d242f41025d099417ee6899842e15fa4fd2f2b632093a0a6a5` |
| 3 | `theorem` | [isIntegral](../../../../../mathematics/Algebra/LinearAlgebra/Minpoly/Variant7dccf581d17bc1c07dfa5352d8fcd084d14ac9be20c282f11f3ca276d4c424c4.lean/declarations/isintegral--36ca72e8a62a85280210c1db.md) | 58 | `result-track:36ca72e8a62a85280210c1db2f22008b67853f49e4719e4fcde992d2503fd70d` |
| 4 | `theorem` | [minpoly_dvd_charpoly](../../../../../mathematics/Algebra/LinearAlgebra/Minpoly/Variant7dccf581d17bc1c07dfa5352d8fcd084d14ac9be20c282f11f3ca276d4c424c4.lean/declarations/minpoly-dvd-charpoly--b5a738bd1b4ae841211aa7ce.md) | 62 | `result-track:b5a738bd1b4ae841211aa7cea0d34ab9b70520b5c2cc5bd391808e54c76f086b` |
| 5 | `theorem` | [minpoly_toMatrix'](../../../../../mathematics/Algebra/LinearAlgebra/Minpoly/Variant7dccf581d17bc1c07dfa5352d8fcd084d14ac9be20c282f11f3ca276d4c424c4.lean/declarations/minpoly-tomatrix--a5369735bd39d62f56f1d98a.md) | 71 | `result-track:a5369735bd39d62f56f1d98aa74df3fb02fac4ec415840de35c7c469702fea62` |
| 6 | `theorem` | [minpoly_toMatrix](../../../../../mathematics/Algebra/LinearAlgebra/Minpoly/Variant7dccf581d17bc1c07dfa5352d8fcd084d14ac9be20c282f11f3ca276d4c424c4.lean/declarations/minpoly-tomatrix--52e73c5a5c8ea0f705cd0b09.md) | 76 | `result-track:52e73c5a5c8ea0f705cd0b09bb4ea771542483883e178c164db71f5ce4c262ea` |
| 7 | `theorem` | [charpoly_leftMulMatrix](../../../../../mathematics/Algebra/LinearAlgebra/Minpoly/Variant7dccf581d17bc1c07dfa5352d8fcd084d14ac9be20c282f11f3ca276d4c424c4.lean/declarations/charpoly-leftmulmatrix--ad2b2b848779bc9a5d1aed93.md) | 93 | `result-track:ad2b2b848779bc9a5d1aed93947f7e589f03819b74161d3dc4c5039a6ffa4b1c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
