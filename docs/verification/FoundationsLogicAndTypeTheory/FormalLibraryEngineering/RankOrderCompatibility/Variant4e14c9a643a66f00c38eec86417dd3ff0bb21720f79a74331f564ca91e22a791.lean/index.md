# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RankOrderCompatibility.Variant4e14c9a643a66f00c38eec86417dd3ff0bb21720f79a74331f564ca91e22a791

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "db53ff2a1fc8420d71dd8957b226344be4ec5adc",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RankOrderCompatibility/Variant4e14c9a643a66f00c38eec86417dd3ff0bb21720f79a74331f564ca91e22a791.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RankOrderCompatibility/Variant4e14c9a643a66f00c38eec86417dd3ff0bb21720f79a74331f564ca91e22a791.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RankOrderCompatibility/Variant4e14c9a643a66f00c38eec86417dd3ff0bb21720f79a74331f564ca91e22a791.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `db53ff2a1fc8420d71dd8957b226344be4ec5adc`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RankOrderCompatibility/Variant4e14c9a643a66f00c38eec86417dd3ff0bb21720f79a74331f564ca91e22a791.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RankOrderCompatibility/Variant4e14c9a643a66f00c38eec86417dd3ff0bb21720f79a74331f564ca91e22a791.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.GrandChallenge.BSD.FixedPointRecursion` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [RankOrderData](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RankOrderCompatibility/Variant4e14c9a643a66f00c38eec86417dd3ff0bb21720f79a74331f564ca91e22a791.lean/declarations/rankorderdata--7714641b102ffd9d4b325f5d.md) | 19 | `declaration-track:7714641b102ffd9d4b325f5d48e34b153f73c3572eadf6d5b202ac73c6d067a4` |
| 2 | `structure` | [RankOrderCompatibility](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RankOrderCompatibility/Variant4e14c9a643a66f00c38eec86417dd3ff0bb21720f79a74331f564ca91e22a791.lean/declarations/rankordercompatibility--7bfbd2bdcd2aed3e2ed62db8.md) | 25 | `declaration-track:7bfbd2bdcd2aed3e2ed62db88e15c9eadab18515e85d15bf5d33329bc8cccb84` |
| 3 | `theorem` | [bsd_rank_order_compatible_if_supplied](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RankOrderCompatibility/Variant4e14c9a643a66f00c38eec86417dd3ff0bb21720f79a74331f564ca91e22a791.lean/declarations/bsd-rank-order-compatible-if-supplied--00e9eca27004642455e9998f.md) | 33 | `result-track:00e9eca27004642455e9998fe26231ee2c25b7e1e2d3a3dd4d3b935bddf5633d` |
| 4 | `theorem` | [bsd_mismatch_obstruction_if_supplied](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RankOrderCompatibility/Variant4e14c9a643a66f00c38eec86417dd3ff0bb21720f79a74331f564ca91e22a791.lean/declarations/bsd-mismatch-obstruction-if-supplied--65c71329fc134d5d2d52b638.md) | 38 | `result-track:65c71329fc134d5d2d52b63859625f34b7f7ae2db63402acfbb45b2fe63fb8ed` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
