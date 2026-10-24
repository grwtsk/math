# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.ConcreteNewtonThirdBlockData

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0f4c374d7349abb5e6375a788fd54a109b4d1117",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/ConcreteNewtonThirdBlockData.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonThirdBlockData.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonThirdBlockData.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0f4c374d7349abb5e6375a788fd54a109b4d1117`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/ConcreteNewtonThirdBlockData.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/ConcreteNewtonThirdBlockData.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.ConcreteNewtonSecondBlockData`](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonSecondBlockData.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [base](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonThirdBlockData.lean/declarations/base--a4b0ce3757947a9cd457627c.md) | 24 | `declaration-track:a4b0ce3757947a9cd457627ce2aec04f7f8d4b03be3847760b966459446c2ddd` |
| 2 | `def` | [initial](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonThirdBlockData.lean/declarations/initial--561a190dfca800ba082434e5.md) | 26 | `declaration-track:561a190dfca800ba082434e580c120db45db1f2c75e373d4e5021719d414f0cd` |
| 3 | `def` | [sourceArgument](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonThirdBlockData.lean/declarations/sourceargument--a083741b9c14dd7eaae3ab38.md) | 93 | `declaration-track:a083741b9c14dd7eaae3ab38b20c815946a7dd90abb5fd737ba35f89304040fc` |
| 4 | `def` | [sourceRadius](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonThirdBlockData.lean/declarations/sourceradius--d22ed5cb61bdbee9a31ef5eb.md) | 95 | `declaration-track:d22ed5cb61bdbee9a31ef5ebe05b0637b9182502a736157846bcdfefa835ee76` |
| 5 | `def` | [sourceDisplacement](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonThirdBlockData.lean/declarations/sourcedisplacement--a2fe3d1db2b29efa35a7e007.md) | 97 | `declaration-track:a2fe3d1db2b29efa35a7e00734909c406909ccfabaf6b1099816fd7831e34ecd` |
| 6 | `def` | [InputValid](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonThirdBlockData.lean/declarations/inputvalid--5743dc2960feab9eef4289ab.md) | 100 | `declaration-track:5743dc2960feab9eef4289abab64ab0b83991c2b150e4638c73ebd5cedea0942` |
| 7 | `def` | [SeedWindows](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonThirdBlockData.lean/declarations/seedwindows--014eafec379333f6ecf03589.md) | 104 | `declaration-track:014eafec379333f6ecf035895b2ee8c8c03a2ee1a12c144887bece0b77083bd6` |
| 8 | `def` | [slot](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonThirdBlockData.lean/declarations/slot--553d812474dec5d3a8796826.md) | 108 | `declaration-track:553d812474dec5d3a87968265735e7ea19e198a5c36fdd8304c091d7f149916c` |
| 9 | `theorem` | [group_cover](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonThirdBlockData.lean/declarations/group-cover--cadbb119f8c2b26ab6257b6f.md) | 110 | `result-track:cadbb119f8c2b26ab6257b6f16af2bc4513762697000350c5799cfbf143d7aa4` |
| 10 | `theorem` | [group_unique](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonThirdBlockData.lean/declarations/group-unique--2150a5a0565fe1d4abe8ac1b.md) | 113 | `result-track:2150a5a0565fe1d4abe8ac1bf13bf26ec3325ebeb72a6184d9c3c200e6500846` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
