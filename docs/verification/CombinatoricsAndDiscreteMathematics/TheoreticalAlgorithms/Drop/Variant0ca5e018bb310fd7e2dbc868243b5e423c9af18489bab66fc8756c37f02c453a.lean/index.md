# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Drop.Variant0ca5e018bb310fd7e2dbc868243b5e423c9af18489bab66fc8756c37f02c453a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "75c09ef28a6a37b7e427dadae8b94526dea6b359",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Drop/Variant0ca5e018bb310fd7e2dbc868243b5e423c9af18489bab66fc8756c37f02c453a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Drop/Variant0ca5e018bb310fd7e2dbc868243b5e423c9af18489bab66fc8756c37f02c453a.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Drop/Variant0ca5e018bb310fd7e2dbc868243b5e423c9af18489bab66fc8756c37f02c453a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `75c09ef28a6a37b7e427dadae8b94526dea6b359`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Drop/Variant0ca5e018bb310fd7e2dbc868243b5e423c9af18489bab66fc8756c37f02c453a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Drop/Variant0ca5e018bb310fd7e2dbc868243b5e423c9af18489bab66fc8756c37f02c453a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Array.Lemmas` — import line 17; external provider; requires a separately pinned dependency.
- `Init.Data.Iterators.Lemmas.Basic` — import line 18; external provider; requires a separately pinned dependency.
- `Init.Data.Iterators.Lemmas.Consumers.Access` — import line 19; external provider; requires a separately pinned dependency.
- `Init.Data.Iterators.Lemmas.Consumers.Collect` — import line 20; external provider; requires a separately pinned dependency.
- `Init.Data.List.Nat.TakeDrop` — import line 21; external provider; requires a separately pinned dependency.
- `Init.Data.Option.Lemmas` — import line 22; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Iter.drop_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Drop/Variant0ca5e018bb310fd7e2dbc868243b5e423c9af18489bab66fc8756c37f02c453a.lean/declarations/iter-drop-eq--f72d9fd38c4dfc1f2e1baa49.md) | 32 | `result-track:f72d9fd38c4dfc1f2e1baa4949b778a260eeabbdc3477c046410b7b241a6f398` |
| 2 | `theorem` | [Iter.step_drop](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Drop/Variant0ca5e018bb310fd7e2dbc868243b5e423c9af18489bab66fc8756c37f02c453a.lean/declarations/iter-step-drop--6403649fc7627eaa4a1389f7.md) | 37 | `result-track:6403649fc7627eaa4a1389f7b4e563fc828fa0be3b7080c1feff1fdc40e41999` |
| 3 | `theorem` | [Iter.atIdxSlow?_drop](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Drop/Variant0ca5e018bb310fd7e2dbc868243b5e423c9af18489bab66fc8756c37f02c453a.lean/declarations/iter-atidxslow-drop--02e0b7e07825dfd0992f03f7.md) | 51 | `result-track:02e0b7e07825dfd0992f03f76ec4323f60d65ec07cb0febf18dbbb13fe67209f` |
| 4 | `theorem` | [Iter.toList_drop](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Drop/Variant0ca5e018bb310fd7e2dbc868243b5e423c9af18489bab66fc8756c37f02c453a.lean/declarations/iter-tolist-drop--44eeac17d385ab46ed2eb9cf.md) | 62 | `result-track:44eeac17d385ab46ed2eb9cf4b080dd9b3586ab54053f9f7123c6e05991dd4d2` |
| 5 | `theorem` | [Iter.toListRev_drop](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Drop/Variant0ca5e018bb310fd7e2dbc868243b5e423c9af18489bab66fc8756c37f02c453a.lean/declarations/iter-tolistrev-drop--7dbaac5e5ff5f343d1415a5f.md) | 70 | `result-track:7dbaac5e5ff5f343d1415a5fc49b39af8d7a2c6446907cb089f7e7875a509b40` |
| 6 | `theorem` | [Iter.toArray_drop](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Drop/Variant0ca5e018bb310fd7e2dbc868243b5e423c9af18489bab66fc8756c37f02c453a.lean/declarations/iter-toarray-drop--a28469c3ff07ad133f78f04a.md) | 76 | `result-track:a28469c3ff07ad133f78f04a3ff1305cb5a83205f4072a85aed3f559034eeeed` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
