# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Switch.Variant9768d3d2981132499ce7047d727b57f69518e66afcfb64da0c1671ff65f3844b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cfa36fae918931acfb1905fd21734db068d592ea",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Switch/Variant9768d3d2981132499ce7047d727b57f69518e66afcfb64da0c1671ff65f3844b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Switch/Variant9768d3d2981132499ce7047d727b57f69518e66afcfb64da0c1671ff65f3844b.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Switch/Variant9768d3d2981132499ce7047d727b57f69518e66afcfb64da0c1671ff65f3844b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cfa36fae918931acfb1905fd21734db068d592ea`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Switch/Variant9768d3d2981132499ce7047d727b57f69518e66afcfb64da0c1671ff65f3844b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Switch/Variant9768d3d2981132499ce7047d727b57f69518e66afcfb64da0c1671ff65f3844b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Elab.Do.Basic` — import line 10; external provider; requires a separately pinned dependency.
- `Lean.Elab.Do.Legacy` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [toDoElem](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Switch/Variant9768d3d2981132499ce7047d727b57f69518e66afcfb64da0c1671ff65f3844b.lean/declarations/todoelem--fdec01ec50ecc13313d2a29c.md) | 22 | `declaration-track:fdec01ec50ecc13313d2a29c8f5d857dea908ea34f835bdcce1656352abcc056` |
| 2 | `def` | [expandTermFor](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Switch/Variant9768d3d2981132499ce7047d727b57f69518e66afcfb64da0c1671ff65f3844b.lean/declarations/expandtermfor--f54e1ec20d48ce825bfba9b4.md) | 27 | `declaration-track:f54e1ec20d48ce825bfba9b4c2af35669d2299f3011217ed046caaca5d3125fe` |
| 3 | `def` | [expandTermTry](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Switch/Variant9768d3d2981132499ce7047d727b57f69518e66afcfb64da0c1671ff65f3844b.lean/declarations/expandtermtry--ffc04684b323de70546b1721.md) | 30 | `declaration-track:ffc04684b323de70546b1721dfcf096480e9eba445ae9fb07b2c3bcbf8a1e7bb` |
| 4 | `def` | [expandTermUnless](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Switch/Variant9768d3d2981132499ce7047d727b57f69518e66afcfb64da0c1671ff65f3844b.lean/declarations/expandtermunless--6db3f141883cb3da885762b5.md) | 33 | `declaration-track:6db3f141883cb3da885762b53b3414d83bf68cee619fd51dd621d9b1eb580e91` |
| 5 | `def` | [expandTermReturn](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Switch/Variant9768d3d2981132499ce7047d727b57f69518e66afcfb64da0c1671ff65f3844b.lean/declarations/expandtermreturn--3330c5328a9fedd50ec425b5.md) | 36 | `declaration-track:3330c5328a9fedd50ec425b5726c5c5489d9e26309889f490b805b1480802f4d` |
| 6 | `def` | [elabDo](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Switch/Variant9768d3d2981132499ce7047d727b57f69518e66afcfb64da0c1671ff65f3844b.lean/declarations/elabdo--5aae47869bc0f95cd12a7fa0.md) | 39 | `declaration-track:5aae47869bc0f95cd12a7fa0d7b689e451d39880e5bb0cb69b84542897a180dc` |
| 7 | `def` | [elabTermNestedAction](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Switch/Variant9768d3d2981132499ce7047d727b57f69518e66afcfb64da0c1671ff65f3844b.lean/declarations/elabtermnestedaction--4a4cfe8ef8d190fe9679f673.md) | 45 | `declaration-track:4a4cfe8ef8d190fe9679f673d02385b11d9c852454f2cd093110a0ef7016faad` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
