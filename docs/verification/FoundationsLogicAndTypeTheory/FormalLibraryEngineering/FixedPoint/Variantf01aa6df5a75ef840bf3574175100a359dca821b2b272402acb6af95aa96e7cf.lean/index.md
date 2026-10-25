# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FixedPoint.Variantf01aa6df5a75ef840bf3574175100a359dca821b2b272402acb6af95aa96e7cf

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4781a0e871c0ee21d568da826cea064e38adc212",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FixedPoint/Variantf01aa6df5a75ef840bf3574175100a359dca821b2b272402acb6af95aa96e7cf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FixedPoint/Variantf01aa6df5a75ef840bf3574175100a359dca821b2b272402acb6af95aa96e7cf.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FixedPoint/Variantf01aa6df5a75ef840bf3574175100a359dca821b2b272402acb6af95aa96e7cf.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4781a0e871c0ee21d568da826cea064e38adc212`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FixedPoint/Variantf01aa6df5a75ef840bf3574175100a359dca821b2b272402acb6af95aa96e7cf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FixedPoint/Variantf01aa6df5a75ef840bf3574175100a359dca821b2b272402acb6af95aa96e7cf.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.Archive.RuleEngine` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [FixedPointCertificate](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FixedPoint/Variantf01aa6df5a75ef840bf3574175100a359dca821b2b272402acb6af95aa96e7cf.lean/declarations/fixedpointcertificate--590c6d67710450a3b2c49235.md) | 26 | `declaration-track:590c6d67710450a3b2c492353b2575387937c065d734ae40269adeecc327a341` |
| 2 | `structure` | [FixedPointRecipe](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FixedPoint/Variantf01aa6df5a75ef840bf3574175100a359dca821b2b272402acb6af95aa96e7cf.lean/declarations/fixedpointrecipe--490ceb492a34a946c89a35b4.md) | 31 | `declaration-track:490ceb492a34a946c89a35b451b1c2e4cb0f1b714cdb2fce81e11faafabdd8db` |
| 3 | `def` | [copyFixedPointCertificate](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FixedPoint/Variantf01aa6df5a75ef840bf3574175100a359dca821b2b272402acb6af95aa96e7cf.lean/declarations/copyfixedpointcertificate--5241485850641871a39780f1.md) | 42 | `declaration-track:5241485850641871a39780f16b9efdcd9159422cc7a44efca9348338638c09ba` |
| 4 | `theorem` | [fixedPointRecipe_realizes_self](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FixedPoint/Variantf01aa6df5a75ef840bf3574175100a359dca821b2b272402acb6af95aa96e7cf.lean/declarations/fixedpointrecipe-realizes-self--5a159ac92aa3f2d0980cd665.md) | 47 | `result-track:5a159ac92aa3f2d0980cd665f64dfff24f6606630a71108c98b4b2d546ff0223` |
| 5 | `theorem` | [copy_fixedPointCertificate](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FixedPoint/Variantf01aa6df5a75ef840bf3574175100a359dca821b2b272402acb6af95aa96e7cf.lean/declarations/copy-fixedpointcertificate--18964e1eaa5eb854366b63ff.md) | 55 | `result-track:18964e1eaa5eb854366b63ff0740b1b45174c687b2bc34518842ade49f61b273` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
