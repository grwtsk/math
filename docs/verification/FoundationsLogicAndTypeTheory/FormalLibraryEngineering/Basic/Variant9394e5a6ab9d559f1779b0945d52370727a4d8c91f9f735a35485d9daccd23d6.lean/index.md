# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Basic.Variant9394e5a6ab9d559f1779b0945d52370727a4d8c91f9f735a35485d9daccd23d6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4afb267cc3646ae98ccd4741390e7b62821586be",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant9394e5a6ab9d559f1779b0945d52370727a4d8c91f9f735a35485d9daccd23d6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant9394e5a6ab9d559f1779b0945d52370727a4d8c91f9f735a35485d9daccd23d6.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant9394e5a6ab9d559f1779b0945d52370727a4d8c91f9f735a35485d9daccd23d6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4afb267cc3646ae98ccd4741390e7b62821586be`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant9394e5a6ab9d559f1779b0945d52370727a4d8c91f9f735a35485d9daccd23d6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant9394e5a6ab9d559f1779b0945d52370727a4d8c91f9f735a35485d9daccd23d6.lean.json)

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
| 1 | `inductive` | [MiuAtom](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant9394e5a6ab9d559f1779b0945d52370727a4d8c91f9f735a35485d9daccd23d6.lean/declarations/miuatom--295c2c3ad9608c9d460179f0.md) | 76 | `declaration-track:295c2c3ad9608c9d460179f0d2937597e9fdf22fd7a93a081f0ebc4dc6d60bb9` |
| 2 | `instance` | [miuAtomInhabited](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant9394e5a6ab9d559f1779b0945d52370727a4d8c91f9f735a35485d9daccd23d6.lean/declarations/miuatominhabited--55bb1b48bd3b0953c3957f76.md) | 95 | `declaration-track:55bb1b48bd3b0953c3957f76b88b281ab1ba762261543bd73b3d4bc958fec78d` |
| 3 | `def` | [MiuAtom.repr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant9394e5a6ab9d559f1779b0945d52370727a4d8c91f9f735a35485d9daccd23d6.lean/declarations/miuatom-repr--6c65d6c7f1d1651f36329925.md) | 100 | `declaration-track:6c65d6c7f1d1651f3632992567c641a5b80fd57d159584b817dc93793f13dac8` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant9394e5a6ab9d559f1779b0945d52370727a4d8c91f9f735a35485d9daccd23d6.lean/declarations/instance--5c84206e100ec62257fb5802.md) | 107 | `declaration-track:5c84206e100ec62257fb580211b2b20e3658b0ce24b6641d138bc109c9f7c9e7` |
| 5 | `abbrev` | [Miustr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant9394e5a6ab9d559f1779b0945d52370727a4d8c91f9f735a35485d9daccd23d6.lean/declarations/miustr--fc36c2779d41d49013e28dc6.md) | 112 | `declaration-track:fc36c2779d41d49013e28dc6c83fd8b62318694fd29ae509de98ed7308493abf` |
| 6 | `def` | [Miustr.mrepr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant9394e5a6ab9d559f1779b0945d52370727a4d8c91f9f735a35485d9daccd23d6.lean/declarations/miustr-mrepr--57c4f7609e990ec699db6e80.md) | 116 | `declaration-track:57c4f7609e990ec699db6e80d3754ca91d3f40ba4707868359556d7d743a41f4` |
| 7 | `instance` | [miurepr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant9394e5a6ab9d559f1779b0945d52370727a4d8c91f9f735a35485d9daccd23d6.lean/declarations/miurepr--b7d4c9241efcb7ebdbea4e2c.md) | 120 | `declaration-track:b7d4c9241efcb7ebdbea4e2c2a87639c2c32a5a12cd3bd54644c63d0d1a54380` |
| 8 | `def` | [lcharToMiustr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant9394e5a6ab9d559f1779b0945d52370727a4d8c91f9f735a35485d9daccd23d6.lean/declarations/lchartomiustr--36b451b5a10cbc9983755f36.md) | 125 | `declaration-track:36b451b5a10cbc9983755f369fbe6358dd6fc23fa1c962ba80ff32b72b64073b` |
| 9 | `instance` | [stringCoeMiustr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant9394e5a6ab9d559f1779b0945d52370727a4d8c91f9f735a35485d9daccd23d6.lean/declarations/stringcoemiustr--39a59048ed68483de6a2712d.md) | 135 | `declaration-track:39a59048ed68483de6a2712d885a47dafe7607bf099fb685f5049da954c306e5` |
| 10 | `inductive` | [Derivable](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant9394e5a6ab9d559f1779b0945d52370727a4d8c91f9f735a35485d9daccd23d6.lean/declarations/derivable--e3ca4a48122b474f321ecad3.md) | 148 | `declaration-track:e3ca4a48122b474f321ecad31a7a4f335da652756eb84d8f36802c68c2cdc543` |
| 11 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant9394e5a6ab9d559f1779b0945d52370727a4d8c91f9f735a35485d9daccd23d6.lean/declarations/example--ad07f671b2f1bb2619002c78.md) | 160 | `declaration-track:ad07f671b2f1bb2619002c7821f92c161b7dda431adcd831dd56b57dccb5bb2b` |
| 12 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant9394e5a6ab9d559f1779b0945d52370727a4d8c91f9f735a35485d9daccd23d6.lean/declarations/example--d8fd61149984ababdb86e450.md) | 164 | `declaration-track:d8fd61149984ababdb86e450fec5a5761c0304f6c4cbff85f6af36a6c9f923f4` |
| 13 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant9394e5a6ab9d559f1779b0945d52370727a4d8c91f9f735a35485d9daccd23d6.lean/declarations/example--edc7ec5b7b4a38623855026d.md) | 168 | `declaration-track:edc7ec5b7b4a38623855026de9cf973a7c0c0bd54973c55c8efae0491e6a35a4` |
| 14 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant9394e5a6ab9d559f1779b0945d52370727a4d8c91f9f735a35485d9daccd23d6.lean/declarations/example--722a55b460f63ab07abafa6e.md) | 172 | `declaration-track:722a55b460f63ab07abafa6ed7cd00629707d35fa98433b8a7233603d83bdcc9` |
| 15 | `theorem` | [MIU_der](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant9394e5a6ab9d559f1779b0945d52370727a4d8c91f9f735a35485d9daccd23d6.lean/declarations/miu-der--be39f5d4d45a293dc1ffa15b.md) | 181 | `result-track:be39f5d4d45a293dc1ffa15b4292251dfeb7afb6f44e599675f1d57b31ecf0ab` |
| 16 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant9394e5a6ab9d559f1779b0945d52370727a4d8c91f9f735a35485d9daccd23d6.lean/declarations/example--6500343154efc1a13b5d895b.md) | 186 | `declaration-track:6500343154efc1a13b5d895ba5a560d6a6727ee0926a2a1a80446f86524ad0cc` |
| 17 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant9394e5a6ab9d559f1779b0945d52370727a4d8c91f9f735a35485d9daccd23d6.lean/declarations/example--cb3781d5550adc8ae9ba3829.md) | 190 | `declaration-track:cb3781d5550adc8ae9ba3829fc8fdb8aa31c94c0c35573d1aff50ea24279e634` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
