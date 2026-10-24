# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Prod.Variant749b2934b62fd199bdd80d51df812e76b6187a65a6080e5e93c0d2a3c63c5b3a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "51b4dda524b2409da4be6e1673a44c1fa4ace14a",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Prod/Variant749b2934b62fd199bdd80d51df812e76b6187a65a6080e5e93c0d2a3c63c5b3a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Prod/Variant749b2934b62fd199bdd80d51df812e76b6187a65a6080e5e93c0d2a3c63c5b3a.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Prod/Variant749b2934b62fd199bdd80d51df812e76b6187a65a6080e5e93c0d2a3c63c5b3a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `51b4dda524b2409da4be6e1673a44c1fa4ace14a`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Prod/Variant749b2934b62fd199bdd80d51df812e76b6187a65a6080e5e93c0d2a3c63c5b3a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Prod/Variant749b2934b62fd199bdd80d51df812e76b6187a65a6080e5e93c0d2a3c63c5b3a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Functor.Currying` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Localization.Predicate` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.MorphismProperty.Composition` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [prod_uniq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Prod/Variant749b2934b62fd199bdd80d51df812e76b6187a65a6080e5e93c0d2a3c63c5b3a.lean/declarations/prod-uniq--7f4e14a0a306ac5eb8f0b1ad.md) | 51 | `result-track:7f4e14a0a306ac5eb8f0b1adcf677a8f20614709b0fb9683a70248e7f7c00662` |
| 2 | `def` | [prodLift₁](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Prod/Variant749b2934b62fd199bdd80d51df812e76b6187a65a6080e5e93c0d2a3c63c5b3a.lean/declarations/prodlift--b3fb0d20cfa794fff741d9a0.md) | 63 | `declaration-track:b3fb0d20cfa794fff741d9a0775e98e0700818131bdc63dba192784ce42cec26` |
| 3 | `lemma` | [prod_fac₁](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Prod/Variant749b2934b62fd199bdd80d51df812e76b6187a65a6080e5e93c0d2a3c63c5b3a.lean/declarations/prod-fac--de053c0d2a4ca236453f3fd3.md) | 73 | `result-track:de053c0d2a4ca236453f3fd3b1f31eae9827393eeab5963265df96db77ad142a` |
| 4 | `def` | [prodLift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Prod/Variant749b2934b62fd199bdd80d51df812e76b6187a65a6080e5e93c0d2a3c63c5b3a.lean/declarations/prodlift--f8b8522b8e8fad8dc2db9872.md) | 81 | `declaration-track:f8b8522b8e8fad8dc2db98722d3f47976b11658df99a8875fd4e3a2c445cfe3b` |
| 5 | `lemma` | [prod_fac₂](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Prod/Variant749b2934b62fd199bdd80d51df812e76b6187a65a6080e5e93c0d2a3c63c5b3a.lean/declarations/prod-fac--373aa12809f517dd853949d1.md) | 94 | `result-track:373aa12809f517dd853949d1f4accbcaf97887b672e17619b41d2084fd5068a5` |
| 6 | `lemma` | [prod_fac](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Prod/Variant749b2934b62fd199bdd80d51df812e76b6187a65a6080e5e93c0d2a3c63c5b3a.lean/declarations/prod-fac--4b251405db6eee89d89c362a.md) | 99 | `result-track:4b251405db6eee89d89c362a7a6bfbba6df903e926c1ba3951c6a196522ed9c7` |
| 7 | `def` | [prod](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Prod/Variant749b2934b62fd199bdd80d51df812e76b6187a65a6080e5e93c0d2a3c63c5b3a.lean/declarations/prod--a26acb5edc550d203050fc97.md) | 108 | `declaration-track:a26acb5edc550d203050fc9788e88165cb3d7e306aac4f1f39ea3c4e1ae8b623` |
| 8 | `lemma` | [Construction.prodIsLocalization](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Prod/Variant749b2934b62fd199bdd80d51df812e76b6187a65a6080e5e93c0d2a3c63c5b3a.lean/declarations/construction-prodislocalization--ebd56d19c81f6004d66a8138.md) | 120 | `result-track:ebd56d19c81f6004d66a8138ef3c6e36c88adb6ae3c9e7f65de70a44298d253d` |
| 9 | `instance` | [prod](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Prod/Variant749b2934b62fd199bdd80d51df812e76b6187a65a6080e5e93c0d2a3c63c5b3a.lean/declarations/prod--89af80213ebad34ed59eb56c.md) | 141 | `declaration-track:89af80213ebad34ed59eb56c569337c25ddb7427a97a58c567f5435ff9e8b260` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
