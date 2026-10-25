# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Bit.Variantefca011b64aadfcd9d3e0532e769a7a06970a2c782755f1c2d1cd014238270de

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "80db1b572ee7205e85006af786841a7436def7c8",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bit/Variantefca011b64aadfcd9d3e0532e769a7a06970a2c782755f1c2d1cd014238270de.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bit/Variantefca011b64aadfcd9d3e0532e769a7a06970a2c782755f1c2d1cd014238270de.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bit/Variantefca011b64aadfcd9d3e0532e769a7a06970a2c782755f1c2d1cd014238270de.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `80db1b572ee7205e85006af786841a7436def7c8`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bit/Variantefca011b64aadfcd9d3e0532e769a7a06970a2c782755f1c2d1cd014238270de.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bit/Variantefca011b64aadfcd9d3e0532e769a7a06970a2c782755f1c2d1cd014238270de.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Bit](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bit/Variantefca011b64aadfcd9d3e0532e769a7a06970a2c782755f1c2d1cd014238270de.lean/declarations/bit--337ce02c4e523cfaef1c84ab.md) | 27 | `declaration-track:337ce02c4e523cfaef1c84abfc6d7aa0810eb6eaacb263ee505cc7e55b3ba0fd` |
| 2 | `def` | [zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bit/Variantefca011b64aadfcd9d3e0532e769a7a06970a2c782755f1c2d1cd014238270de.lean/declarations/zero--fc0013c4ebe814e5a8e67377.md) | 31 | `declaration-track:fc0013c4ebe814e5a8e67377d0ce5500c556e4ae7b3e2c14c4e012a07ec78c53` |
| 3 | `def` | [one](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bit/Variantefca011b64aadfcd9d3e0532e769a7a06970a2c782755f1c2d1cd014238270de.lean/declarations/one--196f55bef14ab92cdefa50b1.md) | 32 | `declaration-track:196f55bef14ab92cdefa50b1d7bffbf6c2f66a13d53198befe7e95f32f4cfeed` |
| 4 | `def` | [flip](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bit/Variantefca011b64aadfcd9d3e0532e769a7a06970a2c782755f1c2d1cd014238270de.lean/declarations/flip--12970f1a5f2f15722e2b92e1.md) | 33 | `declaration-track:12970f1a5f2f15722e2b92e1e0bdb9fd6b41fd464a4fc359a671178b537f8b81` |
| 5 | `theorem` | [flip_ne_self](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bit/Variantefca011b64aadfcd9d3e0532e769a7a06970a2c782755f1c2d1cd014238270de.lean/declarations/flip-ne-self--5b00d39f8bcb7c41b723d776.md) | 36 | `result-track:5b00d39f8bcb7c41b723d776207e1b95528f7ec33c6c96aec652028e650162cc` |
| 6 | `theorem` | [flip_flip](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bit/Variantefca011b64aadfcd9d3e0532e769a7a06970a2c782755f1c2d1cd014238270de.lean/declarations/flip-flip--93b70c94870b755093269f01.md) | 44 | `result-track:93b70c94870b755093269f01b474ca427c17071315a518d1e1cc3bc744829b6a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
