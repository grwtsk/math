# Verification target: GRWTSK.Algebra.LinearAlgebra.Minpoly.Variant48d6dfaf6c2a67397f9728a9cbffac1e163eda19580d9beb3f1b50510fa98d60

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0f136243f7a69ec35791f4ec89eedce1fc5e256e",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Minpoly/Variant48d6dfaf6c2a67397f9728a9cbffac1e163eda19580d9beb3f1b50510fa98d60.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Minpoly/Variant48d6dfaf6c2a67397f9728a9cbffac1e163eda19580d9beb3f1b50510fa98d60.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Minpoly/Variant48d6dfaf6c2a67397f9728a9cbffac1e163eda19580d9beb3f1b50510fa98d60.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0f136243f7a69ec35791f4ec89eedce1fc5e256e`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Minpoly/Variant48d6dfaf6c2a67397f9728a9cbffac1e163eda19580d9beb3f1b50510fa98d60.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Minpoly/Variant48d6dfaf6c2a67397f9728a9cbffac1e163eda19580d9beb3f1b50510fa98d60.lean.json)

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
| 1 | `theorem` | [minpoly_toLin'](../../../../../mathematics/Algebra/LinearAlgebra/Minpoly/Variant48d6dfaf6c2a67397f9728a9cbffac1e163eda19580d9beb3f1b50510fa98d60.lean/declarations/minpoly-tolin--29b2d48a53dd0b52acf50281.md) | 42 | `result-track:29b2d48a53dd0b52acf502814ac48637ac32ca82942e9cd4d595db00adb77464` |
| 2 | `theorem` | [minpoly_toLin](../../../../../mathematics/Algebra/LinearAlgebra/Minpoly/Variant48d6dfaf6c2a67397f9728a9cbffac1e163eda19580d9beb3f1b50510fa98d60.lean/declarations/minpoly-tolin--dbf7b455d1464a9f9296f70c.md) | 46 | `result-track:dbf7b455d1464a9f9296f70cebb4deb03e3a1d98fbf340c47480e7a2443d17bc` |
| 3 | `theorem` | [isIntegral](../../../../../mathematics/Algebra/LinearAlgebra/Minpoly/Variant48d6dfaf6c2a67397f9728a9cbffac1e163eda19580d9beb3f1b50510fa98d60.lean/declarations/isintegral--23e794e047d58e39467414d3.md) | 50 | `result-track:23e794e047d58e39467414d3f009a54e937ed84a29e0c50b5743896e7176c2b4` |
| 4 | `theorem` | [minpoly_dvd_charpoly](../../../../../mathematics/Algebra/LinearAlgebra/Minpoly/Variant48d6dfaf6c2a67397f9728a9cbffac1e163eda19580d9beb3f1b50510fa98d60.lean/declarations/minpoly-dvd-charpoly--d0242695d369d619650fb821.md) | 53 | `result-track:d0242695d369d619650fb821259d6c8c1b6278822d8e23d3357b2b1be732e218` |
| 5 | `theorem` | [minpoly_toMatrix'](../../../../../mathematics/Algebra/LinearAlgebra/Minpoly/Variant48d6dfaf6c2a67397f9728a9cbffac1e163eda19580d9beb3f1b50510fa98d60.lean/declarations/minpoly-tomatrix--a1415572d5c14d7d16a14ed2.md) | 61 | `result-track:a1415572d5c14d7d16a14ed244ed568e3fec88dbde0e9fbccc0059dc7febea95` |
| 6 | `theorem` | [minpoly_toMatrix](../../../../../mathematics/Algebra/LinearAlgebra/Minpoly/Variant48d6dfaf6c2a67397f9728a9cbffac1e163eda19580d9beb3f1b50510fa98d60.lean/declarations/minpoly-tomatrix--dede03322012f0a2083dcc25.md) | 65 | `result-track:dede03322012f0a2083dcc25bcd5f2690cc385bdd1bd6b3b3d3cbb2d0c7d0627` |
| 7 | `theorem` | [charpoly_leftMulMatrix](../../../../../mathematics/Algebra/LinearAlgebra/Minpoly/Variant48d6dfaf6c2a67397f9728a9cbffac1e163eda19580d9beb3f1b50510fa98d60.lean/declarations/charpoly-leftmulmatrix--61f89aef54438530c7046b3f.md) | 81 | `result-track:61f89aef54438530c7046b3f7820221de31127b44afd7337d681d0b2bec04733` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
