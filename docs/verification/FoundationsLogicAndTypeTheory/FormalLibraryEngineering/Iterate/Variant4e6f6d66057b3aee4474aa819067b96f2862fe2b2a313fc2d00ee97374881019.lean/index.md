# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Iterate.Variant4e6f6d66057b3aee4474aa819067b96f2862fe2b2a313fc2d00ee97374881019

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c9b7afb96c695beb59eafc9f3a90ae9a6031bb2b",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Iterate/Variant4e6f6d66057b3aee4474aa819067b96f2862fe2b2a313fc2d00ee97374881019.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Iterate/Variant4e6f6d66057b3aee4474aa819067b96f2862fe2b2a313fc2d00ee97374881019.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Iterate/Variant4e6f6d66057b3aee4474aa819067b96f2862fe2b2a313fc2d00ee97374881019.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c9b7afb96c695beb59eafc9f3a90ae9a6031bb2b`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Iterate/Variant4e6f6d66057b3aee4474aa819067b96f2862fe2b2a313fc2d00ee97374881019.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Iterate/Variant4e6f6d66057b3aee4474aa819067b96f2862fe2b2a313fc2d00ee97374881019.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Std.Logic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [hIterateFrom](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Iterate/Variant4e6f6d66057b3aee4474aa819067b96f2862fe2b2a313fc2d00ee97374881019.lean/declarations/hiteratefrom--2d969f2c75b5dab72d947969.md) | 25 | `declaration-track:2d969f2c75b5dab72d947969f4f60c4b5d64c726d9628087c08f0c914aaf6fbf` |
| 2 | `def` | [hIterate](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Iterate/Variant4e6f6d66057b3aee4474aa819067b96f2862fe2b2a313fc2d00ee97374881019.lean/declarations/hiterate--5490a035ed25cf18914b5fd5.md) | 50 | `declaration-track:5490a035ed25cf18914b5fd52e5cf91cd927ce12b8bdbf1db60ff18d056feccd` |
| 3 | `theorem` | [hIterateFrom_elim](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Iterate/Variant4e6f6d66057b3aee4474aa819067b96f2862fe2b2a313fc2d00ee97374881019.lean/declarations/hiteratefrom-elim--6d8702f02acb3ba78efe91c4.md) | 54 | `result-track:6d8702f02acb3ba78efe91c4dc01d46d9071863079ca2248e0ff175435437c85` |
| 4 | `theorem` | [hIterate_elim](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Iterate/Variant4e6f6d66057b3aee4474aa819067b96f2862fe2b2a313fc2d00ee97374881019.lean/declarations/hiterate-elim--0d9ad677af51b9c378dc1470.md) | 82 | `result-track:0d9ad677af51b9c378dc1470e1d49ce8889e1c7280bac474779185e168f9b001` |
| 5 | `theorem` | [hIterate_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Iterate/Variant4e6f6d66057b3aee4474aa819067b96f2862fe2b2a313fc2d00ee97374881019.lean/declarations/hiterate-eq--7d263b50e63747b2bacb59bc.md) | 95 | `result-track:7d263b50e63747b2bacb59bcd28bab5747bd1c5430589a6e756fd20f4ea1d693` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
