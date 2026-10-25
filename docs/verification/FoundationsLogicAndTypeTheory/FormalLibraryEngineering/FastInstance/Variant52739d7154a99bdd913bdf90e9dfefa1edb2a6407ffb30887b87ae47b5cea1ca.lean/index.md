# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FastInstance.Variant52739d7154a99bdd913bdf90e9dfefa1edb2a6407ffb30887b87ae47b5cea1ca

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "45ae5c3925ff18d7cd0eff5d9c2347f3be2993aa",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FastInstance/Variant52739d7154a99bdd913bdf90e9dfefa1edb2a6407ffb30887b87ae47b5cea1ca.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FastInstance/Variant52739d7154a99bdd913bdf90e9dfefa1edb2a6407ffb30887b87ae47b5cea1ca.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FastInstance/Variant52739d7154a99bdd913bdf90e9dfefa1edb2a6407ffb30887b87ae47b5cea1ca.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `45ae5c3925ff18d7cd0eff5d9c2347f3be2993aa`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FastInstance/Variant52739d7154a99bdd913bdf90e9dfefa1edb2a6407ffb30887b87ae47b5cea1ca.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FastInstance/Variant52739d7154a99bdd913bdf90e9dfefa1edb2a6407ffb30887b87ae47b5cea1ca.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Elab.SyntheticMVars` — import line 7; external provider; requires a separately pinned dependency.
- `Lean` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Init` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FastInstance/Variant52739d7154a99bdd913bdf90e9dfefa1edb2a6407ffb30887b87ae47b5cea1ca.lean/declarations/initialize--12b0b3714f18560ca66bccd0.md) | 18 | `declaration-track:12b0b3714f18560ca66bccd093f6a339acfbceb982d6a6093e2f66e38547ad03` |
| 2 | `def` | [error](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FastInstance/Variant52739d7154a99bdd913bdf90e9dfefa1edb2a6407ffb30887b87ae47b5cea1ca.lean/declarations/error--a3811e476254ee532b00bab4.md) | 25 | `declaration-track:a3811e476254ee532b00bab4cf9d661e2bafc433413882b4be369895152dc09d` |
| 3 | `def` | [makeFastInstance](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FastInstance/Variant52739d7154a99bdd913bdf90e9dfefa1edb2a6407ffb30887b87ae47b5cea1ca.lean/declarations/makefastinstance--5fcd9f0b05db9729c0c46862.md) | 42 | `declaration-track:5fcd9f0b05db9729c0c4686225da93e81d67bc4af60e3456172e5080fc36e8b5` |
| 4 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FastInstance/Variant52739d7154a99bdd913bdf90e9dfefa1edb2a6407ffb30887b87ae47b5cea1ca.lean/declarations/syntax--45b40f4abd4dd0d50fe19b8c.md) | 118 | `declaration-track:45b40f4abd4dd0d50fe19b8c19adb592abe20d41d724cca6cdd7aa7a3fa4bfef` |
| 5 | `def` | [elabFastInstance](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FastInstance/Variant52739d7154a99bdd913bdf90e9dfefa1edb2a6407ffb30887b87ae47b5cea1ca.lean/declarations/elabfastinstance--e2c822345c20a232e6c902b1.md) | 121 | `declaration-track:e2c822345c20a232e6c902b19e7d86144fbdf169857153419518950a7aaec6b9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
