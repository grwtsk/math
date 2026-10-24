# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Path.Variant13f05fb20b819b10778d446c9cde0a45555c5914958657595f30fd61a6ce15c3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f80e9456c1fa3e9824fde408ef55233a7ee54d51",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Path/Variant13f05fb20b819b10778d446c9cde0a45555c5914958657595f30fd61a6ce15c3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Path/Variant13f05fb20b819b10778d446c9cde0a45555c5914958657595f30fd61a6ce15c3.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Path/Variant13f05fb20b819b10778d446c9cde0a45555c5914958657595f30fd61a6ce15c3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f80e9456c1fa3e9824fde408ef55233a7ee54d51`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Path/Variant13f05fb20b819b10778d446c9cde0a45555c5914958657595f30fd61a6ce15c3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Path/Variant13f05fb20b819b10778d446c9cde0a45555c5914958657595f30fd61a6ce15c3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.SemiLocalDefect.ResidueDeflection.Phase` — import line 1; external provider; requires a separately pinned dependency.
- `Mathematics.GraphAccess.Arc` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [DeflectionPath](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Path/Variant13f05fb20b819b10778d446c9cde0a45555c5914958657595f30fd61a6ce15c3.lean/declarations/deflectionpath--a21baae2417502614adf2b7e.md) | 16 | `declaration-track:a21baae2417502614adf2b7e09bf997cc9d61a30405ee6c5605f5377066c8805` |
| 2 | `def` | [DeflectionPath.length](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Path/Variant13f05fb20b819b10778d446c9cde0a45555c5914958657595f30fd61a6ce15c3.lean/declarations/deflectionpath-length--e4b8b6e6f7ebec4951bb5c33.md) | 28 | `declaration-track:e4b8b6e6f7ebec4951bb5c331ecdf6bc5ab334dceb0fb3b670ef765709cf4d18` |
| 3 | `def` | [DeflectionPath.arcs](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Path/Variant13f05fb20b819b10778d446c9cde0a45555c5914958657595f30fd61a6ce15c3.lean/declarations/deflectionpath-arcs--c87810a5c5d02bc4e6b3c762.md) | 35 | `declaration-track:c87810a5c5d02bc4e6b3c762147a54a399f600d559e6b4685d37091fda12e1e5` |
| 4 | `def` | [DeflectionPath.AllArcs](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Path/Variant13f05fb20b819b10778d446c9cde0a45555c5914958657595f30fd61a6ce15c3.lean/declarations/deflectionpath-allarcs--4b1ec646efdbba3b70f4d848.md) | 43 | `declaration-track:4b1ec646efdbba3b70f4d848b7f5514e0c2e2770b4bd0055d646dbf40b701506` |
| 5 | `def` | [DeflectionPath.phaseProduct](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Path/Variant13f05fb20b819b10778d446c9cde0a45555c5914958657595f30fd61a6ce15c3.lean/declarations/deflectionpath-phaseproduct--7e6605036a1c29df10f90a7f.md) | 52 | `declaration-track:7e6605036a1c29df10f90a7f399f162aaf77a561d0fab2a993585149db34aa33` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
