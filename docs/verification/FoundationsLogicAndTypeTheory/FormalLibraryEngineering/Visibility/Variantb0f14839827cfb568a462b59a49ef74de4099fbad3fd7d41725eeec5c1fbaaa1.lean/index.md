# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Visibility.Variantb0f14839827cfb568a462b59a49ef74de4099fbad3fd7d41725eeec5c1fbaaa1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "432a453b96f6688ec0314fb478ed18bb8502b7b6",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Visibility/Variantb0f14839827cfb568a462b59a49ef74de4099fbad3fd7d41725eeec5c1fbaaa1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Visibility/Variantb0f14839827cfb568a462b59a49ef74de4099fbad3fd7d41725eeec5c1fbaaa1.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Visibility/Variantb0f14839827cfb568a462b59a49ef74de4099fbad3fd7d41725eeec5c1fbaaa1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `432a453b96f6688ec0314fb478ed18bb8502b7b6`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Visibility/Variantb0f14839827cfb568a462b59a49ef74de4099fbad3fd7d41725eeec5c1fbaaa1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Visibility/Variantb0f14839827cfb568a462b59a49ef74de4099fbad3fd7d41725eeec5c1fbaaa1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.ExtraModUses` — import line 15; external provider; requires a separately pinned dependency.
- `Lean.Compiler.Options` — import line 16; external provider; requires a separately pinned dependency.
- `Lean.Compiler.LCNF.PhaseExt` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [collectUsedDecls](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Visibility/Variantb0f14839827cfb568a462b59a49ef74de4099fbad3fd7d41725eeec5c1fbaaa1.lean/declarations/collectuseddecls--25819410f8bc02d4c6421e99.md) | 27 | `declaration-track:25819410f8bc02d4c6421e995148331da842d11c98670b1bb13b388e8bad0997` |
| 2 | `def` | [shouldExportBody](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Visibility/Variantb0f14839827cfb568a462b59a49ef74de4099fbad3fd7d41725eeec5c1fbaaa1.lean/declarations/shouldexportbody--622af26ff8bcfb6e6c16d724.md) | 42 | `declaration-track:622af26ff8bcfb6e6c16d72412b83cb5a966cc85914026ef7d8cadc4a3c11e08` |
| 3 | `def` | [markDeclPublicRec](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Visibility/Variantb0f14839827cfb568a462b59a49ef74de4099fbad3fd7d41725eeec5c1fbaaa1.lean/declarations/markdeclpublicrec--d5e1c497ccf1d59c6f571853.md) | 56 | `declaration-track:d5e1c497ccf1d59c6f571853f3a5fb1bdc9ded773ee18b23992fb1f87af2edb2` |
| 4 | `def` | [checkMeta](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Visibility/Variantb0f14839827cfb568a462b59a49ef74de4099fbad3fd7d41725eeec5c1fbaaa1.lean/declarations/checkmeta--80181de9bd2ddc68a15a169b.md) | 70 | `declaration-track:80181de9bd2ddc68a15a169bc252f430461acabfe63688b6f42b4790308a7a84` |
| 5 | `def` | [checkTemplateVisibility](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Visibility/Variantb0f14839827cfb568a462b59a49ef74de4099fbad3fd7d41725eeec5c1fbaaa1.lean/declarations/checktemplatevisibility--139df699581e17446b68e5c2.md) | 135 | `declaration-track:139df699581e17446b68e5c248aec328f6ab8372d6f0883ef6dee504a3ed6458` |
| 6 | `def` | [inferVisibility](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Visibility/Variantb0f14839827cfb568a462b59a49ef74de4099fbad3fd7d41725eeec5c1fbaaa1.lean/declarations/infervisibility--a58475199878295d97a451a2.md) | 168 | `declaration-track:a58475199878295d97a451a2053fcff15a57e3db81634fd36dcf6b48264294b3` |
| 7 | `builtin_initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Visibility/Variantb0f14839827cfb568a462b59a49ef74de4099fbad3fd7d41725eeec5c1fbaaa1.lean/declarations/builtin-initialize--4de83b90f95c1c9651854405.md) | 180 | `declaration-track:4de83b90f95c1c9651854405f4bdb456de907972e57397cb27fc5885b70b2531` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
