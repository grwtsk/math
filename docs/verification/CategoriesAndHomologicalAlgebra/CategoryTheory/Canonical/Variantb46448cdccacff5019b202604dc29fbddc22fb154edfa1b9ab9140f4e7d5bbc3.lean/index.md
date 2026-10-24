# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Canonical.Variantb46448cdccacff5019b202604dc29fbddc22fb154edfa1b9ab9140f4e7d5bbc3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "be99c646d4406d99db2a0be5b6e25e9f43dc6a9f",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Canonical/Variantb46448cdccacff5019b202604dc29fbddc22fb154edfa1b9ab9140f4e7d5bbc3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Canonical/Variantb46448cdccacff5019b202604dc29fbddc22fb154edfa1b9ab9140f4e7d5bbc3.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Canonical/Variantb46448cdccacff5019b202604dc29fbddc22fb154edfa1b9ab9140f4e7d5bbc3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `be99c646d4406d99db2a0be5b6e25e9f43dc6a9f`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Canonical/Variantb46448cdccacff5019b202604dc29fbddc22fb154edfa1b9ab9140f4e7d5bbc3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Canonical/Variantb46448cdccacff5019b202604dc29fbddc22fb154edfa1b9ab9140f4e7d5bbc3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Sites.Sheaf` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [isSheafFor_bind](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Canonical/Variantb46448cdccacff5019b202604dc29fbddc22fb154edfa1b9ab9140f4e7d5bbc3.lean/declarations/issheaffor-bind--cecbb4c5601aa38f7d4d83d7.md) | 56 | `result-track:cecbb4c5601aa38f7d4d83d7003e9232832d49e1dab916d795fc072a1ef4e7b7` |
| 2 | `theorem` | [isSheafFor_trans](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Canonical/Variantb46448cdccacff5019b202604dc29fbddc22fb154edfa1b9ab9140f4e7d5bbc3.lean/declarations/issheaffor-trans--8e67c956060c7ba4b340642c.md) | 115 | `result-track:8e67c956060c7ba4b340642c3811ce98c96724b00258b67d44ca57272f0f7dc9` |
| 3 | `def` | [finestTopologySingle](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Canonical/Variantb46448cdccacff5019b202604dc29fbddc22fb154edfa1b9ab9140f4e7d5bbc3.lean/declarations/finesttopologysingle--7fe57ede4f76a3b7cbb6130e.md) | 145 | `declaration-track:7fe57ede4f76a3b7cbb6130e8609116a7294d55a8ddb6b982d11e16ed9f22bce` |
| 4 | `def` | [finestTopology](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Canonical/Variantb46448cdccacff5019b202604dc29fbddc22fb154edfa1b9ab9140f4e7d5bbc3.lean/declarations/finesttopology--aa4562de624b42130f79cd33.md) | 168 | `declaration-track:aa4562de624b42130f79cd3398c899577a3ff912cc0da3ea7dc98539126b2257` |
| 5 | `theorem` | [sheaf_for_finestTopology](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Canonical/Variantb46448cdccacff5019b202604dc29fbddc22fb154edfa1b9ab9140f4e7d5bbc3.lean/declarations/sheaf-for-finesttopology--814b9985eecc877333432870.md) | 172 | `result-track:814b9985eecc87733343287099c9afdb37bb4d51f2bb76b8edd5a44508cda8f1` |
| 6 | `theorem` | [le_finestTopology](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Canonical/Variantb46448cdccacff5019b202604dc29fbddc22fb154edfa1b9ab9140f4e7d5bbc3.lean/declarations/le-finesttopology--e3628ad1ee0b0df35b94ef5a.md) | 179 | `result-track:e3628ad1ee0b0df35b94ef5a7d5fb93ed59ce35cdf7316cc15154e1c4dc86d85` |
| 7 | `def` | [canonicalTopology](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Canonical/Variantb46448cdccacff5019b202604dc29fbddc22fb154edfa1b9ab9140f4e7d5bbc3.lean/declarations/canonicaltopology--d137483a4992174075effc6f.md) | 189 | `declaration-track:d137483a4992174075effc6f9d618601576842877a05f6cdc8b2ef35f573ac82` |
| 8 | `theorem` | [isSheaf_yoneda_obj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Canonical/Variantb46448cdccacff5019b202604dc29fbddc22fb154edfa1b9ab9140f4e7d5bbc3.lean/declarations/issheaf-yoneda-obj--1bee1fbde2f56f3b29b4bdfa.md) | 193 | `result-track:1bee1fbde2f56f3b29b4bdfa89020bc1161539e5034450221563f125b75a9cd4` |
| 9 | `theorem` | [isSheaf_of_isRepresentable](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Canonical/Variantb46448cdccacff5019b202604dc29fbddc22fb154edfa1b9ab9140f4e7d5bbc3.lean/declarations/issheaf-of-isrepresentable--f92797a13625b041ccd14568.md) | 197 | `result-track:f92797a13625b041ccd14568829e1fe80dd06bad94c54df13065809d24a37e47` |
| 10 | `class` | [Subcanonical](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Canonical/Variantb46448cdccacff5019b202604dc29fbddc22fb154edfa1b9ab9140f4e7d5bbc3.lean/declarations/subcanonical--e4f66c5e675762f07ec61393.md) | 210 | `declaration-track:e4f66c5e675762f07ec61393cd70d2c4c830dea2f90733d28bd0289637bf042f` |
| 11 | `lemma` | [le_canonical](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Canonical/Variantb46448cdccacff5019b202604dc29fbddc22fb154edfa1b9ab9140f4e7d5bbc3.lean/declarations/le-canonical--c7136eaa465ffa7738998519.md) | 213 | `result-track:c7136eaa465ffa773899851912f9d6a2def8c3d7bf3a7482a947905a2e852229` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Canonical/Variantb46448cdccacff5019b202604dc29fbddc22fb154edfa1b9ab9140f4e7d5bbc3.lean/declarations/instance--80ca2df62b0bebe4029ae527.md) | 216 | `declaration-track:80ca2df62b0bebe4029ae527feabf974251df744e69a1ad645a0e43d6f184b43` |
| 13 | `theorem` | [of_isSheaf_yoneda_obj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Canonical/Variantb46448cdccacff5019b202604dc29fbddc22fb154edfa1b9ab9140f4e7d5bbc3.lean/declarations/of-issheaf-yoneda-obj--7876685940e3548363dc73e4.md) | 222 | `result-track:7876685940e3548363dc73e4ed255c039c2bd68e38d8f33275973569f785bde7` |
| 14 | `theorem` | [isSheaf_of_isRepresentable](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Canonical/Variantb46448cdccacff5019b202604dc29fbddc22fb154edfa1b9ab9140f4e7d5bbc3.lean/declarations/issheaf-of-isrepresentable--310c38688b5315d854affee6.md) | 227 | `result-track:310c38688b5315d854affee67eed4447640b1d2f3b1bce49dc5c9c3cdfdb61fd` |
| 15 | `def` | [yoneda](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Canonical/Variantb46448cdccacff5019b202604dc29fbddc22fb154edfa1b9ab9140f4e7d5bbc3.lean/declarations/yoneda--44b2393e7a94d4897a17a988.md) | 242 | `declaration-track:44b2393e7a94d4897a17a988dc18431fb01de272448520e1b510fd6380d4fe4e` |
| 16 | `def` | [yonedaCompSheafToPresheaf](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Canonical/Variantb46448cdccacff5019b202604dc29fbddc22fb154edfa1b9ab9140f4e7d5bbc3.lean/declarations/yonedacompsheaftopresheaf--2c072d2b96b9b1ed846c57b2.md) | 254 | `declaration-track:2c072d2b96b9b1ed846c57b20d5aef84ac64aab0ccf5d50c06e5e3425b33fd2c` |
| 17 | `def` | [yonedaFullyFaithful](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Canonical/Variantb46448cdccacff5019b202604dc29fbddc22fb154edfa1b9ab9140f4e7d5bbc3.lean/declarations/yonedafullyfaithful--7926ee57bb6179ac61f8508e.md) | 259 | `declaration-track:7926ee57bb6179ac61f8508eae277a6589a92cb030eb1ee0915c2ec52f903381` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Canonical/Variantb46448cdccacff5019b202604dc29fbddc22fb154edfa1b9ab9140f4e7d5bbc3.lean/declarations/instance--1a0e85d044d42fadb42e402d.md) | 262 | `declaration-track:1a0e85d044d42fadb42e402d7d0a1f4789d298e4698487a5492ea0663c1215b1` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Canonical/Variantb46448cdccacff5019b202604dc29fbddc22fb154edfa1b9ab9140f4e7d5bbc3.lean/declarations/instance--6eaf1224b7de59c1127db152.md) | 264 | `declaration-track:6eaf1224b7de59c1127db152c822246b3a0d80cfb3e5cdfe331314e830a1641e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
