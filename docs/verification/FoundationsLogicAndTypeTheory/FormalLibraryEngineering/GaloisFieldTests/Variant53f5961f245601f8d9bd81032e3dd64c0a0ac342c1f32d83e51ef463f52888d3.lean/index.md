# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.GaloisFieldTests.Variant53f5961f245601f8d9bd81032e3dd64c0a0ac342c1f32d83e51ef463f52888d3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e592a0f2de759c285a21f33965dbde97fb523093",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GaloisFieldTests/Variant53f5961f245601f8d9bd81032e3dd64c0a0ac342c1f32d83e51ef463f52888d3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GaloisFieldTests/Variant53f5961f245601f8d9bd81032e3dd64c0a0ac342c1f32d83e51ef463f52888d3.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GaloisFieldTests/Variant53f5961f245601f8d9bd81032e3dd64c0a0ac342c1f32d83e51ef463f52888d3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e592a0f2de759c285a21f33965dbde97fb523093`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GaloisFieldTests/Variant53f5961f245601f8d9bd81032e3dd64c0a0ac342c1f32d83e51ef463f52888d3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GaloisFieldTests/Variant53f5961f245601f8d9bd81032e3dd64c0a0ac342c1f32d83e51ef463f52888d3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `BinaryMatrix.GaloisFieldRound` — import line 6; external provider; requires a separately pinned dependency.
- `BinaryMatrix.GaloisFieldRegular` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FinCases` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [gf2OneCellCoordinates](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GaloisFieldTests/Variant53f5961f245601f8d9bd81032e3dd64c0a0ac342c1f32d83e51ef463f52888d3.lean/declarations/gf2onecellcoordinates--f50aec24bcab0721c86751f6.md) | 27 | `declaration-track:f50aec24bcab0721c86751f6573ea861a6b050b6b8f93aaa09e7c10758f431b9` |
| 2 | `def` | [gf2OneCellEncoding](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GaloisFieldTests/Variant53f5961f245601f8d9bd81032e3dd64c0a0ac342c1f32d83e51ef463f52888d3.lean/declarations/gf2onecellencoding--cf392a98f98b060316d7ffd5.md) | 41 | `declaration-track:cf392a98f98b060316d7ffd5b0bf4210a9fb4911dad53d4b65f7055cf67516a1` |
| 3 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GaloisFieldTests/Variant53f5961f245601f8d9bd81032e3dd64c0a0ac342c1f32d83e51ef463f52888d3.lean/declarations/example--eee0c16ec1203e9740b533ba.md) | 44 | `declaration-track:eee0c16ec1203e9740b533ba4baeae20ed4bf7236013f56f48c657a45146b0e3` |
| 4 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GaloisFieldTests/Variant53f5961f245601f8d9bd81032e3dd64c0a0ac342c1f32d83e51ef463f52888d3.lean/declarations/example--a2f9ce885d381c3c903f2ab4.md) | 48 | `declaration-track:a2f9ce885d381c3c903f2ab495eca079d7d0ad34cd6924dacee7f7768cb3c9bf` |
| 5 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GaloisFieldTests/Variant53f5961f245601f8d9bd81032e3dd64c0a0ac342c1f32d83e51ef463f52888d3.lean/declarations/example--8a60fed1c15d12621775f6a6.md) | 57 | `declaration-track:8a60fed1c15d12621775f6a6c2ed5873e1e1edbec9ca3430b69995cd516fbfaa` |
| 6 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GaloisFieldTests/Variant53f5961f245601f8d9bd81032e3dd64c0a0ac342c1f32d83e51ef463f52888d3.lean/declarations/example--9c869e6aa82e770b2ec13839.md) | 61 | `declaration-track:9c869e6aa82e770b2ec13839ed2650b49eb316795f6e3c953561a96b870225a0` |
| 7 | `def` | [leftBit](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GaloisFieldTests/Variant53f5961f245601f8d9bd81032e3dd64c0a0ac342c1f32d83e51ef463f52888d3.lean/declarations/leftbit--dafee501b4ba49047eac73d4.md) | 73 | `declaration-track:dafee501b4ba49047eac73d452fb2d47d6f59e3a62e3a82916995adf76e9d07f` |
| 8 | `def` | [rightBit](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GaloisFieldTests/Variant53f5961f245601f8d9bd81032e3dd64c0a0ac342c1f32d83e51ef463f52888d3.lean/declarations/rightbit--ac3807e8bea7711144fe57a7.md) | 77 | `declaration-track:ac3807e8bea7711144fe57a769f38337bd7d218b369b11e5a9ef2271d13c3788` |
| 9 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GaloisFieldTests/Variant53f5961f245601f8d9bd81032e3dd64c0a0ac342c1f32d83e51ef463f52888d3.lean/declarations/example--9d6d5bcde11fe1f0e7e8d2f9.md) | 80 | `declaration-track:9d6d5bcde11fe1f0e7e8d2f965401223ed3c20b89d02f06f140e96ac8b40409c` |
| 10 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GaloisFieldTests/Variant53f5961f245601f8d9bd81032e3dd64c0a0ac342c1f32d83e51ef463f52888d3.lean/declarations/example--80bef5064436db826572266c.md) | 83 | `declaration-track:80bef5064436db826572266ce438326c739b553fd45b4c4a123a70493245cfe3` |
| 11 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GaloisFieldTests/Variant53f5961f245601f8d9bd81032e3dd64c0a0ac342c1f32d83e51ef463f52888d3.lean/declarations/example--59d1a3c1da7a9bf74575f0a8.md) | 86 | `declaration-track:59d1a3c1da7a9bf74575f0a8b10e0c99483fcd8baae08da8f1520d3f52e5c6ae` |
| 12 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GaloisFieldTests/Variant53f5961f245601f8d9bd81032e3dd64c0a0ac342c1f32d83e51ef463f52888d3.lean/declarations/example--e55a39eac2e367bf9979e2b8.md) | 89 | `declaration-track:e55a39eac2e367bf9979e2b8461bb14f134b1d0a7396c58e16b9e49fa86d14cc` |
| 13 | `def` | [upperUnitriangular2](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GaloisFieldTests/Variant53f5961f245601f8d9bd81032e3dd64c0a0ac342c1f32d83e51ef463f52888d3.lean/declarations/upperunitriangular2--37836e46af33c8d184359a5e.md) | 99 | `declaration-track:37836e46af33c8d184359a5e24b33ab490bc2f4399c53dbf524d0239b8943755` |
| 14 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GaloisFieldTests/Variant53f5961f245601f8d9bd81032e3dd64c0a0ac342c1f32d83e51ef463f52888d3.lean/declarations/example--e821733f389f2a593958907d.md) | 102 | `declaration-track:e821733f389f2a593958907dcc804af6ba2a465f0b945c57dd8b348c5ab302ce` |
| 15 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GaloisFieldTests/Variant53f5961f245601f8d9bd81032e3dd64c0a0ac342c1f32d83e51ef463f52888d3.lean/declarations/example--5d56f944987d558747f06e0a.md) | 107 | `declaration-track:5d56f944987d558747f06e0a3c2af71f6e30667b8a1a25ff5f00a7b58215dc59` |
| 16 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GaloisFieldTests/Variant53f5961f245601f8d9bd81032e3dd64c0a0ac342c1f32d83e51ef463f52888d3.lean/declarations/example--8e6562a520e0f9f2df2880ce.md) | 112 | `declaration-track:8e6562a520e0f9f2df2880cea11298521c2ac4f1b85145759f2f85444f967b85` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
