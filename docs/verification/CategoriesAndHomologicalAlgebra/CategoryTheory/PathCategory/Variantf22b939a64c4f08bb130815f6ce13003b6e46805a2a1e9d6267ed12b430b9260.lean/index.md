# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.PathCategory.Variantf22b939a64c4f08bb130815f6ce13003b6e46805a2a1e9d6267ed12b430b9260

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c4e02ee905b124ed0881e54d7b23368c09681d1a",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PathCategory/Variantf22b939a64c4f08bb130815f6ce13003b6e46805a2a1e9d6267ed12b430b9260.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PathCategory/Variantf22b939a64c4f08bb130815f6ce13003b6e46805a2a1e9d6267ed12b430b9260.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PathCategory/Variantf22b939a64c4f08bb130815f6ce13003b6e46805a2a1e9d6267ed12b430b9260.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c4e02ee905b124ed0881e54d7b23368c09681d1a`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PathCategory/Variantf22b939a64c4f08bb130815f6ce13003b6e46805a2a1e9d6267ed12b430b9260.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/PathCategory/Variantf22b939a64c4f08bb130815f6ce13003b6e46805a2a1e9d6267ed12b430b9260.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.EqToHom` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Quotient` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Combinatorics.Quiver.Path` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Paths](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PathCategory/Variantf22b939a64c4f08bb130815f6ce13003b6e46805a2a1e9d6267ed12b430b9260.lean/declarations/paths--e97620e16a4ee106ed653b0c.md) | 32 | `declaration-track:e97620e16a4ee106ed653b0c79a0d1316b65c04f9d6cdf18208d3f1aae044068` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PathCategory/Variantf22b939a64c4f08bb130815f6ce13003b6e46805a2a1e9d6267ed12b430b9260.lean/declarations/instance--9370dba34191898d5242ec05.md) | 35 | `declaration-track:9370dba34191898d5242ec058481392d686d6c26c57aa389f4411f29ec86f17e` |
| 3 | `instance` | [categoryPaths](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PathCategory/Variantf22b939a64c4f08bb130815f6ce13003b6e46805a2a1e9d6267ed12b430b9260.lean/declarations/categorypaths--27b57f72ab173bf0189403ad.md) | 41 | `declaration-track:27b57f72ab173bf0189403adb1f369c5d9f03dafe74659e8eba37017855e2aa9` |
| 4 | `def` | [of](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PathCategory/Variantf22b939a64c4f08bb130815f6ce13003b6e46805a2a1e9d6267ed12b430b9260.lean/declarations/of--1394faa1d7c69cee8362e101.md) | 52 | `declaration-track:1394faa1d7c69cee8362e1011f3132d0102f9cf95c54e7b51c8e9be27e0a70a3` |
| 5 | `def` | [lift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PathCategory/Variantf22b939a64c4f08bb130815f6ce13003b6e46805a2a1e9d6267ed12b430b9260.lean/declarations/lift--01b4ee3bde8a6da5d4a17854.md) | 60 | `declaration-track:01b4ee3bde8a6da5d4a1785461bd2239cda176882664c0a61527268971a6be0a` |
| 6 | `theorem` | [lift_nil](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PathCategory/Variantf22b939a64c4f08bb130815f6ce13003b6e46805a2a1e9d6267ed12b430b9260.lean/declarations/lift-nil--758ba1a8d39e5cd1e81d1a1f.md) | 77 | `result-track:758ba1a8d39e5cd1e81d1a1fbf816986e472f5257ab19504978aea95de446688` |
| 7 | `theorem` | [lift_cons](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PathCategory/Variantf22b939a64c4f08bb130815f6ce13003b6e46805a2a1e9d6267ed12b430b9260.lean/declarations/lift-cons--3aecf7d54d587cccdd54dfcf.md) | 82 | `result-track:3aecf7d54d587cccdd54dfcfd6254b4dab17346ba2fe9b697a8fe43b76273cfa` |
| 8 | `theorem` | [lift_toPath](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PathCategory/Variantf22b939a64c4f08bb130815f6ce13003b6e46805a2a1e9d6267ed12b430b9260.lean/declarations/lift-topath--9875fd540b1916e248c81945.md) | 87 | `result-track:9875fd540b1916e248c81945dcf24d24f21f3727f9e18c99ff29e832d106d589` |
| 9 | `theorem` | [lift_spec](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PathCategory/Variantf22b939a64c4f08bb130815f6ce13003b6e46805a2a1e9d6267ed12b430b9260.lean/declarations/lift-spec--0e4954133f653fa5c091b23c.md) | 93 | `result-track:0e4954133f653fa5c091b23c86cd1c51f15a7e47fbacb8b6be5aa4eb1b45c2e3` |
| 10 | `theorem` | [lift_unique](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PathCategory/Variantf22b939a64c4f08bb130815f6ce13003b6e46805a2a1e9d6267ed12b430b9260.lean/declarations/lift-unique--58e94b46ae53c76b81d8f465.md) | 103 | `result-track:58e94b46ae53c76b81d8f465c53e0bbbf852a758371de5e447749b6316571980` |
| 11 | `theorem` | [ext_functor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PathCategory/Variantf22b939a64c4f08bb130815f6ce13003b6e46805a2a1e9d6267ed12b430b9260.lean/declarations/ext-functor--670a9312dc8d2a4aeba979d7.md) | 124 | `result-track:670a9312dc8d2a4aeba979d7ef663f989a91ab9db1a92137c324eb5780e9b440` |
| 12 | `theorem` | [Prefunctor.mapPath_comp'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PathCategory/Variantf22b939a64c4f08bb130815f6ce13003b6e46805a2a1e9d6267ed12b430b9260.lean/declarations/prefunctor-mappath-comp--9039ae7049b858a68752f37d.md) | 144 | `result-track:9039ae7049b858a68752f37d36f001fa1de36ac73aecdc284be8a1292a749596` |
| 13 | `def` | [composePath](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PathCategory/Variantf22b939a64c4f08bb130815f6ce13003b6e46805a2a1e9d6267ed12b430b9260.lean/declarations/composepath--c1c9313a0f83a5bece0f6cc6.md) | 161 | `declaration-track:c1c9313a0f83a5bece0f6cc619afead99ab046ca13323d21b728a09136bffa48` |
| 14 | `lemma` | [composePath_nil](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PathCategory/Variantf22b939a64c4f08bb130815f6ce13003b6e46805a2a1e9d6267ed12b430b9260.lean/declarations/composepath-nil--b6e8c01807fa24be1140e0be.md) | 166 | `result-track:b6e8c01807fa24be1140e0bebc16ea8414a06a366bb6aea4e6b63c7e029189c2` |
| 15 | `lemma` | [composePath_cons](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PathCategory/Variantf22b939a64c4f08bb130815f6ce13003b6e46805a2a1e9d6267ed12b430b9260.lean/declarations/composepath-cons--738ef4740a11d4b27e168a92.md) | 168 | `result-track:738ef4740a11d4b27e168a92352944e421207cb274e8ef10b21654f33675fd68` |
| 16 | `theorem` | [composePath_toPath](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PathCategory/Variantf22b939a64c4f08bb130815f6ce13003b6e46805a2a1e9d6267ed12b430b9260.lean/declarations/composepath-topath--3856634f7847ba24d72c440e.md) | 172 | `result-track:3856634f7847ba24d72c440eefdb074e4a46c4db1693709ad2cb128892a9272c` |
| 17 | `theorem` | [composePath_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PathCategory/Variantf22b939a64c4f08bb130815f6ce13003b6e46805a2a1e9d6267ed12b430b9260.lean/declarations/composepath-comp--b810eefffd001b99507f4b82.md) | 176 | `result-track:b810eefffd001b99507f4b824742b4aa99628e9b90797f53127b290d279bc464` |
| 18 | `theorem` | [composePath_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PathCategory/Variantf22b939a64c4f08bb130815f6ce13003b6e46805a2a1e9d6267ed12b430b9260.lean/declarations/composepath-id--ee2ad7a0e7c3b7f84713e47f.md) | 185 | `result-track:ee2ad7a0e7c3b7f84713e47f07357ecb01a3f6af087c64eedeb07607ef5fccaf` |
| 19 | `theorem` | [composePath_comp'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PathCategory/Variantf22b939a64c4f08bb130815f6ce13003b6e46805a2a1e9d6267ed12b430b9260.lean/declarations/composepath-comp--e99b4e68846e47e6b74bf95f.md) | 189 | `result-track:e99b4e68846e47e6b74bf95f25feddf5bdb47c7770cd7d98322630c387137141` |
| 20 | `def` | [pathComposition](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PathCategory/Variantf22b939a64c4f08bb130815f6ce13003b6e46805a2a1e9d6267ed12b430b9260.lean/declarations/pathcomposition--0d10438f397e760874ab4423.md) | 198 | `declaration-track:0d10438f397e760874ab442310b24870515fa8ea00fa18d9b93d0b5886a92868` |
| 21 | `def` | [pathsHomRel](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PathCategory/Variantf22b939a64c4f08bb130815f6ce13003b6e46805a2a1e9d6267ed12b430b9260.lean/declarations/pathshomrel--e7ab69e1a828de26b53e262e.md) | 210 | `declaration-track:e7ab69e1a828de26b53e262ea14efdc595faa00c08e2511ebf4d55e60db69b76` |
| 22 | `def` | [toQuotientPaths](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PathCategory/Variantf22b939a64c4f08bb130815f6ce13003b6e46805a2a1e9d6267ed12b430b9260.lean/declarations/toquotientpaths--2525b67e556cf0654c87dae4.md) | 216 | `declaration-track:2525b67e556cf0654c87dae4dd3ecdffa48e21c4bd1597f0bb4a204535bc89d4` |
| 23 | `def` | [quotientPathsTo](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PathCategory/Variantf22b939a64c4f08bb130815f6ce13003b6e46805a2a1e9d6267ed12b430b9260.lean/declarations/quotientpathsto--38e10d60a425e42ac28b79b6.md) | 226 | `declaration-track:38e10d60a425e42ac28b79b65a0e8909512270b1ad76a9e164c527a7c636fb0c` |
| 24 | `def` | [quotientPathsEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PathCategory/Variantf22b939a64c4f08bb130815f6ce13003b6e46805a2a1e9d6267ed12b430b9260.lean/declarations/quotientpathsequiv--2a5021d94be6a1dfb4b52701.md) | 232 | `declaration-track:2a5021d94be6a1dfb4b527017335568919952cc5c91324007f18d59fccc067e0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
