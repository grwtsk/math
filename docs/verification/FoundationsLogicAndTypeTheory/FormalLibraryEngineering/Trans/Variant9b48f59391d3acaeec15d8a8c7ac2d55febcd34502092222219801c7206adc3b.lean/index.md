# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Trans.Variant9b48f59391d3acaeec15d8a8c7ac2d55febcd34502092222219801c7206adc3b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "57b474b4127f3c6b09a8d607f49475c0ed937220",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Trans/Variant9b48f59391d3acaeec15d8a8c7ac2d55febcd34502092222219801c7206adc3b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Trans/Variant9b48f59391d3acaeec15d8a8c7ac2d55febcd34502092222219801c7206adc3b.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Trans/Variant9b48f59391d3acaeec15d8a8c7ac2d55febcd34502092222219801c7206adc3b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `57b474b4127f3c6b09a8d607f49475c0ed937220`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Trans/Variant9b48f59391d3acaeec15d8a8c7ac2d55febcd34502092222219801c7206adc3b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Trans/Variant9b48f59391d3acaeec15d8a8c7ac2d55febcd34502092222219801c7206adc3b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Batteries.Tactic.Trans` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [nleq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Trans/Variant9b48f59391d3acaeec15d8a8c7ac2d55febcd34502092222219801c7206adc3b.lean/declarations/nleq--b08349a29b2d6bb5e80d9984.md) | 12 | `declaration-track:b08349a29b2d6bb5e80d99843f7e8afadc5de0c8c9c5b958c9a01ea2d1b8cd4b` |
| 2 | `theorem` | [nleq_trans](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Trans/Variant9b48f59391d3acaeec15d8a8c7ac2d55febcd34502092222219801c7206adc3b.lean/declarations/nleq-trans--cc9e4a489e0ef5d33c59ed04.md) | 14 | `result-track:cc9e4a489e0ef5d33c59ed04e87561d689a1cff34913a2ac6bb0d8883825df1d` |
| 3 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Trans/Variant9b48f59391d3acaeec15d8a8c7ac2d55febcd34502092222219801c7206adc3b.lean/declarations/example--000cbea6ac04bc3188f36eb7.md) | 16 | `declaration-track:000cbea6ac04bc3188f36eb7fdce652f348b555bb100fda46ee7bac73c380550` |
| 4 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Trans/Variant9b48f59391d3acaeec15d8a8c7ac2d55febcd34502092222219801c7206adc3b.lean/declarations/example--684a6ae4d00baeb9738b9797.md) | 22 | `declaration-track:684a6ae4d00baeb9738b9797e47c739a577dc06f06b6e774c22b35c9453acd68` |
| 5 | `theorem` | [eq_trans](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Trans/Variant9b48f59391d3acaeec15d8a8c7ac2d55febcd34502092222219801c7206adc3b.lean/declarations/eq-trans--cbce2f5cbc97af469974d4de.md) | 25 | `result-track:cbce2f5cbc97af469974d4de7b69202efc4f1cbd6137c5b1643f9c9dc2cd4645` |
| 6 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Trans/Variant9b48f59391d3acaeec15d8a8c7ac2d55febcd34502092222219801c7206adc3b.lean/declarations/example--f644d09a9ab918ac8aacb7ff.md) | 29 | `declaration-track:f644d09a9ab918ac8aacb7ff3169a341b4a01fea4d302e568ca487bef39eb0aa` |
| 7 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Trans/Variant9b48f59391d3acaeec15d8a8c7ac2d55febcd34502092222219801c7206adc3b.lean/declarations/example--8255f704024cd21f5933f451.md) | 31 | `declaration-track:8255f704024cd21f5933f45137ed0946a7b27e2be02b73cadf7c24155f200747` |
| 8 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Trans/Variant9b48f59391d3acaeec15d8a8c7ac2d55febcd34502092222219801c7206adc3b.lean/declarations/example--7b55883625a0e51b39a1346a.md) | 37 | `declaration-track:7b55883625a0e51b39a1346ab26d057cee8c006fd01ce3f24f278b449afea1cd` |
| 9 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Trans/Variant9b48f59391d3acaeec15d8a8c7ac2d55febcd34502092222219801c7206adc3b.lean/declarations/example--c1fd45fda8980e3cf2d4bf41.md) | 39 | `declaration-track:c1fd45fda8980e3cf2d4bf41faf4c3e427feb26078c541b8125c012e43880f55` |
| 10 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Trans/Variant9b48f59391d3acaeec15d8a8c7ac2d55febcd34502092222219801c7206adc3b.lean/declarations/example--6e4825cd39d26667a1ce1536.md) | 46 | `declaration-track:6e4825cd39d26667a1ce1536593e3194b904d987765141310710ab074c0e498c` |
| 11 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Trans/Variant9b48f59391d3acaeec15d8a8c7ac2d55febcd34502092222219801c7206adc3b.lean/declarations/example--4f2c4bf42c397c856086ce67.md) | 53 | `declaration-track:4f2c4bf42c397c856086ce67911f712ff0e44250070b3ed8dcc310b535240d35` |
| 12 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Trans/Variant9b48f59391d3acaeec15d8a8c7ac2d55febcd34502092222219801c7206adc3b.lean/declarations/example--2c3b104b22c4f22de24bcdee.md) | 59 | `declaration-track:2c3b104b22c4f22de24bcdeea59cb57b2b495e5276f1586af6c4c3c9fee8b3c8` |
| 13 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Trans/Variant9b48f59391d3acaeec15d8a8c7ac2d55febcd34502092222219801c7206adc3b.lean/declarations/example--4280e6a969654272c0f37288.md) | 61 | `declaration-track:4280e6a969654272c0f372888e7abbdd722697c33f2b688f967f29f37783c847` |
| 14 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Trans/Variant9b48f59391d3acaeec15d8a8c7ac2d55febcd34502092222219801c7206adc3b.lean/declarations/example--043734d252c5055767bb114d.md) | 67 | `declaration-track:043734d252c5055767bb114d0e509295106415b6859e86c95ad21404c643a0e9` |
| 15 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Trans/Variant9b48f59391d3acaeec15d8a8c7ac2d55febcd34502092222219801c7206adc3b.lean/declarations/example--ec3d9c57d80db14e7c2553c3.md) | 69 | `declaration-track:ec3d9c57d80db14e7c2553c324787f7e374975c74bcc7efd590cbb075bd1b85b` |
| 16 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Trans/Variant9b48f59391d3acaeec15d8a8c7ac2d55febcd34502092222219801c7206adc3b.lean/declarations/example--3776fa0c63961b0d640ce329.md) | 74 | `declaration-track:3776fa0c63961b0d640ce3294d1768f77472e69ac82eecdd31c121f3a14d9f12` |
| 17 | `def` | [MyLE](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Trans/Variant9b48f59391d3acaeec15d8a8c7ac2d55febcd34502092222219801c7206adc3b.lean/declarations/myle--4a0b022ffd28debf76f4ba69.md) | 80 | `declaration-track:4a0b022ffd28debf76f4ba692fd2b6bceb92b701b53bbf78eed56f3fc249000d` |
| 18 | `theorem` | [MyLE.trans](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Trans/Variant9b48f59391d3acaeec15d8a8c7ac2d55febcd34502092222219801c7206adc3b.lean/declarations/myle-trans--26cfcffc4348d32e33a05627.md) | 82 | `result-track:26cfcffc4348d32e33a056277f9e06e45f98abcdf74eb7172e043dfef43d1f07` |
| 19 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Trans/Variant9b48f59391d3acaeec15d8a8c7ac2d55febcd34502092222219801c7206adc3b.lean/declarations/example--64efed8efda5b22435c7ff34.md) | 88 | `declaration-track:64efed8efda5b22435c7ff34025ac5eacfa032bb466121969ccf12c0072945ab` |
| 20 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Trans/Variant9b48f59391d3acaeec15d8a8c7ac2d55febcd34502092222219801c7206adc3b.lean/declarations/example--c824b3b13a72d64f17d0e273.md) | 92 | `declaration-track:c824b3b13a72d64f17d0e273c98b9d01145e3e167a8f8cc42296aa0b38ef0092` |
| 21 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Trans/Variant9b48f59391d3acaeec15d8a8c7ac2d55febcd34502092222219801c7206adc3b.lean/declarations/example--ae9831a599d1f807b53bda46.md) | 100 | `declaration-track:ae9831a599d1f807b53bda46ee1f981b1f465dd12bea978cb5926b88e867cda6` |
| 22 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Trans/Variant9b48f59391d3acaeec15d8a8c7ac2d55febcd34502092222219801c7206adc3b.lean/declarations/example--b8d43f8de709d551369539be.md) | 110 | `declaration-track:b8d43f8de709d551369539beebbead2606c348803c5a463295c953e12c1d87cf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
