# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Extract.Variante9f0b75df2555983ecb92bd4f170d4604b3c92daa70fe97ac77ae0daf416f9fa

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "297bb43ae537c31f9331955612d07ec48a3f3a53",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Extract/Variante9f0b75df2555983ecb92bd4f170d4604b3c92daa70fe97ac77ae0daf416f9fa.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Extract/Variante9f0b75df2555983ecb92bd4f170d4604b3c92daa70fe97ac77ae0daf416f9fa.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Extract/Variante9f0b75df2555983ecb92bd4f170d4604b3c92daa70fe97ac77ae0daf416f9fa.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `297bb43ae537c31f9331955612d07ec48a3f3a53`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Extract/Variante9f0b75df2555983ecb92bd4f170d4604b3c92daa70fe97ac77ae0daf416f9fa.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Extract/Variante9f0b75df2555983ecb92bd4f170d4604b3c92daa70fe97ac77ae0daf416f9fa.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean` — import line 11; external provider; requires a separately pinned dependency.
- `LeanCert.Core.IntervalRat.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `LeanCert.Meta.Numeral` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [extractNatLit](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Extract/Variante9f0b75df2555983ecb92bd4f170d4604b3c92daa70fe97ac77ae0daf416f9fa.lean/declarations/extractnatlit--3d08ca06153783980b31dfb2.md) | 32 | `declaration-track:3d08ca06153783980b31dfb27e6db32d2a9ea7fb0865c4377db2088b0e93443c` |
| 2 | `def` | [extractIntLit](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Extract/Variante9f0b75df2555983ecb92bd4f170d4604b3c92daa70fe97ac77ae0daf416f9fa.lean/declarations/extractintlit--cc05d0120335e4cb2cff0c22.md) | 43 | `declaration-track:cc05d0120335e4cb2cff0c223134671da9315b0f758e1ad0f547540369dedb90` |
| 3 | `def` | [extractRatFromRat](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Extract/Variante9f0b75df2555983ecb92bd4f170d4604b3c92daa70fe97ac77ae0daf416f9fa.lean/declarations/extractratfromrat--094c591330c10befa50034c9.md) | 62 | `declaration-track:094c591330c10befa50034c9995c32cc106d1ed98babe3cc3662517bc8766a9f` |
| 4 | `def` | [extractRatFromReal](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Extract/Variante9f0b75df2555983ecb92bd4f170d4604b3c92daa70fe97ac77ae0daf416f9fa.lean/declarations/extractratfromreal--c0e4321fb937310800a2f064.md) | 120 | `declaration-track:c0e4321fb937310800a2f064e9629d53eeb57db77e693c69252b0c5123f11a07` |
| 5 | `def` | [mkIntervalRat](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Extract/Variante9f0b75df2555983ecb92bd4f170d4604b3c92daa70fe97ac77ae0daf416f9fa.lean/declarations/mkintervalrat--2f9208627beff00cb9323f9e.md) | 210 | `declaration-track:2f9208627beff00cb9323f9ecf5852578a47a1cfdb3c827d664766392c39a39b` |
| 6 | `def` | [toRat?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Extract/Variante9f0b75df2555983ecb92bd4f170d4604b3c92daa70fe97ac77ae0daf416f9fa.lean/declarations/torat--46af3f29b9ef2ad459f7bd1b.md) | 223 | `declaration-track:46af3f29b9ef2ad459f7bd1bbf07303b686ea1ac13d20770e55908a1a93c41d4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
