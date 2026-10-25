# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.Pi.Variantef7a0a75e50aba39f33a0e95e4b22d215765551c03481a778db0317d6c22c43a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8a2149235bccbc646327f23b0b8f0bdf6940b45d",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/Pi/Variantef7a0a75e50aba39f33a0e95e4b22d215765551c03481a778db0317d6c22c43a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/FoundationsLogicAndTypeTheory/Pi/Variantef7a0a75e50aba39f33a0e95e4b22d215765551c03481a778db0317d6c22c43a.lean/index.md) · [Full source](../../../../mathematics/FoundationsLogicAndTypeTheory/Pi/Variantef7a0a75e50aba39f33a0e95e4b22d215765551c03481a778db0317d6c22c43a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8a2149235bccbc646327f23b0b8f0bdf6940b45d`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/Pi/Variantef7a0a75e50aba39f33a0e95e4b22d215765551c03481a778db0317d6c22c43a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/Pi/Variantef7a0a75e50aba39f33a0e95e4b22d215765551c03481a778db0317d6c22c43a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Batteries.Tactic.Alias` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Int.Notation` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.TypeStar` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Util.AssertExists` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [instIntCast](../../../../mathematics/FoundationsLogicAndTypeTheory/Pi/Variantef7a0a75e50aba39f33a0e95e4b22d215765551c03481a778db0317d6c22c43a.lean/declarations/instintcast--49e094afbb0a75e9b21e159c.md) | 27 | `declaration-track:49e094afbb0a75e9b21e159c39c8a8446a37fa236523ef1dd65a79f51eee662a` |
| 2 | `theorem` | [intCast_apply](../../../../mathematics/FoundationsLogicAndTypeTheory/Pi/Variantef7a0a75e50aba39f33a0e95e4b22d215765551c03481a778db0317d6c22c43a.lean/declarations/intcast-apply--33f8a87e6acfd314d4b6f300.md) | 30 | `result-track:33f8a87e6acfd314d4b6f300fce7126a8e5c5638c2895994fa4326e12e997179` |
| 3 | `theorem` | [intCast_def](../../../../mathematics/FoundationsLogicAndTypeTheory/Pi/Variantef7a0a75e50aba39f33a0e95e4b22d215765551c03481a778db0317d6c22c43a.lean/declarations/intcast-def--e36727d69ec663a342be24ae.md) | 33 | `result-track:e36727d69ec663a342be24aeef5be969216d653ae321dfc20adf206aaf21ae30` |
| 4 | `theorem` | [Sum.elim_intCast_intCast](../../../../mathematics/FoundationsLogicAndTypeTheory/Pi/Variantef7a0a75e50aba39f33a0e95e4b22d215765551c03481a778db0317d6c22c43a.lean/declarations/sum-elim-intcast-intcast--2b37c55ab911a41f3cd243ad.md) | 39 | `result-track:2b37c55ab911a41f3cd243ad79f8533b171fd4337f67c331cb1b4738ff7b3a4c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
