# Verification target: GRWTSK.Algebra.GroupTheory.MulOpposite.Variant5d6f3ca1cad1d28a021ace5eb4fc5b8ed01e313f9c454541c8157f58a445166e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "252f6edc12c9139e86fc532f4828d53c7024dccf",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/MulOpposite/Variant5d6f3ca1cad1d28a021ace5eb4fc5b8ed01e313f9c454541c8157f58a445166e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/MulOpposite/Variant5d6f3ca1cad1d28a021ace5eb4fc5b8ed01e313f9c454541c8157f58a445166e.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/MulOpposite/Variant5d6f3ca1cad1d28a021ace5eb4fc5b8ed01e313f9c454541c8157f58a445166e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `252f6edc12c9139e86fc532f4828d53c7024dccf`.

Source path: `GRWTSK/Algebra/GroupTheory/MulOpposite/Variant5d6f3ca1cad1d28a021ace5eb4fc5b8ed01e313f9c454541c8157f58a445166e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/MulOpposite/Variant5d6f3ca1cad1d28a021ace5eb4fc5b8ed01e313f9c454541c8157f58a445166e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.GroupTheory.Subgroup.Actions` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [opposite](../../../../../mathematics/Algebra/GroupTheory/MulOpposite/Variant5d6f3ca1cad1d28a021ace5eb4fc5b8ed01e313f9c454541c8157f58a445166e.lean/declarations/opposite--c691497dca02495b6bc58c3a.md) | 26 | `declaration-track:c691497dca02495b6bc58c3afa3d01896c2092efbea2f8e5566dab9dec2383d8` |
| 2 | `def` | [oppositeEquiv](../../../../../mathematics/Algebra/GroupTheory/MulOpposite/Variant5d6f3ca1cad1d28a021ace5eb4fc5b8ed01e313f9c454541c8157f58a445166e.lean/declarations/oppositeequiv--b87e5799bcab05bf5fa81dd0.md) | 45 | `declaration-track:b87e5799bcab05bf5fa81dd0387f17c3befbc6bb9ff589a521bc521284bc2885` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/MulOpposite/Variant5d6f3ca1cad1d28a021ace5eb4fc5b8ed01e313f9c454541c8157f58a445166e.lean/declarations/instance--bde4f24b16869a1edbf77777.md) | 52 | `declaration-track:bde4f24b16869a1edbf7777742113fd0720476943e4814d31bbfbe30c9dda694` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/MulOpposite/Variant5d6f3ca1cad1d28a021ace5eb4fc5b8ed01e313f9c454541c8157f58a445166e.lean/declarations/instance--238b959048cab5264b6ccf87.md) | 56 | `declaration-track:238b959048cab5264b6ccf8761dc489dd3a51f9a350765c56fb0c897b1e4d322` |
| 5 | `theorem` | [smul_opposite_mul](../../../../../mathematics/Algebra/GroupTheory/MulOpposite/Variant5d6f3ca1cad1d28a021ace5eb4fc5b8ed01e313f9c454541c8157f58a445166e.lean/declarations/smul-opposite-mul--35f0cce480f33f02ea68005b.md) | 60 | `result-track:35f0cce480f33f02ea68005b77e77a5801b1cd1dee3d4f43fb2c8d1438dd1155` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
