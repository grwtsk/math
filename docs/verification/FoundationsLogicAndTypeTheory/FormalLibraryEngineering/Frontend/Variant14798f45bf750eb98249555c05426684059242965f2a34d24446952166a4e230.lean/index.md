# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Frontend.Variant14798f45bf750eb98249555c05426684059242965f2a34d24446952166a4e230

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d6b6e911dae4bd2d26c487f79c54ddfac25f0528",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variant14798f45bf750eb98249555c05426684059242965f2a34d24446952166a4e230.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variant14798f45bf750eb98249555c05426684059242965f2a34d24446952166a4e230.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variant14798f45bf750eb98249555c05426684059242965f2a34d24446952166a4e230.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d6b6e911dae4bd2d26c487f79c54ddfac25f0528`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variant14798f45bf750eb98249555c05426684059242965f2a34d24446952166a4e230.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variant14798f45bf750eb98249555c05426684059242965f2a34d24446952166a4e230.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Control.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.HashMap` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Linarith.Verification` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Linarith.Preprocessing` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [getContrLemma](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variant14798f45bf750eb98249555c05426684059242965f2a34d24446952166a4e230.lean/declarations/getcontrlemma--e4117caafe259c74d166281c.md) | 137 | `declaration-track:e4117caafe259c74d166281c445d20ad475abf0efca8b971d45ef3fe29b7ea24` |
| 2 | `def` | [applyContrLemma](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variant14798f45bf750eb98249555c05426684059242965f2a34d24446952166a4e230.lean/declarations/applycontrlemma--5fe37d34b58a9736b506c158.md) | 162 | `declaration-track:5fe37d34b58a9736b506c158beecbbc1c4bd1fd908cdfd672a92caa21a2571e1` |
| 3 | `abbrev` | [ExprMultiMap](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variant14798f45bf750eb98249555c05426684059242965f2a34d24446952166a4e230.lean/declarations/exprmultimap--898ad04625f1ee4df82b3e3b.md) | 172 | `declaration-track:898ad04625f1ee4df82b3e3b661319841483cb46498ad326684ea41340ba290e` |
| 4 | `def` | [ExprMultiMap.find](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variant14798f45bf750eb98249555c05426684059242965f2a34d24446952166a4e230.lean/declarations/exprmultimap-find--66b59ae0f4d5b0051d94ecf4.md) | 176 | `declaration-track:66b59ae0f4d5b0051d94ecf40a83ea7c7db8205c095fe67c201bcc25745e5056` |
| 5 | `def` | [ExprMultiMap.insert](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variant14798f45bf750eb98249555c05426684059242965f2a34d24446952166a4e230.lean/declarations/exprmultimap-insert--32c4eebbe4e103ede6ce6436.md) | 185 | `declaration-track:32c4eebbe4e103ede6ce64366c1e7300416ad1736e111991a950931bf00c9926` |
| 6 | `def` | [partitionByType](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variant14798f45bf750eb98249555c05426684059242965f2a34d24446952166a4e230.lean/declarations/partitionbytype--b46c0f6f7402f8b3a027d2e1.md) | 196 | `declaration-track:b46c0f6f7402f8b3a027d2e13eedae52fb5b3444a6003f45091c9214cc3c554a` |
| 7 | `def` | [findLinarithContradiction](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variant14798f45bf750eb98249555c05426684059242965f2a34d24446952166a4e230.lean/declarations/findlinarithcontradiction--2067f7147681012fe2c19b39.md) | 204 | `declaration-track:2067f7147681012fe2c19b39b59edd895c0594cd58882bdbd46e91d148384581` |
| 8 | `def` | [runLinarith](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variant14798f45bf750eb98249555c05426684059242965f2a34d24446952166a4e230.lean/declarations/runlinarith--88a213564142689cbc02f723.md) | 222 | `declaration-track:88a213564142689cbc02f7235d5c558e95c7770a9a0bd397dea591058e2f088c` |
| 9 | `def` | [linarith](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variant14798f45bf750eb98249555c05426684059242965f2a34d24446952166a4e230.lean/declarations/linarith--75868b2be2f9553395f99a12.md) | 265 | `declaration-track:75868b2be2f9553395f99a12d897a44f436be7c5839a43d8d943103bdd5b819c` |
| 10 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variant14798f45bf750eb98249555c05426684059242965f2a34d24446952166a4e230.lean/declarations/syntax--fc2244c98c3887cc03d4937e.md) | 311 | `declaration-track:fc2244c98c3887cc03d4937e379185dcbb292be006cf4e3493519ab122ab34de` |
| 11 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variant14798f45bf750eb98249555c05426684059242965f2a34d24446952166a4e230.lean/declarations/syntax--95fe9b917552efcb132cbaaa.md) | 365 | `declaration-track:95fe9b917552efcb132cbaaa27c8c727f66c0d06e57492d1fc62c2bde4c803c2` |
| 12 | `macro` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variant14798f45bf750eb98249555c05426684059242965f2a34d24446952166a4e230.lean/declarations/macro--b7f470f6f5eee5c9a829a32d.md) | 367 | `declaration-track:b7f470f6f5eee5c9a829a32d5d5e4c9926f579b3eca7b9c384ba3af1581ce7d5` |
| 13 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variant14798f45bf750eb98249555c05426684059242965f2a34d24446952166a4e230.lean/declarations/syntax--5d0c9620072e89ef5d4494f9.md) | 382 | `declaration-track:5d0c9620072e89ef5d4494f9f4a665030a9b974787ea92e8bf0c7b1149535731` |
| 14 | `macro` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variant14798f45bf750eb98249555c05426684059242965f2a34d24446952166a4e230.lean/declarations/macro--13856c46a442c5b7135a7b0c.md) | 383 | `declaration-track:13856c46a442c5b7135a7b0ccfa3f9b7a881e061a864d6f708e9bd03cc53c54b` |
| 15 | `elab_rules` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variant14798f45bf750eb98249555c05426684059242965f2a34d24446952166a4e230.lean/declarations/elab-rules--eb08c4bcd1959b4d9d1e44ee.md) | 391 | `declaration-track:eb08c4bcd1959b4d9d1e44eef86e8345556d5e493b4aed3f8da633bd4be0720e` |
| 16 | `elab_rules` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variant14798f45bf750eb98249555c05426684059242965f2a34d24446952166a4e230.lean/declarations/elab-rules--020c11b62d15179a730ffe26.md) | 410 | `declaration-track:020c11b62d15179a730ffe265c8576f96e4b3d408846448bff2eec558d3c054b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
