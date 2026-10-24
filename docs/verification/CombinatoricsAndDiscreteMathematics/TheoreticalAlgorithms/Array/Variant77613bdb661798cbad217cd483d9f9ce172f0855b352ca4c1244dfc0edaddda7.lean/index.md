# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Array.Variant77613bdb661798cbad217cd483d9f9ce172f0855b352ca4c1244dfc0edaddda7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c231f893cdb1981c42d788a2c60bba9103354a77",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Array/Variant77613bdb661798cbad217cd483d9f9ce172f0855b352ca4c1244dfc0edaddda7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Array/Variant77613bdb661798cbad217cd483d9f9ce172f0855b352ca4c1244dfc0edaddda7.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Array/Variant77613bdb661798cbad217cd483d9f9ce172f0855b352ca4c1244dfc0edaddda7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c231f893cdb1981c42d788a2c60bba9103354a77`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Array/Variant77613bdb661798cbad217cd483d9f9ce172f0855b352ca4c1244dfc0edaddda7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Array/Variant77613bdb661798cbad217cd483d9f9ce172f0855b352ca4c1244dfc0edaddda7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Omega` — import line 10; external provider; requires a separately pinned dependency.
- `Init.ByCases` — import line 11; external provider; requires a separately pinned dependency.
- `Init.Data.Array.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Init.WFTactics` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [compareLex](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Array/Variant77613bdb661798cbad217cd483d9f9ce172f0855b352ca4c1244dfc0edaddda7.lean/declarations/comparelex--ed8b7145ca11590092901fba.md) | 20 | `declaration-track:ed8b7145ca11590092901fbaef6b963e2665e23374e7c7801745369c163e4dca` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Array/Variant77613bdb661798cbad217cd483d9f9ce172f0855b352ca4c1244dfc0edaddda7.lean/declarations/instance--191bad3b0954c131e9b273f0.md) | 34 | `declaration-track:191bad3b0954c131e9b273f074a944289a57e17c3d8e38111b7e2f51c6a43498` |
| 3 | `theorem` | [compare_eq_compareLex](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Array/Variant77613bdb661798cbad217cd483d9f9ce172f0855b352ca4c1244dfc0edaddda7.lean/declarations/compare-eq-comparelex--57db1a72e401e1d9f86521a7.md) | 37 | `result-track:57db1a72e401e1d9f86521a7dde19a2ce2614f2dfcebcd6e082ffe5eccb403b7` |
| 4 | `theorem` | [compareLex.go_succ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Array/Variant77613bdb661798cbad217cd483d9f9ce172f0855b352ca4c1244dfc0edaddda7.lean/declarations/comparelex-go-succ--bd67b248778c767fd73e155f.md) | 40 | `result-track:bd67b248778c767fd73e155fa31c4ef624a738154c630f3b9735c8f2efbd2071` |
| 5 | `theorem` | [_root_.List.compareLex_eq_compareLex_toArray](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Array/Variant77613bdb661798cbad217cd483d9f9ce172f0855b352ca4c1244dfc0edaddda7.lean/declarations/root-list-comparelex-eq-comparelex-toarray--2d74a656c0a5ccbeb5b26d29.md) | 49 | `result-track:2d74a656c0a5ccbeb5b26d29ae28a6eb8bde2b95f70d97cd5d90fe46d4ee3f5c` |
| 6 | `theorem` | [_root_.List.compare_eq_compare_toArray](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Array/Variant77613bdb661798cbad217cd483d9f9ce172f0855b352ca4c1244dfc0edaddda7.lean/declarations/root-list-compare-eq-compare-toarray--8e6e3978ef86159e0d2051e9.md) | 65 | `result-track:8e6e3978ef86159e0d2051e9faa749175f9a5569e433740d9599a65ab18074c2` |
| 7 | `theorem` | [compareLex_eq_compareLex_toList](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Array/Variant77613bdb661798cbad217cd483d9f9ce172f0855b352ca4c1244dfc0edaddda7.lean/declarations/comparelex-eq-comparelex-tolist--5f128362fb24a9c41819bf89.md) | 69 | `result-track:5f128362fb24a9c41819bf89563b6ee5207833d042421de87376b2fd31f5307c` |
| 8 | `theorem` | [compare_eq_compare_toList](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Array/Variant77613bdb661798cbad217cd483d9f9ce172f0855b352ca4c1244dfc0edaddda7.lean/declarations/compare-eq-compare-tolist--d8452e78f8660c89083463ee.md) | 73 | `result-track:d8452e78f8660c89083463ee1b18e2fc746a682e44e10a2ede525435c0105fe9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
