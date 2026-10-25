# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Eval.Variant6548aba6863cdf065d3c848720cad735e70ef13a226a58ca92c4774c25d6a431

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a3d5397599629791a72cf034da52608f066e8922",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eval/Variant6548aba6863cdf065d3c848720cad735e70ef13a226a58ca92c4774c25d6a431.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eval/Variant6548aba6863cdf065d3c848720cad735e70ef13a226a58ca92c4774c25d6a431.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eval/Variant6548aba6863cdf065d3c848720cad735e70ef13a226a58ca92c4774c25d6a431.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a3d5397599629791a72cf034da52608f066e8922`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eval/Variant6548aba6863cdf065d3c848720cad735e70ef13a226a58ca92c4774c25d6a431.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eval/Variant6548aba6863cdf065d3c848720cad735e70ef13a226a58ca92c4774c25d6a431.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.DocString` — import line 16; external provider; requires a separately pinned dependency.
- `Lake.DSL.AttributesCore` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [unsafeEvalConstCheck](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eval/Variant6548aba6863cdf065d3c848720cad735e70ef13a226a58ca92c4774c25d6a431.lean/declarations/unsafeevalconstcheck--6cacf51e110eaa015e94155e.md) | 33 | `declaration-track:6cacf51e110eaa015e94155ee32862eaa3057210f011a5eb7bc654ed80d4db51` |
| 2 | `opaque` | [evalConstCheck](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eval/Variant6548aba6863cdf065d3c848720cad735e70ef13a226a58ca92c4774c25d6a431.lean/declarations/evalconstcheck--ee03d73e5236644ade3d385f.md) | 55 | `declaration-track:ee03d73e5236644ade3d385f8ceed29c6bff247babb32a6f8cf2c919d8bde232` |
| 3 | `def` | [mkDTagMap](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eval/Variant6548aba6863cdf065d3c848720cad735e70ef13a226a58ca92c4774c25d6a431.lean/declarations/mkdtagmap--6d68ac12bbf82b320ec78860.md) | 60 | `declaration-track:6d68ac12bbf82b320ec78860dd53e4a8b8c98846de002ad3abc1132a883c1e4a` |
| 4 | `def` | [mkTagMap](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eval/Variant6548aba6863cdf065d3c848720cad735e70ef13a226a58ca92c4774c25d6a431.lean/declarations/mktagmap--920c10017d67f6ef370b0625.md) | 69 | `declaration-track:920c10017d67f6ef370b062565e6d21c9701b736a42619f0f822ac38d34d024b` |
| 5 | `def` | [mkOrdTagMap](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eval/Variant6548aba6863cdf065d3c848720cad735e70ef13a226a58ca92c4774c25d6a431.lean/declarations/mkordtagmap--684fedba7132bbba40174c53.md) | 78 | `declaration-track:684fedba7132bbba40174c53699d8758a74c7ef99627491ec74804dc1f8274ad` |
| 6 | `def` | [PackageDecl.loadFromEnv](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eval/Variant6548aba6863cdf065d3c848720cad735e70ef13a226a58ca92c4774c25d6a431.lean/declarations/packagedecl-loadfromenv--181f5bdc4920ecfbfa2069fc.md) | 87 | `declaration-track:181f5bdc4920ecfbfa2069fc340b54f1d014c9deea5c50b8cd7217d090c3b702` |
| 7 | `def` | [LakefileConfig.loadFromEnv](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eval/Variant6548aba6863cdf065d3c848720cad735e70ef13a226a58ca92c4774c25d6a431.lean/declarations/lakefileconfig-loadfromenv--6cfa0c6022e132894c36f439.md) | 98 | `declaration-track:6cfa0c6022e132894c36f43961308338b89151d1bd16510cd5dcabf1ed4acb5c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
