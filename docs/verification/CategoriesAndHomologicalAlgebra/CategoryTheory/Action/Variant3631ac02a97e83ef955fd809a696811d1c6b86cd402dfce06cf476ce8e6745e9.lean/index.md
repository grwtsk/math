# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Action.Variant3631ac02a97e83ef955fd809a696811d1c6b86cd402dfce06cf476ce8e6745e9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c0e3e8904dbb83e751709a211a0480271b15be2e",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Action/Variant3631ac02a97e83ef955fd809a696811d1c6b86cd402dfce06cf476ce8e6745e9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Action/Variant3631ac02a97e83ef955fd809a696811d1c6b86cd402dfce06cf476ce8e6745e9.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Action/Variant3631ac02a97e83ef955fd809a696811d1c6b86cd402dfce06cf476ce8e6745e9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c0e3e8904dbb83e751709a211a0480271b15be2e`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Action/Variant3631ac02a97e83ef955fd809a696811d1c6b86cd402dfce06cf476ce8e6745e9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Action/Variant3631ac02a97e83ef955fd809a696811d1c6b86cd402dfce06cf476ce8e6745e9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Galois.Examples` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Galois.Prorepresentability` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [functorToAction](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Action/Variant3631ac02a97e83ef955fd809a696811d1c6b86cd402dfce06cf476ce8e6745e9.lean/declarations/functortoaction--60de6610810a6fcd252490d3.md) | 41 | `declaration-track:60de6610810a6fcd252490d309949e361ab2ddb151326ebb2669b9b14bbbae65` |
| 2 | `lemma` | [functorToAction_comp_forget₂_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Action/Variant3631ac02a97e83ef955fd809a696811d1c6b86cd402dfce06cf476ce8e6745e9.lean/declarations/functortoaction-comp-forget-eq--06d482772e1946905c61c3a5.md) | 48 | `result-track:06d482772e1946905c61c3a5eeaf4b7db5806cefd16ef57f340e3c13580803d3` |
| 3 | `lemma` | [functorToAction_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Action/Variant3631ac02a97e83ef955fd809a696811d1c6b86cd402dfce06cf476ce8e6745e9.lean/declarations/functortoaction-map--43e8dca72a27b4afa95f1766.md) | 51 | `result-track:43e8dca72a27b4afa95f176689717207ba94ef20e619344e82ad06126c1bc4a6` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Action/Variant3631ac02a97e83ef955fd809a696811d1c6b86cd402dfce06cf476ce8e6745e9.lean/declarations/instance--6d75d6251a404293d36764e2.md) | 54 | `declaration-track:6d75d6251a404293d36764e284ecbc0bdf4301d4ce7aaf6c2a7dc7d56410775b` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Action/Variant3631ac02a97e83ef955fd809a696811d1c6b86cd402dfce06cf476ce8e6745e9.lean/declarations/instance--9f2ec03bb92d0deb48e41bf5.md) | 59 | `declaration-track:9f2ec03bb92d0deb48e41bf55cb66c37513fb7db307864e74512a10f5fc7f4a0` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Action/Variant3631ac02a97e83ef955fd809a696811d1c6b86cd402dfce06cf476ce8e6745e9.lean/declarations/instance--175cc462aa6c5ec051069bec.md) | 62 | `declaration-track:175cc462aa6c5ec051069beca6e8bbbcad1aee0ae61f40401a35963147839730` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Action/Variant3631ac02a97e83ef955fd809a696811d1c6b86cd402dfce06cf476ce8e6745e9.lean/declarations/instance--691b7eaacebd9f0f37073f23.md) | 67 | `declaration-track:691b7eaacebd9f0f37073f23eb2a7d959ceaad76d2b93079431368e238a97dfd` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Action/Variant3631ac02a97e83ef955fd809a696811d1c6b86cd402dfce06cf476ce8e6745e9.lean/declarations/instance--9a5c3c4ab1188d8c0580b177.md) | 72 | `declaration-track:9a5c3c4ab1188d8c0580b177fcd0b6536df2309289999ee8fc4cdbf3cba92252` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Action/Variant3631ac02a97e83ef955fd809a696811d1c6b86cd402dfce06cf476ce8e6745e9.lean/declarations/instance--2aa54cb2680f1671ed0b757b.md) | 74 | `declaration-track:2aa54cb2680f1671ed0b757b109e831759298d1d6c68f2dfc934e0a6ea61279c` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Action/Variant3631ac02a97e83ef955fd809a696811d1c6b86cd402dfce06cf476ce8e6745e9.lean/declarations/instance--47db8749e2f6ae250e29a42a.md) | 79 | `declaration-track:47db8749e2f6ae250e29a42a8179717e19cb035049efcd35ec2c93b399e683e9` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Action/Variant3631ac02a97e83ef955fd809a696811d1c6b86cd402dfce06cf476ce8e6745e9.lean/declarations/instance--837ee857614a489a4ee99bac.md) | 83 | `declaration-track:837ee857614a489a4ee99bac9236933df787ea2624cc82d7baf9bc3d087f7d99` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Action/Variant3631ac02a97e83ef955fd809a696811d1c6b86cd402dfce06cf476ce8e6745e9.lean/declarations/instance--cc6abda8964131f78d790ee9.md) | 87 | `declaration-track:cc6abda8964131f78d790ee99198313c113b7b64403dbbc60bcfe291340910ae` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Action/Variant3631ac02a97e83ef955fd809a696811d1c6b86cd402dfce06cf476ce8e6745e9.lean/declarations/instance--7bab397d47311a058769f71b.md) | 92 | `declaration-track:7bab397d47311a058769f71b0e654acdf5cedcd2a1fcc4aac6b756424cd448f3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
