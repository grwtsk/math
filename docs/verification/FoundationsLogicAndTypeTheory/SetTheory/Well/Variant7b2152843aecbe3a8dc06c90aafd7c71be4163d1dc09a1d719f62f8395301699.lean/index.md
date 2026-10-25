# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.Well.Variant7b2152843aecbe3a8dc06c90aafd7c71be4163d1dc09a1d719f62f8395301699

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7145372a06606baccb12e5a6cc49dc1e1e4f564b",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Well/Variant7b2152843aecbe3a8dc06c90aafd7c71be4163d1dc09a1d719f62f8395301699.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Well/Variant7b2152843aecbe3a8dc06c90aafd7c71be4163d1dc09a1d719f62f8395301699.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Well/Variant7b2152843aecbe3a8dc06c90aafd7c71be4163d1dc09a1d719f62f8395301699.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7145372a06606baccb12e5a6cc49dc1e1e4f564b`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Well/Variant7b2152843aecbe3a8dc06c90aafd7c71be4163d1dc09a1d719f62f8395301699.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/SetTheory/Well/Variant7b2152843aecbe3a8dc06c90aafd7c71be4163d1dc09a1d719f62f8395301699.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Prod.Lex` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.SetTheory.Ordinal.Rank` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [wellOrderExtension](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Well/Variant7b2152843aecbe3a8dc06c90aafd7c71be4163d1dc09a1d719f62f8395301699.lean/declarations/wellorderextension--980d21925d7111a5008b25c6.md) | 63 | `declaration-track:980d21925d7111a5008b25c6ffd44185e809e9b7ae0512f3029d5ab0b3556821` |
| 2 | `instance` | [wellOrderExtension.isWellFounded_lt](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Well/Variant7b2152843aecbe3a8dc06c90aafd7c71be4163d1dc09a1d719f62f8395301699.lean/declarations/wellorderextension-iswellfounded-lt--4d1959817ceeb6f46d4266c3.md) | 67 | `declaration-track:4d1959817ceeb6f46d4266c3b52845146ddcea8ecf4a17bc009b50a4e25efeeb` |
| 3 | `instance` | [wellOrderExtension.isWellOrder_lt](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Well/Variant7b2152843aecbe3a8dc06c90aafd7c71be4163d1dc09a1d719f62f8395301699.lean/declarations/wellorderextension-iswellorder-lt--179466c95499c57b5cf5096c.md) | 71 | `declaration-track:179466c95499c57b5cf5096c54a0e0e70f6184fc6b111e4da0bbfee0476a0338` |
| 4 | `theorem` | [exists_well_order_ge](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Well/Variant7b2152843aecbe3a8dc06c90aafd7c71be4163d1dc09a1d719f62f8395301699.lean/declarations/exists-well-order-ge--db1df9e9cbba832fdf6e347c.md) | 74 | `result-track:db1df9e9cbba832fdf6e347c7968e9aeca94c70148415d8888b9a58ac8d260da` |
| 5 | `def` | [WellOrderExtension](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Well/Variant7b2152843aecbe3a8dc06c90aafd7c71be4163d1dc09a1d719f62f8395301699.lean/declarations/wellorderextension--6cf4424b68d0d6b594491a44.md) | 80 | `declaration-track:6cf4424b68d0d6b594491a449abbb796a0016d2a9fa4887696fba3337a46a795` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Well/Variant7b2152843aecbe3a8dc06c90aafd7c71be4163d1dc09a1d719f62f8395301699.lean/declarations/instance--6b15ad0c9f750452ad3d25eb.md) | 82 | `declaration-track:6b15ad0c9f750452ad3d25eb91bf7004c8ec3bf07edc34b0a22ae59f71cd28df` |
| 7 | `def` | [toWellOrderExtension](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Well/Variant7b2152843aecbe3a8dc06c90aafd7c71be4163d1dc09a1d719f62f8395301699.lean/declarations/towellorderextension--806e168f8f6f4d769b4cb3ee.md) | 85 | `declaration-track:806e168f8f6f4d769b4cb3eeb2008b501413d84c6172d5e3b1931e2fe1edb031` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Well/Variant7b2152843aecbe3a8dc06c90aafd7c71be4163d1dc09a1d719f62f8395301699.lean/declarations/instance--aea6b92d7885d28c707df79a.md) | 88 | `declaration-track:aea6b92d7885d28c707df79a0b72b637e6b18b6ec2798e96cda0fa7c51639c5e` |
| 9 | `instance` | [WellOrderExtension.wellFoundedLT](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Well/Variant7b2152843aecbe3a8dc06c90aafd7c71be4163d1dc09a1d719f62f8395301699.lean/declarations/wellorderextension-wellfoundedlt--2106762fc56ff539108f66cc.md) | 91 | `declaration-track:2106762fc56ff539108f66cccaa01d7098fa1271c0cb5a6a45fc7cca42c9eae5` |
| 10 | `theorem` | [toWellOrderExtension_strictMono](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Well/Variant7b2152843aecbe3a8dc06c90aafd7c71be4163d1dc09a1d719f62f8395301699.lean/declarations/towellorderextension-strictmono--b3f53cf3c5dd73568e3527d3.md) | 95 | `result-track:b3f53cf3c5dd73568e3527d34f3b42abe4257755a74abc0a47938936460e6b32` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
