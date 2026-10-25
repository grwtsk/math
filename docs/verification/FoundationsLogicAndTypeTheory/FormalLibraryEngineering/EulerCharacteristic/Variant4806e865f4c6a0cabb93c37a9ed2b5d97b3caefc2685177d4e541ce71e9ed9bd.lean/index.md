# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.EulerCharacteristic.Variant4806e865f4c6a0cabb93c37a9ed2b5d97b3caefc2685177d4e541ce71e9ed9bd

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6e21f6fded9af2ec9b3b1d060ab8570cdd1220db",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EulerCharacteristic/Variant4806e865f4c6a0cabb93c37a9ed2b5d97b3caefc2685177d4e541ce71e9ed9bd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EulerCharacteristic/Variant4806e865f4c6a0cabb93c37a9ed2b5d97b3caefc2685177d4e541ce71e9ed9bd.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EulerCharacteristic/Variant4806e865f4c6a0cabb93c37a9ed2b5d97b3caefc2685177d4e541ce71e9ed9bd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6e21f6fded9af2ec9b3b1d060ab8570cdd1220db`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EulerCharacteristic/Variant4806e865f4c6a0cabb93c37a9ed2b5d97b3caefc2685177d4e541ce71e9ed9bd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EulerCharacteristic/Variant4806e865f4c6a0cabb93c37a9ed2b5d97b3caefc2685177d4e541ce71e9ed9bd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.DerivedSheaf.SectionComplex` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [CohomologyRankData](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EulerCharacteristic/Variant4806e865f4c6a0cabb93c37a9ed2b5d97b3caefc2685177d4e541ce71e9ed9bd.lean/declarations/cohomologyrankdata--abaa23f7b82b63b274a102a0.md) | 26 | `declaration-track:abaa23f7b82b63b274a102a007819a20f8f7ead6ab1b4f7aa5e4104ce63faaa6` |
| 2 | `def` | [SignedRank](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EulerCharacteristic/Variant4806e865f4c6a0cabb93c37a9ed2b5d97b3caefc2685177d4e541ce71e9ed9bd.lean/declarations/signedrank--a526316218c97a0df0e4a931.md) | 32 | `declaration-track:a526316218c97a0df0e4a931603765a9f1bd2e1f6d9117017feff72c7e3c5b2b` |
| 3 | `structure` | [EulerCharacteristic](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EulerCharacteristic/Variant4806e865f4c6a0cabb93c37a9ed2b5d97b3caefc2685177d4e541ce71e9ed9bd.lean/declarations/eulercharacteristic--d0f7780d6e123a36ed2f58ec.md) | 37 | `declaration-track:d0f7780d6e123a36ed2f58ec9a3e3c03ead8f85f62779e534fd8fdaf910f6a83` |
| 4 | `theorem` | [euler_characteristic_signed_sum](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EulerCharacteristic/Variant4806e865f4c6a0cabb93c37a9ed2b5d97b3caefc2685177d4e541ce71e9ed9bd.lean/declarations/euler-characteristic-signed-sum--50b8ce228e9fc22aec1dfa4b.md) | 44 | `result-track:50b8ce228e9fc22aec1dfa4b6825ecdff574285673180012c1dff7e7026fdd25` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
