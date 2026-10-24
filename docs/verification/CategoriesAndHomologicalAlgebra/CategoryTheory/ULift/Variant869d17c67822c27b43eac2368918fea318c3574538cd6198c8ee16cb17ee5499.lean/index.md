# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Ulift.Variant869d17c67822c27b43eac2368918fea318c3574538cd6198c8ee16cb17ee5499

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fb8a66b2919d1bf8ec4fc50bbaf1289b99b3fa69",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Ulift/Variant869d17c67822c27b43eac2368918fea318c3574538cd6198c8ee16cb17ee5499.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ULift/Variant869d17c67822c27b43eac2368918fea318c3574538cd6198c8ee16cb17ee5499.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ULift/Variant869d17c67822c27b43eac2368918fea318c3574538cd6198c8ee16cb17ee5499.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fb8a66b2919d1bf8ec4fc50bbaf1289b99b3fa69`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Ulift/Variant869d17c67822c27b43eac2368918fea318c3574538cd6198c8ee16cb17ee5499.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/ULift/Variant869d17c67822c27b43eac2368918fea318c3574538cd6198c8ee16cb17ee5499.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Category.Grp.LargeColimits` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.Grp.Limits` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.CharacterModule` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Preserves.Ulift` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [uliftFunctorFullyFaithful](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ULift/Variant869d17c67822c27b43eac2368918fea318c3574538cd6198c8ee16cb17ee5499.lean/declarations/uliftfunctorfullyfaithful--8b276b1ba7498d40dadcf1ad.md) | 80 | `declaration-track:8b276b1ba7498d40dadcf1ad06579be10a306bb50de1c941a8554890c79e364c` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ULift/Variant869d17c67822c27b43eac2368918fea318c3574538cd6198c8ee16cb17ee5499.lean/declarations/instance--b449855a3da1cd1ad5b98802.md) | 90 | `declaration-track:b449855a3da1cd1ad5b98802cfed2b1db6611130dc61502bb08a68e741fe1195` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ULift/Variant869d17c67822c27b43eac2368918fea318c3574538cd6198c8ee16cb17ee5499.lean/declarations/instance--703b4ce2661d3c3f46aab42e.md) | 97 | `declaration-track:703b4ce2661d3c3f46aab42e1ff46d44500dc30f80b9715577e4b51b2efd5297` |
| 4 | `instance` | [uliftFunctor_preservesLimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ULift/Variant869d17c67822c27b43eac2368918fea318c3574538cd6198c8ee16cb17ee5499.lean/declarations/uliftfunctor-preserveslimit--ae5f81144e8fb6b08b2cb766.md) | 100 | `declaration-track:ae5f81144e8fb6b08b2cb766f9a9ccf979f843345bf6dd055a699f1dd707d1c1` |
| 5 | `instance` | [uliftFunctor_preservesLimitsOfShape](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ULift/Variant869d17c67822c27b43eac2368918fea318c3574538cd6198c8ee16cb17ee5499.lean/declarations/uliftfunctor-preserveslimitsofshape--29834c27c696c63fd43bff1b.md) | 106 | `declaration-track:29834c27c696c63fd43bff1b1a0394e808cb8575a32dd3a7f350d5a5f47a9ad0` |
| 6 | `instance` | [uliftFunctor_preservesLimitsOfSize](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ULift/Variant869d17c67822c27b43eac2368918fea318c3574538cd6198c8ee16cb17ee5499.lean/declarations/uliftfunctor-preserveslimitsofsize--f823d6ffc2b23e35a6369463.md) | 114 | `declaration-track:f823d6ffc2b23e35a6369463522cb3afd5b873ee90906afdcfa909290e8e2c54` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ULift/Variant869d17c67822c27b43eac2368918fea318c3574538cd6198c8ee16cb17ee5499.lean/declarations/instance--c32882e44d17f4f2fb9b6524.md) | 122 | `declaration-track:c32882e44d17f4f2fb9b65244600b79cca0fe74e18104fba3d6ecfea857dd47c` |
| 8 | `def` | [uliftFunctorFullyFaithful](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ULift/Variant869d17c67822c27b43eac2368918fea318c3574538cd6198c8ee16cb17ee5499.lean/declarations/uliftfunctorfullyfaithful--365fbfabbc52f6b664748b06.md) | 133 | `declaration-track:365fbfabbc52f6b664748b06bcd438c3393db78f6e977c6b52dd8ff72f223967` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ULift/Variant869d17c67822c27b43eac2368918fea318c3574538cd6198c8ee16cb17ee5499.lean/declarations/instance--32921073635d8d2b2baf651e.md) | 142 | `declaration-track:32921073635d8d2b2baf651ede3c84cce159b4dc67164e51e4fc4e906ad86b1c` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ULift/Variant869d17c67822c27b43eac2368918fea318c3574538cd6198c8ee16cb17ee5499.lean/declarations/instance--30858843d5fc9b033c664bea.md) | 147 | `declaration-track:30858843d5fc9b033c664bea25c4207e79795fd58bce8b8c2e300d0dd1084456` |
| 11 | `instance` | [uliftFunctor_preservesLimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ULift/Variant869d17c67822c27b43eac2368918fea318c3574538cd6198c8ee16cb17ee5499.lean/declarations/uliftfunctor-preserveslimit--6635059edd28bd608f9e3438.md) | 150 | `declaration-track:6635059edd28bd608f9e3438fb528088884072592df1c2c99dc8b1311ed86c4f` |
| 12 | `instance` | [uliftFunctor_preservesLimitsOfShape](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ULift/Variant869d17c67822c27b43eac2368918fea318c3574538cd6198c8ee16cb17ee5499.lean/declarations/uliftfunctor-preserveslimitsofshape--4263c8134cb6036503293bb9.md) | 156 | `declaration-track:4263c8134cb6036503293bb977831388a027d5beb0eef9441e5541e9749dad50` |
| 13 | `instance` | [uliftFunctor_preservesLimitsOfSize](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ULift/Variant869d17c67822c27b43eac2368918fea318c3574538cd6198c8ee16cb17ee5499.lean/declarations/uliftfunctor-preserveslimitsofsize--a1cbdb7154416e8756ed4fb2.md) | 164 | `declaration-track:a1cbdb7154416e8756ed4fb2817c290867b3f16a1d1bad4126cb49d65b1fe1b4` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ULift/Variant869d17c67822c27b43eac2368918fea318c3574538cd6198c8ee16cb17ee5499.lean/declarations/instance--09e77cdc745f0eabd921e702.md) | 172 | `declaration-track:09e77cdc745f0eabd921e7020d626d77e05da2bee0ab66fd47893eb3d9692f03` |
| 15 | `instance` | [uliftFunctor_additive](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ULift/Variant869d17c67822c27b43eac2368918fea318c3574538cd6198c8ee16cb17ee5499.lean/declarations/uliftfunctor-additive--7ba0d7396de132ac2e11981d.md) | 181 | `declaration-track:7ba0d7396de132ac2e11981d03925b7700ffeb4598db973c24f99c1ec9568b73` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ULift/Variant869d17c67822c27b43eac2368918fea318c3574538cd6198c8ee16cb17ee5499.lean/declarations/instance--4b44983cec9e652c9fcb156a.md) | 189 | `declaration-track:4b44983cec9e652c9fcb156adfe97ad2256145d3c79136de3c7ad2ddb0df3d54` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ULift/Variant869d17c67822c27b43eac2368918fea318c3574538cd6198c8ee16cb17ee5499.lean/declarations/instance--db3e9d32954458df264f48e7.md) | 202 | `declaration-track:db3e9d32954458df264f48e76d2ab7f3219b2a31c68a2e3fc6a73a807292e3c9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
