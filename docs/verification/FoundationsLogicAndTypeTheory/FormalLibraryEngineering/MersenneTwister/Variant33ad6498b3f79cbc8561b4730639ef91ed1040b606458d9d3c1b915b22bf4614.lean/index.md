# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MersenneTwister.Variant33ad6498b3f79cbc8561b4730639ef91ed1040b606458d9d3c1b915b22bf4614

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "af56490653738806d17173c857964c8428d49d20",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MersenneTwister/Variant33ad6498b3f79cbc8561b4730639ef91ed1040b606458d9d3c1b915b22bf4614.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MersenneTwister/Variant33ad6498b3f79cbc8561b4730639ef91ed1040b606458d9d3c1b915b22bf4614.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MersenneTwister/Variant33ad6498b3f79cbc8561b4730639ef91ed1040b606458d9d3c1b915b22bf4614.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `af56490653738806d17173c857964c8428d49d20`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MersenneTwister/Variant33ad6498b3f79cbc8561b4730639ef91ed1040b606458d9d3c1b915b22bf4614.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MersenneTwister/Variant33ad6498b3f79cbc8561b4730639ef91ed1040b606458d9d3c1b915b22bf4614.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Config](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MersenneTwister/Variant33ad6498b3f79cbc8561b4730639ef91ed1040b606458d9d3c1b915b22bf4614.lean/declarations/config--142ee221161c3354b5bd6f96.md) | 54 | `declaration-track:142ee221161c3354b5bd6f965ae52b4409ec53d4e18b74ac37b295b3dc073c4e` |
| 2 | `abbrev` | [Config.uMask](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MersenneTwister/Variant33ad6498b3f79cbc8561b4730639ef91ed1040b606458d9d3c1b915b22bf4614.lean/declarations/config-umask--0dcebe2eb54933769b2bbba1.md) | 74 | `declaration-track:0dcebe2eb54933769b2bbba16a6af8405c7c603fc8d321b2c9e7bfef70b72456` |
| 3 | `abbrev` | [Config.lMask](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MersenneTwister/Variant33ad6498b3f79cbc8561b4730639ef91ed1040b606458d9d3c1b915b22bf4614.lean/declarations/config-lmask--ac8a919161726fc7b70163ad.md) | 77 | `declaration-track:ac8a919161726fc7b70163ad726e66240e64f64ec9bdeba6c6426016187fab50` |
| 4 | `theorem` | [Config.zero_lt_wordSize](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MersenneTwister/Variant33ad6498b3f79cbc8561b4730639ef91ed1040b606458d9d3c1b915b22bf4614.lean/declarations/config-zero-lt-wordsize--3ae874eb05bd47f8e6ff5cbb.md) | 80 | `result-track:3ae874eb05bd47f8e6ff5cbba3a5b164079bf53399a0cb769376b61722a7dcbd` |
| 5 | `theorem` | [Config.zero_lt_stateSize](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MersenneTwister/Variant33ad6498b3f79cbc8561b4730639ef91ed1040b606458d9d3c1b915b22bf4614.lean/declarations/config-zero-lt-statesize--bac978bcc1ec7bcf0c6b25ce.md) | 83 | `result-track:bac978bcc1ec7bcf0c6b25ce20181582f21d5ab20895b214781afad5e73064bf` |
| 6 | `structure` | [State](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MersenneTwister/Variant33ad6498b3f79cbc8561b4730639ef91ed1040b606458d9d3c1b915b22bf4614.lean/declarations/state--67c76b0c342adad010894221.md) | 87 | `declaration-track:67c76b0c342adad01089422176a87b6097c05590b2d255a725b3e99d0eff4254` |
| 7 | `def` | [Config.init](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MersenneTwister/Variant33ad6498b3f79cbc8561b4730639ef91ed1040b606458d9d3c1b915b22bf4614.lean/declarations/config-init--047c5831b7616d67ac0472c6.md) | 94 | `declaration-track:047c5831b7616d67ac0472c61680dc61682c687bd27835139ffb1c6b2f1306e0` |
| 8 | `def` | [State.twist](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MersenneTwister/Variant33ad6498b3f79cbc8561b4730639ef91ed1040b606458d9d3c1b915b22bf4614.lean/declarations/state-twist--6e67c9302e85c1814e1b59f4.md) | 106 | `declaration-track:6e67c9302e85c1814e1b59f48120a5483fc1e7dc932369329070fd2db31440be` |
| 9 | `def` | [State.update](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MersenneTwister/Variant33ad6498b3f79cbc8561b4730639ef91ed1040b606458d9d3c1b915b22bf4614.lean/declarations/state-update--f69b0c1dc16eeab4e90ec10e.md) | 116 | `declaration-track:f69b0c1dc16eeab4e90ec10e939ad1705121975aa18a712e670f9d8f45cf9cd4` |
| 10 | `def` | [State.next](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MersenneTwister/Variant33ad6498b3f79cbc8561b4730639ef91ed1040b606458d9d3c1b915b22bf4614.lean/declarations/state-next--5f989e51e4de0cdbb430277e.md) | 121 | `declaration-track:5f989e51e4de0cdbb430277e95ab1ea038e294b6913c55b74d437bcf2ca87ce8` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MersenneTwister/Variant33ad6498b3f79cbc8561b4730639ef91ed1040b606458d9d3c1b915b22bf4614.lean/declarations/instance--13a52634c25e656e1ab43800.md) | 135 | `declaration-track:13a52634c25e656e1ab438009ead07755a44bdd88fbe7ae4674ffa05bee5c9aa` |
| 12 | `def` | [mt19937](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MersenneTwister/Variant33ad6498b3f79cbc8561b4730639ef91ed1040b606458d9d3c1b915b22bf4614.lean/declarations/mt19937--ec2aa44b312948bf7f998f48.md) | 139 | `declaration-track:ec2aa44b312948bf7f998f4837e88a6d9534ca0aebaba428eb72b313187ad675` |
| 13 | `def` | [mt19937_64](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MersenneTwister/Variant33ad6498b3f79cbc8561b4730639ef91ed1040b606458d9d3c1b915b22bf4614.lean/declarations/mt19937-64--45ffe2bb92c917a29fb7d37d.md) | 151 | `declaration-track:45ffe2bb92c917a29fb7d37deebd5608f37f0bd8251a416549311bcc5e143fdb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
