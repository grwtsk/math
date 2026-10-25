# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Conv.Variantb15094d9252470394e89227d269c3d0e4e0ac1309ff88c65481da37e16ea2e46

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c3936735e303235e90c6b1a9b042cfdc7f0847b0",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Conv/Variantb15094d9252470394e89227d269c3d0e4e0ac1309ff88c65481da37e16ea2e46.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Conv/Variantb15094d9252470394e89227d269c3d0e4e0ac1309ff88c65481da37e16ea2e46.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Conv/Variantb15094d9252470394e89227d269c3d0e4e0ac1309ff88c65481da37e16ea2e46.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c3936735e303235e90c6b1a9b042cfdc7f0847b0`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Conv/Variantb15094d9252470394e89227d269c3d0e4e0ac1309ff88c65481da37e16ea2e46.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Conv/Variantb15094d9252470394e89227d269c3d0e4e0ac1309ff88c65481da37e16ea2e46.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Init` — import line 6; external provider; requires a separately pinned dependency.
- `Lean.Elab.Tactic.Conv.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Lean.Elab.Command` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Conv/Variantb15094d9252470394e89227d269c3d0e4e0ac1309ff88c65481da37e16ea2e46.lean/declarations/syntax--773e9230cb1092fda0debaea.md) | 17 | `declaration-track:773e9230cb1092fda0debaea0b2d86629b2cdff0df92575bde40672dfff53b4e` |
| 2 | `macro_rules` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Conv/Variantb15094d9252470394e89227d269c3d0e4e0ac1309ff88c65481da37e16ea2e46.lean/declarations/macro-rules--ba6430b8a665728846823e7b.md) | 18 | `declaration-track:ba6430b8a665728846823e7b81e4295449a9f3a396591c67eca31fc6c383920e` |
| 3 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Conv/Variantb15094d9252470394e89227d269c3d0e4e0ac1309ff88c65481da37e16ea2e46.lean/declarations/syntax--e0b459d245063ac0036ac939.md) | 22 | `declaration-track:e0b459d245063ac0036ac93956b1a192a6f4c303299bd3554e46479b06a3c21a` |
| 4 | `macro_rules` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Conv/Variantb15094d9252470394e89227d269c3d0e4e0ac1309ff88c65481da37e16ea2e46.lean/declarations/macro-rules--cd3fd9bc6683517bafe280b9.md) | 23 | `declaration-track:cd3fd9bc6683517bafe280b95369675520217e2418b460bfc7e1b22631037ce6` |
| 5 | `macro` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Conv/Variantb15094d9252470394e89227d269c3d0e4e0ac1309ff88c65481da37e16ea2e46.lean/declarations/macro--64300fec960b23922af50c45.md) | 27 | `declaration-track:64300fec960b23922af50c45f3b10ca364eb139f7700c0228ccfcdc7ba19f0bf` |
| 6 | `macro` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Conv/Variantb15094d9252470394e89227d269c3d0e4e0ac1309ff88c65481da37e16ea2e46.lean/declarations/macro--71fa2ba3771ca49dac4af823.md) | 42 | `declaration-track:71fa2ba3771ca49dac4af8235af16e9d9f58fa0ab05c93fc57797141849a0d24` |
| 7 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Conv/Variantb15094d9252470394e89227d269c3d0e4e0ac1309ff88c65481da37e16ea2e46.lean/declarations/syntax--0e623fc7be6b4cd3625edd31.md) | 50 | `declaration-track:0e623fc7be6b4cd3625edd31dea1e57c05832bd276d34ed18d1fb5607040d605` |
| 8 | `def` | [elabDischargeConv](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Conv/Variantb15094d9252470394e89227d269c3d0e4e0ac1309ff88c65481da37e16ea2e46.lean/declarations/elabdischargeconv--c59fd18e4411b1af13873343.md) | 53 | `declaration-track:c59fd18e4411b1af13873343a5950b28c85f0a4f99a482a06ae5cfe9153c8bba` |
| 9 | `macro` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Conv/Variantb15094d9252470394e89227d269c3d0e4e0ac1309ff88c65481da37e16ea2e46.lean/declarations/macro--837d061b9ed51d3b9a5441be.md) | 70 | `declaration-track:837d061b9ed51d3b9a5441bec0797486bbee9aeb16ca7f773983297728593956` |
| 10 | `elab` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Conv/Variantb15094d9252470394e89227d269c3d0e4e0ac1309ff88c65481da37e16ea2e46.lean/declarations/elab--00df66180e5c8abbbc0e573b.md) | 84 | `declaration-track:00df66180e5c8abbbc0e573b3cc3815092c316e005c87d3e2aa9448d4e4fb5d5` |
| 11 | `macro` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Conv/Variantb15094d9252470394e89227d269c3d0e4e0ac1309ff88c65481da37e16ea2e46.lean/declarations/macro--860f1e232bd2f15dbe31b365.md) | 97 | `declaration-track:860f1e232bd2f15dbe31b365d565b795f75e74b301eae06ab3ee928ea789ed1d` |
| 12 | `macro` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Conv/Variantb15094d9252470394e89227d269c3d0e4e0ac1309ff88c65481da37e16ea2e46.lean/declarations/macro--552eb2dc8254fb586bf6af59.md) | 118 | `declaration-track:552eb2dc8254fb586bf6af596c1b433b06f39790685134b8ebe62f98fe4b1e98` |
| 13 | `macro` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Conv/Variantb15094d9252470394e89227d269c3d0e4e0ac1309ff88c65481da37e16ea2e46.lean/declarations/macro--129a1dd7c92c069db20f719a.md) | 124 | `declaration-track:129a1dd7c92c069db20f719aad838c15ee46828a95b16920aab8b6e04956fe10` |
| 14 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Conv/Variantb15094d9252470394e89227d269c3d0e4e0ac1309ff88c65481da37e16ea2e46.lean/declarations/syntax--b25532111bc24bb20bbe570c.md) | 133 | `declaration-track:b25532111bc24bb20bbe570cfc7554617eff8881fedcd4a006bc6ff7bd98c4d8` |
| 15 | `macro_rules` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Conv/Variantb15094d9252470394e89227d269c3d0e4e0ac1309ff88c65481da37e16ea2e46.lean/declarations/macro-rules--5bf614692fbcdc1852be4df0.md) | 134 | `declaration-track:5bf614692fbcdc1852be4df05eaa03e74f4ffa2259f56410814254647bdfcc49` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
