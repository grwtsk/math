# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Phase.Variant8a9d6c6c44568e3571c4633716b96dfbad28c1cf0bca14780ac3771fd9e47f45

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dd1dbc9cb0a2d21fc6a20bc7269852ca723ba48b",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Phase/Variant8a9d6c6c44568e3571c4633716b96dfbad28c1cf0bca14780ac3771fd9e47f45.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Phase/Variant8a9d6c6c44568e3571c4633716b96dfbad28c1cf0bca14780ac3771fd9e47f45.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Phase/Variant8a9d6c6c44568e3571c4633716b96dfbad28c1cf0bca14780ac3771fd9e47f45.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dd1dbc9cb0a2d21fc6a20bc7269852ca723ba48b`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Phase/Variant8a9d6c6c44568e3571c4633716b96dfbad28c1cf0bca14780ac3771fd9e47f45.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Phase/Variant8a9d6c6c44568e3571c4633716b96dfbad28c1cf0bca14780ac3771fd9e47f45.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.Cellular.Cube` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Phase](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Phase/Variant8a9d6c6c44568e3571c4633716b96dfbad28c1cf0bca14780ac3771fd9e47f45.lean/declarations/phase--784d94ba697c1133920b762e.md) | 19 | `declaration-track:784d94ba697c1133920b762eb6ca1e5c453039d14c5734459ed8e9f83ce03765` |
| 2 | `structure` | [PhaseQuantizer](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Phase/Variant8a9d6c6c44568e3571c4633716b96dfbad28c1cf0bca14780ac3771fd9e47f45.lean/declarations/phasequantizer--b5e737fe5e95e7885d257d42.md) | 21 | `declaration-track:b5e737fe5e95e7885d257d427ea5a9eb204ec4b2b04c0b2fcc0322052cec995d` |
| 3 | `structure` | [CubeSpectralField](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Phase/Variant8a9d6c6c44568e3571c4633716b96dfbad28c1cf0bca14780ac3771fd9e47f45.lean/declarations/cubespectralfield--01417a77e1b7574815e52950.md) | 24 | `declaration-track:01417a77e1b7574815e529502de2fcd6ece09df220bcb3f9304ab70b0f61d110` |
| 4 | `structure` | [CubeHeatFlow](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Phase/Variant8a9d6c6c44568e3571c4633716b96dfbad28c1cf0bca14780ac3771fd9e47f45.lean/declarations/cubeheatflow--7c3978b9817fde537598c5d6.md) | 28 | `declaration-track:7c3978b9817fde537598c5d6e342286923eacf62af417efbfdb9781937438048` |
| 5 | `def` | [quantizedField](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Phase/Variant8a9d6c6c44568e3571c4633716b96dfbad28c1cf0bca14780ac3771fd9e47f45.lean/declarations/quantizedfield--d60d5e9d0ddd969f645a19ea.md) | 31 | `declaration-track:d60d5e9d0ddd969f645a19eaf8c9e8010d4e51bfde3b14dae2e069b66876a739` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
