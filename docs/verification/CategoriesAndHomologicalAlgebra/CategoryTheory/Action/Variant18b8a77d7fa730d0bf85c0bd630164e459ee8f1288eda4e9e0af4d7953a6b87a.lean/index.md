# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Action.Variant18b8a77d7fa730d0bf85c0bd630164e459ee8f1288eda4e9e0af4d7953a6b87a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5a67e99b52a764ee70f2ed140b9130f0c24060e4",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Action/Variant18b8a77d7fa730d0bf85c0bd630164e459ee8f1288eda4e9e0af4d7953a6b87a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Action/Variant18b8a77d7fa730d0bf85c0bd630164e459ee8f1288eda4e9e0af4d7953a6b87a.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Action/Variant18b8a77d7fa730d0bf85c0bd630164e459ee8f1288eda4e9e0af4d7953a6b87a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5a67e99b52a764ee70f2ed140b9130f0c24060e4`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Action/Variant18b8a77d7fa730d0bf85c0bd630164e459ee8f1288eda4e9e0af4d7953a6b87a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Action/Variant18b8a77d7fa730d0bf85c0bd630164e459ee8f1288eda4e9e0af4d7953a6b87a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Galois.Examples` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Galois.Prorepresentability` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [functorToAction](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Action/Variant18b8a77d7fa730d0bf85c0bd630164e459ee8f1288eda4e9e0af4d7953a6b87a.lean/declarations/functortoaction--289f7f19661606a6c4dc4cde.md) | 33 | `declaration-track:289f7f19661606a6c4dc4cde8816f1e1c0af50fa160741a7259a90eedd87782e` |
| 2 | `lemma` | [functorToAction_comp_forget₂_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Action/Variant18b8a77d7fa730d0bf85c0bd630164e459ee8f1288eda4e9e0af4d7953a6b87a.lean/declarations/functortoaction-comp-forget-eq--893fbc65f18026f7ce51371f.md) | 40 | `result-track:893fbc65f18026f7ce51371f8bae475d8558834812d81870e0adab97419c4ea4` |
| 3 | `lemma` | [functorToAction_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Action/Variant18b8a77d7fa730d0bf85c0bd630164e459ee8f1288eda4e9e0af4d7953a6b87a.lean/declarations/functortoaction-map--f6bbc28fa36fc92e285fed4b.md) | 43 | `result-track:f6bbc28fa36fc92e285fed4bccf98d92c552ddf3879511700cdf4d342d76d5fb` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Action/Variant18b8a77d7fa730d0bf85c0bd630164e459ee8f1288eda4e9e0af4d7953a6b87a.lean/declarations/instance--675d5c5de8cde681d5488b50.md) | 46 | `declaration-track:675d5c5de8cde681d5488b50558dd7da5b56fcd5aff5e670b07826d3f4c1d531` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Action/Variant18b8a77d7fa730d0bf85c0bd630164e459ee8f1288eda4e9e0af4d7953a6b87a.lean/declarations/instance--4e8cf7d7024dab1e72168810.md) | 51 | `declaration-track:4e8cf7d7024dab1e721688103988848caefa4ea4f95d83010b2987666656c7a4` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Action/Variant18b8a77d7fa730d0bf85c0bd630164e459ee8f1288eda4e9e0af4d7953a6b87a.lean/declarations/instance--da9ba7ac7f4c150f699180a9.md) | 54 | `declaration-track:da9ba7ac7f4c150f699180a90930f95db8fd88fe8c37a76827561844e5f9bd37` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Action/Variant18b8a77d7fa730d0bf85c0bd630164e459ee8f1288eda4e9e0af4d7953a6b87a.lean/declarations/instance--99b6848c0bc9f3f7ecbad12c.md) | 59 | `declaration-track:99b6848c0bc9f3f7ecbad12c3d0d28153e46a9aa0c8004f1e8f972540a4a9a3c` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Action/Variant18b8a77d7fa730d0bf85c0bd630164e459ee8f1288eda4e9e0af4d7953a6b87a.lean/declarations/instance--474d8b0971de07197d8a192f.md) | 64 | `declaration-track:474d8b0971de07197d8a192fc9e53120e9d137c910c396ff331ce9620b15c198` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Action/Variant18b8a77d7fa730d0bf85c0bd630164e459ee8f1288eda4e9e0af4d7953a6b87a.lean/declarations/instance--504fb9cd80a72f11d0c626b6.md) | 66 | `declaration-track:504fb9cd80a72f11d0c626b644106ac13aeb7f17c23e06c588b12505ee59176b` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Action/Variant18b8a77d7fa730d0bf85c0bd630164e459ee8f1288eda4e9e0af4d7953a6b87a.lean/declarations/instance--31f9380f7ecc4e53e4f9d493.md) | 71 | `declaration-track:31f9380f7ecc4e53e4f9d493360a9865d9c1f2d1d53de74eb8223442cbd88e93` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Action/Variant18b8a77d7fa730d0bf85c0bd630164e459ee8f1288eda4e9e0af4d7953a6b87a.lean/declarations/instance--47d39802ecb549b46f2272dd.md) | 75 | `declaration-track:47d39802ecb549b46f2272ddd96636fa1e981911189412f80f147b68a7aa6e6c` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Action/Variant18b8a77d7fa730d0bf85c0bd630164e459ee8f1288eda4e9e0af4d7953a6b87a.lean/declarations/instance--fef8faec9133843b8c97194a.md) | 79 | `declaration-track:fef8faec9133843b8c97194a42084dd4bcb414961dc515e362ff0ab95af180d9` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Action/Variant18b8a77d7fa730d0bf85c0bd630164e459ee8f1288eda4e9e0af4d7953a6b87a.lean/declarations/instance--29efa75f9728d8ebb4c95a52.md) | 84 | `declaration-track:29efa75f9728d8ebb4c95a525dcb8b62b1b9ba80663f213b95318f36a52de11a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
