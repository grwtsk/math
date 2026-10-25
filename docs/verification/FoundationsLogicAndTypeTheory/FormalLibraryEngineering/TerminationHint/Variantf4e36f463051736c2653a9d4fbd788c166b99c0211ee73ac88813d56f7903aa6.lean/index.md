# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TerminationHint.Variantf4e36f463051736c2653a9d4fbd788c166b99c0211ee73ac88813d56f7903aa6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5448856c9a227fb37367aac1eedeafe220c11ef5",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TerminationHint/Variantf4e36f463051736c2653a9d4fbd788c166b99c0211ee73ac88813d56f7903aa6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TerminationHint/Variantf4e36f463051736c2653a9d4fbd788c166b99c0211ee73ac88813d56f7903aa6.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TerminationHint/Variantf4e36f463051736c2653a9d4fbd788c166b99c0211ee73ac88813d56f7903aa6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5448856c9a227fb37367aac1eedeafe220c11ef5`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TerminationHint/Variantf4e36f463051736c2653a9d4fbd788c166b99c0211ee73ac88813d56f7903aa6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TerminationHint/Variantf4e36f463051736c2653a9d4fbd788c166b99c0211ee73ac88813d56f7903aa6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Omega` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [TerminationBy](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TerminationHint/Variantf4e36f463051736c2653a9d4fbd788c166b99c0211ee73ac88813d56f7903aa6.lean/declarations/terminationby--7a6b378ae629490842aac6bd.md) | 22 | `declaration-track:7a6b378ae629490842aac6bd59ee07afdcd7d4dd51b00a85a09787cf9cfc776d` |
| 2 | `structure` | [DecreasingBy](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TerminationHint/Variantf4e36f463051736c2653a9d4fbd788c166b99c0211ee73ac88813d56f7903aa6.lean/declarations/decreasingby--3965453ae3350a6c026636a3.md) | 37 | `declaration-track:3965453ae3350a6c026636a3672207259922e1f1a66d712a94a9a6ef6a28dd6c` |
| 3 | `inductive` | [PartialFixpointType](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TerminationHint/Variantf4e36f463051736c2653a9d4fbd788c166b99c0211ee73ac88813d56f7903aa6.lean/declarations/partialfixpointtype--0fde6569aff78cb9bad0b2c3.md) | 42 | `declaration-track:0fde6569aff78cb9bad0b2c3ca8a89d1a13d5008525f31303a6ff07454e2a51c` |
| 4 | `structure` | [PartialFixpoint](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TerminationHint/Variantf4e36f463051736c2653a9d4fbd788c166b99c0211ee73ac88813d56f7903aa6.lean/declarations/partialfixpoint--0481abe865fe4d7ca38fb072.md) | 49 | `declaration-track:0481abe865fe4d7ca38fb0727e3b356881643ae36552ce4b598d94163ccc6739` |
| 5 | `structure` | [TerminationHints](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TerminationHint/Variantf4e36f463051736c2653a9d4fbd788c166b99c0211ee73ac88813d56f7903aa6.lean/declarations/terminationhints--4a37f06592bb241597224e2a.md) | 60 | `declaration-track:4a37f06592bb241597224e2a6c454ae83a7103af942c5f9f2a50c0d304c83551` |
| 6 | `def` | [isInductiveFixpoint](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TerminationHint/Variantf4e36f463051736c2653a9d4fbd788c166b99c0211ee73ac88813d56f7903aa6.lean/declarations/isinductivefixpoint--34307ac937383923ab9b0819.md) | 78 | `declaration-track:34307ac937383923ab9b08191a969ab09b375c9882d0754dda15493f9e37570c` |
| 7 | `def` | [isCoinductiveFixpoint](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TerminationHint/Variantf4e36f463051736c2653a9d4fbd788c166b99c0211ee73ac88813d56f7903aa6.lean/declarations/iscoinductivefixpoint--f8a722348f2cb6e080ba6e4f.md) | 82 | `declaration-track:f8a722348f2cb6e080ba6e4f867ebf75626c93e2cd43bf18b3edb61a7fd1ad59` |
| 8 | `def` | [isPartialFixpoint](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TerminationHint/Variantf4e36f463051736c2653a9d4fbd788c166b99c0211ee73ac88813d56f7903aa6.lean/declarations/ispartialfixpoint--799f59a234126e09426caace.md) | 86 | `declaration-track:799f59a234126e09426caace134ddd2f7f5f598fa7abd3616510d8368be91a6d` |
| 9 | `def` | [isLatticeTheoretic](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TerminationHint/Variantf4e36f463051736c2653a9d4fbd788c166b99c0211ee73ac88813d56f7903aa6.lean/declarations/islatticetheoretic--a4870e7b729e97e458228514.md) | 90 | `declaration-track:a4870e7b729e97e4582285147fa0670f09ffcc74a57cb24781abbb0fee5f0f19` |
| 10 | `def` | [TerminationHints.none](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TerminationHint/Variantf4e36f463051736c2653a9d4fbd788c166b99c0211ee73ac88813d56f7903aa6.lean/declarations/terminationhints-none--65643888830c0677d711bb77.md) | 93 | `declaration-track:65643888830c0677d711bb77ac7b3839d97edbd57e7b1dcd2fbe8a7723067570` |
| 11 | `def` | [TerminationHints.ensureNone](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TerminationHint/Variantf4e36f463051736c2653a9d4fbd788c166b99c0211ee73ac88813d56f7903aa6.lean/declarations/terminationhints-ensurenone--ef7dd087194c55000282959c.md) | 96 | `declaration-track:ef7dd087194c55000282959cd2baa3a46ad03ee23d35cdf3c2924f10e192b174` |
| 12 | `def` | [TerminationHints.isNotNone](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TerminationHint/Variantf4e36f463051736c2653a9d4fbd788c166b99c0211ee73ac88813d56f7903aa6.lean/declarations/terminationhints-isnotnone--318fa0775bce4ecd154ea6c5.md) | 114 | `declaration-track:318fa0775bce4ecd154ea6c525b8905ec2fa6b1f45afedd6077cbf6539403b6b` |
| 13 | `def` | [TerminationHints.rememberExtraParams](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TerminationHint/Variantf4e36f463051736c2653a9d4fbd788c166b99c0211ee73ac88813d56f7903aa6.lean/declarations/terminationhints-rememberextraparams--34373b6670853631401f273e.md) | 124 | `declaration-track:34373b6670853631401f273e911393fad2109da7675d216ea1dfdaddb601efc1` |
| 14 | `def` | [TerminationBy.checkVars](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TerminationHint/Variantf4e36f463051736c2653a9d4fbd788c166b99c0211ee73ac88813d56f7903aa6.lean/declarations/terminationby-checkvars--bc2ee3b473f29388f86f3180.md) | 132 | `declaration-track:bc2ee3b473f29388f86f31805ef6a3d1185e54ed6e5a2e7a9dd3f5d50ab452c5` |
| 15 | `def` | [elabTerminationHints](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TerminationHint/Variantf4e36f463051736c2653a9d4fbd788c166b99c0211ee73ac88813d56f7903aa6.lean/declarations/elabterminationhints--7076064084564f8dcda33067.md) | 150 | `declaration-track:7076064084564f8dcda330672e9a55b6f39e2259f3ecb785ab2b083582ab51d8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
