# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Gray.Variant9813024f99476e5515448699d0aa3b5a08da5fc56b99a7662ad4e9e296adaa8b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4bcc054e4941479363a624019d9c9752d57b45ce",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Gray/Variant9813024f99476e5515448699d0aa3b5a08da5fc56b99a7662ad4e9e296adaa8b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Gray/Variant9813024f99476e5515448699d0aa3b5a08da5fc56b99a7662ad4e9e296adaa8b.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Gray/Variant9813024f99476e5515448699d0aa3b5a08da5fc56b99a7662ad4e9e296adaa8b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4bcc054e4941479363a624019d9c9752d57b45ce`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Gray/Variant9813024f99476e5515448699d0aa3b5a08da5fc56b99a7662ad4e9e296adaa8b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Gray/Variant9813024f99476e5515448699d0aa3b5a08da5fc56b99a7662ad4e9e296adaa8b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Boolean.Cube.Hypercube` — import line 1; external provider; requires a separately pinned dependency.
- `Lean.Elab.Tactic.Omega` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Hypercube.Adjacent](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Gray/Variant9813024f99476e5515448699d0aa3b5a08da5fc56b99a7662ad4e9e296adaa8b.lean/declarations/hypercube-adjacent--0d716b02c5507266f6e2ddd3.md) | 13 | `declaration-track:0d716b02c5507266f6e2ddd3b4d1f65fdef16c40f511f9cf8df346b49bf29b6c` |
| 2 | `def` | [Hypercube.AdjacentPath](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Gray/Variant9813024f99476e5515448699d0aa3b5a08da5fc56b99a7662ad4e9e296adaa8b.lean/declarations/hypercube-adjacentpath--0399769005d2faa7bdd244e3.md) | 18 | `declaration-track:0399769005d2faa7bdd244e3ba13136436a0b4cdd798a5abc83cb4366d144a4c` |
| 3 | `def` | [Hypercube.zeroPoint](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Gray/Variant9813024f99476e5515448699d0aa3b5a08da5fc56b99a7662ad4e9e296adaa8b.lean/declarations/hypercube-zeropoint--a14740cafe52aa0a9f927f2f.md) | 27 | `declaration-track:a14740cafe52aa0a9f927f2f243e7e997d9d2b7534d2d866469c4e86120e639a` |
| 4 | `def` | [Hypercube.graySteps](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Gray/Variant9813024f99476e5515448699d0aa3b5a08da5fc56b99a7662ad4e9e296adaa8b.lean/declarations/hypercube-graysteps--a313a683f76ddfb83fc8bf80.md) | 36 | `declaration-track:a313a683f76ddfb83fc8bf809fc90370b3133b7142deb8ec1735a08c3ba1f426` |
| 5 | `def` | [Hypercube.walkFrom](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Gray/Variant9813024f99476e5515448699d0aa3b5a08da5fc56b99a7662ad4e9e296adaa8b.lean/declarations/hypercube-walkfrom--c4f0c51fb5100a966cf5ba41.md) | 45 | `declaration-track:c4f0c51fb5100a966cf5ba41400b4c93178543a52040cfa422c3710892fb9f66` |
| 6 | `def` | [Hypercube.grayTraversal](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Gray/Variant9813024f99476e5515448699d0aa3b5a08da5fc56b99a7662ad4e9e296adaa8b.lean/declarations/hypercube-graytraversal--7dac54924b173f5dc8fa9377.md) | 53 | `declaration-track:7dac54924b173f5dc8fa9377e8a5b31d5d7888b27344b9729aa106d7a542ddf5` |
| 7 | `theorem` | [Hypercube.walkFrom_length](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Gray/Variant9813024f99476e5515448699d0aa3b5a08da5fc56b99a7662ad4e9e296adaa8b.lean/declarations/hypercube-walkfrom-length--d431ab0f18e324ea7776aa4d.md) | 56 | `result-track:d431ab0f18e324ea7776aa4d42f27ab0b6bc99719b6626a87f777ade827c38db` |
| 8 | `theorem` | [Hypercube.walkFrom_adjacentPath](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Gray/Variant9813024f99476e5515448699d0aa3b5a08da5fc56b99a7662ad4e9e296adaa8b.lean/declarations/hypercube-walkfrom-adjacentpath--e990f90ca1d04f40dce7c4ec.md) | 66 | `result-track:e990f90ca1d04f40dce7c4ec841a537e2ccd1bd1f9bdcbce0cbc4e007d5c396c` |
| 9 | `theorem` | [Hypercube.graySteps_length_add_one](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Gray/Variant9813024f99476e5515448699d0aa3b5a08da5fc56b99a7662ad4e9e296adaa8b.lean/declarations/hypercube-graysteps-length-add-one--217ec54f3fd4d7fd39ccad5e.md) | 86 | `result-track:217ec54f3fd4d7fd39ccad5e9143546e9e16878f6097559a669a45df2bf4af7d` |
| 10 | `theorem` | [Hypercube.grayTraversal_length](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Gray/Variant9813024f99476e5515448699d0aa3b5a08da5fc56b99a7662ad4e9e296adaa8b.lean/declarations/hypercube-graytraversal-length--a00aa1ca927c4f34d9c90c38.md) | 94 | `result-track:a00aa1ca927c4f34d9c90c385983147d5927bdd3ac8ca6b0122540d01969cb84` |
| 11 | `theorem` | [Hypercube.grayTraversal_optimalLength](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Gray/Variant9813024f99476e5515448699d0aa3b5a08da5fc56b99a7662ad4e9e296adaa8b.lean/declarations/hypercube-graytraversal-optimallength--befe9bbcaf2acea68094985d.md) | 99 | `result-track:befe9bbcaf2acea68094985df87fb4c6adc8a69d7eee6976a5bbc1fbbf1fa531` |
| 12 | `theorem` | [Hypercube.grayTraversal_transitionCount](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Gray/Variant9813024f99476e5515448699d0aa3b5a08da5fc56b99a7662ad4e9e296adaa8b.lean/declarations/hypercube-graytraversal-transitioncount--f194edf709847a7823e60fa6.md) | 105 | `result-track:f194edf709847a7823e60fa6584100f0fe16b56b554628116e155006b0fe8e82` |
| 13 | `theorem` | [Hypercube.grayTraversal_adjacentPath](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Gray/Variant9813024f99476e5515448699d0aa3b5a08da5fc56b99a7662ad4e9e296adaa8b.lean/declarations/hypercube-graytraversal-adjacentpath--07d419b9bb414e68fa148f35.md) | 110 | `result-track:07d419b9bb414e68fa148f35c03fa829e508c01ee7531dd11f8daeff69f6eaf8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
