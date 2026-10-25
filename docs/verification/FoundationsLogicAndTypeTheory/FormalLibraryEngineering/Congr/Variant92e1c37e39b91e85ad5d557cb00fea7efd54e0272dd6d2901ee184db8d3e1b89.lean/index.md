# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Congr.Variant92e1c37e39b91e85ad5d557cb00fea7efd54e0272dd6d2901ee184db8d3e1b89

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "12c00219e206e649a9e42f10c3ce6859ea7226e6",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Congr/Variant92e1c37e39b91e85ad5d557cb00fea7efd54e0272dd6d2901ee184db8d3e1b89.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Congr/Variant92e1c37e39b91e85ad5d557cb00fea7efd54e0272dd6d2901ee184db8d3e1b89.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Congr/Variant92e1c37e39b91e85ad5d557cb00fea7efd54e0272dd6d2901ee184db8d3e1b89.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `12c00219e206e649a9e42f10c3ce6859ea7226e6`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Congr/Variant92e1c37e39b91e85ad5d557cb00fea7efd54e0272dd6d2901ee184db8d3e1b89.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Congr/Variant92e1c37e39b91e85ad5d557cb00fea7efd54e0272dd6d2901ee184db8d3e1b89.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Meta.Tactic.Congr` — import line 11; external provider; requires a separately pinned dependency.
- `Std.Tactic.RCases` — import line 12; external provider; requires a separately pinned dependency.
- `Std.Tactic.Ext` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Congr.Config](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Congr/Variant92e1c37e39b91e85ad5d557cb00fea7efd54e0272dd6d2901ee184db8d3e1b89.lean/declarations/congr-config--c97f64b12e5f4b3bfc4bdd7b.md) | 24 | `declaration-track:c97f64b12e5f4b3bfc4bdd7b3c58d394f8e6c0c9586ea52e8b22a5d8d49cab47` |
| 2 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Congr/Variant92e1c37e39b91e85ad5d557cb00fea7efd54e0272dd6d2901ee184db8d3e1b89.lean/declarations/syntax--00726c3ac7c737beb6b33217.md) | 36 | `declaration-track:00726c3ac7c737beb6b33217fcfeb41c7568901439b38a013e351a002029e8e9` |
| 3 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Congr/Variant92e1c37e39b91e85ad5d557cb00fea7efd54e0272dd6d2901ee184db8d3e1b89.lean/declarations/syntax--a15c91e90ebc769024bd1311.md) | 50 | `declaration-track:a15c91e90ebc769024bd13116c4e920b42d13de7f7c177087da21ddbdc8d9684` |
| 4 | `elab_rules` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Congr/Variant92e1c37e39b91e85ad5d557cb00fea7efd54e0272dd6d2901ee184db8d3e1b89.lean/declarations/elab-rules--4727a6d9425c917ddbbb4991.md) | 53 | `declaration-track:4727a6d9425c917ddbbb49918613cead7d9a1c611faf85253e3ee45df5bda2c0` |
| 5 | `macro_rules` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Congr/Variant92e1c37e39b91e85ad5d557cb00fea7efd54e0272dd6d2901ee184db8d3e1b89.lean/declarations/macro-rules--58b96ad4d7f84bc8737c9a14.md) | 61 | `declaration-track:58b96ad4d7f84bc8737c9a146f324d8022b4f5f67b87b1353b7a12b3cd8fe784` |
| 6 | `def` | [rcongrCore](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Congr/Variant92e1c37e39b91e85ad5d557cb00fea7efd54e0272dd6d2901ee184db8d3e1b89.lean/declarations/rcongrcore--a8115ec2c1fcd7e0dbcae46a.md) | 71 | `declaration-track:a8115ec2c1fcd7e0dbcae46aae8555d458639c6803faf12d92a7472d770938e7` |
| 7 | `elab` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Congr/Variant92e1c37e39b91e85ad5d557cb00fea7efd54e0272dd6d2901ee184db8d3e1b89.lean/declarations/elab--d4ed2932ad9d5d304cab9b59.md) | 112 | `declaration-track:d4ed2932ad9d5d304cab9b592e4d3defaf8296b7f6d623a6dc62a16f119a3697` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
