# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ComputeDegree.Variant0e1954ba408ac54076e1bc9727d99c8009ef868f967eada787cc781b356e3ec4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "61a7f22aeeb8aca291380f2bee71aa8d8186b680",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ComputeDegree/Variant0e1954ba408ac54076e1bc9727d99c8009ef868f967eada787cc781b356e3ec4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ComputeDegree/Variant0e1954ba408ac54076e1bc9727d99c8009ef868f967eada787cc781b356e3ec4.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ComputeDegree/Variant0e1954ba408ac54076e1bc9727d99c8009ef868f967eada787cc781b356e3ec4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `61a7f22aeeb8aca291380f2bee71aa8d8186b680`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ComputeDegree/Variant0e1954ba408ac54076e1bc9727d99c8009ef868f967eada787cc781b356e3ec4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ComputeDegree/Variant0e1954ba408ac54076e1bc9727d99c8009ef868f967eada787cc781b356e3ec4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Polynomial.Degree.Definitions` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [natDegree_C_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ComputeDegree/Variant0e1954ba408ac54076e1bc9727d99c8009ef868f967eada787cc781b356e3ec4.lean/declarations/natdegree-c-le--f1ccc6e76a6d0428c2a4b2cf.md) | 36 | `result-track:f1ccc6e76a6d0428c2a4b2cf13ffb5a38d36e6e2fadb3285a4ea1d0813ad603d` |
| 2 | `theorem` | [natDegree_nat_cast_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ComputeDegree/Variant0e1954ba408ac54076e1bc9727d99c8009ef868f967eada787cc781b356e3ec4.lean/declarations/natdegree-nat-cast-le--25f6c56d7d39b925be58b52a.md) | 37 | `result-track:25f6c56d7d39b925be58b52a4ea1207a77dfad3b02dd0d767a85065007e1643c` |
| 3 | `theorem` | [natDegree_zero_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ComputeDegree/Variant0e1954ba408ac54076e1bc9727d99c8009ef868f967eada787cc781b356e3ec4.lean/declarations/natdegree-zero-le--051cd3b98be23e7c020786d1.md) | 38 | `result-track:051cd3b98be23e7c020786d1a0eddc9e57e1420549a76160b34f0f4269cbf0e6` |
| 4 | `theorem` | [natDegree_one_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ComputeDegree/Variant0e1954ba408ac54076e1bc9727d99c8009ef868f967eada787cc781b356e3ec4.lean/declarations/natdegree-one-le--356de8d5e2f1e17cbc2255d2.md) | 39 | `result-track:356de8d5e2f1e17cbc2255d201f8d41d52f95360abc153bbe85a0341105fcf14` |
| 5 | `theorem` | [natDegree_int_cast_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ComputeDegree/Variant0e1954ba408ac54076e1bc9727d99c8009ef868f967eada787cc781b356e3ec4.lean/declarations/natdegree-int-cast-le--0aeebf670d9b3de977d12013.md) | 44 | `result-track:0aeebf670d9b3de977d120135380b08708693b12b0fdbb1c8ebd20458aab4108` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
