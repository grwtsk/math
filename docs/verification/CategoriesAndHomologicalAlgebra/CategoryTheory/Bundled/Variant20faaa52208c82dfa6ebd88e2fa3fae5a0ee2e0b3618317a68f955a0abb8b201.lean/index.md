# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Bundled.Variant20faaa52208c82dfa6ebd88e2fa3fae5a0ee2e0b3618317a68f955a0abb8b201

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "996cf0b6236a2b200c279090223f2114bcf87b31",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Bundled/Variant20faaa52208c82dfa6ebd88e2fa3fae5a0ee2e0b3618317a68f955a0abb8b201.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bundled/Variant20faaa52208c82dfa6ebd88e2fa3fae5a0ee2e0b3618317a68f955a0abb8b201.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bundled/Variant20faaa52208c82dfa6ebd88e2fa3fae5a0ee2e0b3618317a68f955a0abb8b201.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `996cf0b6236a2b200c279090223f2114bcf87b31`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Bundled/Variant20faaa52208c82dfa6ebd88e2fa3fae5a0ee2e0b3618317a68f955a0abb8b201.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Bundled/Variant20faaa52208c82dfa6ebd88e2fa3fae5a0ee2e0b3618317a68f955a0abb8b201.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Init` — import line 11; external provider; requires a separately pinned dependency.
- `Batteries.Tactic.Lint.Misc` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Bundled](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bundled/Variant20faaa52208c82dfa6ebd88e2fa3fae5a0ee2e0b3618317a68f955a0abb8b201.lean/declarations/bundled--fe945311fa9bc5d2106ecd91.md) | 37 | `declaration-track:fe945311fa9bc5d2106ecd910c6ab2811eaf78a07ad7a4a042408b0ff5eae04d` |
| 2 | `def` | [of](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bundled/Variant20faaa52208c82dfa6ebd88e2fa3fae5a0ee2e0b3618317a68f955a0abb8b201.lean/declarations/of--cefdb9a9323d853bdd311325.md) | 54 | `declaration-track:cefdb9a9323d853bdd3113259ba8b10e1fbb28ce16c12c3070a690864442d915` |
| 3 | `instance` | [coeSort](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bundled/Variant20faaa52208c82dfa6ebd88e2fa3fae5a0ee2e0b3618317a68f955a0abb8b201.lean/declarations/coesort--f41be8685f1d7cdfdcf81e8e.md) | 57 | `declaration-track:f41be8685f1d7cdfdcf81e8e1837a9b7ebe1258028232817ea8c11eae50e2eaf` |
| 4 | `theorem` | [coe_mk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bundled/Variant20faaa52208c82dfa6ebd88e2fa3fae5a0ee2e0b3618317a68f955a0abb8b201.lean/declarations/coe-mk--c872b92108f2281333279bb5.md) | 60 | `result-track:c872b92108f2281333279bb5a4e78ee4354cba3523e9948532d7a2e468cabbe4` |
| 5 | `abbrev` | [map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bundled/Variant20faaa52208c82dfa6ebd88e2fa3fae5a0ee2e0b3618317a68f955a0abb8b201.lean/declarations/map--46de390e94024672b0021a1b.md) | 64 | `declaration-track:46de390e94024672b0021a1bf16c9f1ffbbaaa05344231a90d9e15b50208c38e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
