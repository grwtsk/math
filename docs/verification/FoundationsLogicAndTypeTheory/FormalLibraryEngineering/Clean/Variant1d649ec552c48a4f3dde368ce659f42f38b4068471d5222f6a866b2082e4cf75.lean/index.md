# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Clean.Variant1d649ec552c48a4f3dde368ce659f42f38b4068471d5222f6a866b2082e4cf75

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ec96dc00e61792b97c34a106815f4d618844c120",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Clean/Variant1d649ec552c48a4f3dde368ce659f42f38b4068471d5222f6a866b2082e4cf75.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Clean/Variant1d649ec552c48a4f3dde368ce659f42f38b4068471d5222f6a866b2082e4cf75.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Clean/Variant1d649ec552c48a4f3dde368ce659f42f38b4068471d5222f6a866b2082e4cf75.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ec96dc00e61792b97c34a106815f4d618844c120`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Clean/Variant1d649ec552c48a4f3dde368ce659f42f38b4068471d5222f6a866b2082e4cf75.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Clean/Variant1d649ec552c48a4f3dde368ce659f42f38b4068471d5222f6a866b2082e4cf75.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.Clean` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [x](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Clean/Variant1d649ec552c48a4f3dde368ce659f42f38b4068471d5222f6a866b2082e4cf75.lean/declarations/x--dc2b2865f509e3a02f793933.md) | 5 | `declaration-track:dc2b2865f509e3a02f7939339dfc908372a9879f358c0717c5863ac9c607eb1b` |
| 2 | `def` | [x'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Clean/Variant1d649ec552c48a4f3dde368ce659f42f38b4068471d5222f6a866b2082e4cf75.lean/declarations/x--89cf56edbcef4706fcd7ef69.md) | 6 | `declaration-track:89cf56edbcef4706fcd7ef69d65bf56317f885e1c4d5b28cb930b848443fc852` |
| 3 | `theorem` | [withClean](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Clean/Variant1d649ec552c48a4f3dde368ce659f42f38b4068471d5222f6a866b2082e4cf75.lean/declarations/withclean--fa7c980aa24ae3626af3dea0.md) | 21 | `result-track:fa7c980aa24ae3626af3dea049562430ea188f2e7d397f2a72c959204819d90e` |
| 4 | `theorem` | [withoutClean](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Clean/Variant1d649ec552c48a4f3dde368ce659f42f38b4068471d5222f6a866b2082e4cf75.lean/declarations/withoutclean--9d384469b60b8010a63e996a.md) | 22 | `result-track:9d384469b60b8010a63e996ae1f7041dab2afbc598eea3250bcf201d8374e8fd` |
| 5 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Clean/Variant1d649ec552c48a4f3dde368ce659f42f38b4068471d5222f6a866b2082e4cf75.lean/declarations/example--34bdf26671e8fa7d68212de9.md) | 38 | `declaration-track:34bdf26671e8fa7d68212de975e285bbdbf1d92eb77eb2c7fddfc4f1279491c6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
