# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SimplexAlgorithm.Variantd21d444fb521a47384dc75fcedb95fe72be5433e6deb459b1ee0ee0a851ec42e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cb69cec1de1d14e3323091bb1b176a0696259a74",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimplexAlgorithm/Variantd21d444fb521a47384dc75fcedb95fe72be5433e6deb459b1ee0ee0a851ec42e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimplexAlgorithm/Variantd21d444fb521a47384dc75fcedb95fe72be5433e6deb459b1ee0ee0a851ec42e.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimplexAlgorithm/Variantd21d444fb521a47384dc75fcedb95fe72be5433e6deb459b1ee0ee0a851ec42e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cb69cec1de1d14e3323091bb1b176a0696259a74`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimplexAlgorithm/Variantd21d444fb521a47384dc75fcedb95fe72be5433e6deb459b1ee0ee0a851ec42e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimplexAlgorithm/Variantd21d444fb521a47384dc75fcedb95fe72be5433e6deb459b1ee0ee0a851ec42e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.Linarith.Datatypes` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Linarith.Oracle.SimplexAlgorithm.PositiveVector` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [preprocess](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimplexAlgorithm/Variantd21d444fb521a47384dc75fcedb95fe72be5433e6deb459b1ee0ee0a851ec42e.lean/declarations/preprocess--d2587d36eadd59b86d4a5f04.md) | 21 | `declaration-track:d2587d36eadd59b86d4a5f04cf700c132b5977dc07ee79373fb8c9bd2c51b8ac` |
| 2 | `def` | [postprocess](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimplexAlgorithm/Variantd21d444fb521a47384dc75fcedb95fe72be5433e6deb459b1ee0ee0a851ec42e.lean/declarations/postprocess--d3f31ba14f0b8cd45eeb79fa.md) | 32 | `declaration-track:d3f31ba14f0b8cd45eeb79fa383f6660e3bb85a2a2131b60111bd8ace5f358f1` |
| 3 | `def` | [CertificateOracle.simplexAlgorithmSparse](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimplexAlgorithm/Variantd21d444fb521a47384dc75fcedb95fe72be5433e6deb459b1ee0ee0a851ec42e.lean/declarations/certificateoracle-simplexalgorithmsparse--73b095006370f7a7f7a5891a.md) | 43 | `declaration-track:73b095006370f7a7f7a5891a0fab682ad2e16033817ede0004081cc7e932b684` |
| 4 | `def` | [CertificateOracle.simplexAlgorithmDense](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimplexAlgorithm/Variantd21d444fb521a47384dc75fcedb95fe72be5433e6deb459b1ee0ee0a851ec42e.lean/declarations/certificateoracle-simplexalgorithmdense--4cbeac20c1705644c2ace404.md) | 53 | `declaration-track:4cbeac20c1705644c2ace40452695ea88cf7fc5c024842ae97334d5f1f743e36` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
