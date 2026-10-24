# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Extensive.Variant095f49e237baeb58147d1ef5277c7d0aabfbc3c9642488b81cd755e51883c621

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "52e3546ffebcb17f1ba5857ea48a551ce0d7531b",
  "lexical_observation_count": 41,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Extensive/Variant095f49e237baeb58147d1ef5277c7d0aabfbc3c9642488b81cd755e51883c621.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Extensive/Variant095f49e237baeb58147d1ef5277c7d0aabfbc3c9642488b81cd755e51883c621.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Extensive/Variant095f49e237baeb58147d1ef5277c7d0aabfbc3c9642488b81cd755e51883c621.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `52e3546ffebcb17f1ba5857ea48a551ce0d7531b`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Extensive/Variant095f49e237baeb58147d1ef5277c7d0aabfbc3c9642488b81cd755e51883c621.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Extensive/Variant095f49e237baeb58147d1ef5277c7d0aabfbc3c9642488b81cd755e51883c621.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.Shapes.Pullback.CommSq` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.StrictInitial` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Types.Shapes` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Category.TopCat.Limits.Pullbacks` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.FunctorCategory.Basic` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Constructions.FiniteProductsOfBinaryProducts` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.VanKampen` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [HasPullbacksOfInclusions](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Extensive/Variant095f49e237baeb58147d1ef5277c7d0aabfbc3c9642488b81cd755e51883c621.lean/declarations/haspullbacksofinclusions--a184513e2c46bd165c7d585c.md) | 62 | `declaration-track:a184513e2c46bd165c7d585c9012ba85868894652c787d0ce4b7294864c23ae8` |
| 2 | `class` | [PreservesPullbacksOfInclusions](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Extensive/Variant095f49e237baeb58147d1ef5277c7d0aabfbc3c9642488b81cd755e51883c621.lean/declarations/preservespullbacksofinclusions--c34c90c6a5d8aa0128845248.md) | 70 | `declaration-track:c34c90c6a5d8aa0128845248d624b48c56a66784fad8d7fabc8cf2e0b9bfaeab` |
| 3 | `class` | [FinitaryPreExtensive](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Extensive/Variant095f49e237baeb58147d1ef5277c7d0aabfbc3c9642488b81cd755e51883c621.lean/declarations/finitarypreextensive--31210f62022904085f9132d7.md) | 78 | `declaration-track:31210f62022904085f9132d73d0563a7cdd2150ccd5ade168af455a154cae730` |
| 4 | `class` | [FinitaryExtensive](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Extensive/Variant095f49e237baeb58147d1ef5277c7d0aabfbc3c9642488b81cd755e51883c621.lean/declarations/finitaryextensive--1294ba06a4200e9b8739c608.md) | 89 | `declaration-track:1294ba06a4200e9b8739c60892ee2a54c6ea040b1dddaf83d7ee3943f38f7fc8` |
| 5 | `theorem` | [FinitaryExtensive.vanKampen](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Extensive/Variant095f49e237baeb58147d1ef5277c7d0aabfbc3c9642488b81cd755e51883c621.lean/declarations/finitaryextensive-vankampen--3a2cd16dfdf1fd5795d8467a.md) | 98 | `result-track:3a2cd16dfdf1fd5795d8467a3bf2fe587a8ebe6b255b914c0e17bd2e89c90358` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Extensive/Variant095f49e237baeb58147d1ef5277c7d0aabfbc3c9642488b81cd755e51883c621.lean/declarations/instance--7a931e9c150ae278fe42ba6e.md) | 112 | `declaration-track:7a931e9c150ae278fe42ba6ed246b843f0bae3644d24c710e2279aa9c28763ad` |
| 7 | `instance` | [preservesPullbackInl'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Extensive/Variant095f49e237baeb58147d1ef5277c7d0aabfbc3c9642488b81cd755e51883c621.lean/declarations/preservespullbackinl--90bb16f5526ae386d109540d.md) | 117 | `declaration-track:90bb16f5526ae386d109540dc0204163726d41b87cf2958065faeb1afff6af9a` |
| 8 | `instance` | [hasPullbackInr'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Extensive/Variant095f49e237baeb58147d1ef5277c7d0aabfbc3c9642488b81cd755e51883c621.lean/declarations/haspullbackinr--82acf3bf244327f49ab5bea2.md) | 121 | `declaration-track:82acf3bf244327f49ab5bea2a19ad92251602d6ce93a828484cfae03849a73b7` |
| 9 | `instance` | [hasPullbackInr](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Extensive/Variant095f49e237baeb58147d1ef5277c7d0aabfbc3c9642488b81cd755e51883c621.lean/declarations/haspullbackinr--6f7c70f101bdfa3c5bfde2ec.md) | 130 | `declaration-track:6f7c70f101bdfa3c5bfde2ec4c6a8f81ce9567208b168ddfd7278d9acc394082` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Extensive/Variant095f49e237baeb58147d1ef5277c7d0aabfbc3c9642488b81cd755e51883c621.lean/declarations/instance--20388158247938c0e6fd7066.md) | 141 | `declaration-track:20388158247938c0e6fd7066bfb83dce1782461602f51dbffa7984f7d11da34f` |
| 11 | `instance` | [preservesPullbackInl'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Extensive/Variant095f49e237baeb58147d1ef5277c7d0aabfbc3c9642488b81cd755e51883c621.lean/declarations/preservespullbackinl--c85244d97733b2990934ea38.md) | 147 | `declaration-track:c85244d97733b2990934ea38292dfcf322e6055584b867a25d954fa1a6876f7c` |
| 12 | `instance` | [preservesPullbackInr'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Extensive/Variant095f49e237baeb58147d1ef5277c7d0aabfbc3c9642488b81cd755e51883c621.lean/declarations/preservespullbackinr--4ad7e377ca0fe83ba8e44fab.md) | 152 | `declaration-track:4ad7e377ca0fe83ba8e44fab4f88b4d169b33e5de47686f9b4342508ad9aa647` |
| 13 | `instance` | [preservesPullbackInr](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Extensive/Variant095f49e237baeb58147d1ef5277c7d0aabfbc3c9642488b81cd755e51883c621.lean/declarations/preservespullbackinr--a19a3aa0da2145725bbdfcec.md) | 158 | `declaration-track:a19a3aa0da2145725bbdfcec19bb0f5735656ee3a9ed17414019c03508120188` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Extensive/Variant095f49e237baeb58147d1ef5277c7d0aabfbc3c9642488b81cd755e51883c621.lean/declarations/instance--5114bf2b1f14d07202c8bef0.md) | 164 | `declaration-track:5114bf2b1f14d07202c8bef0d8fa95a6e41c1c9d1f5657c3297fbfe0a561ecb1` |
| 15 | `theorem` | [FinitaryExtensive.mono_inr_of_isColimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Extensive/Variant095f49e237baeb58147d1ef5277c7d0aabfbc3c9642488b81cd755e51883c621.lean/declarations/finitaryextensive-mono-inr-of-iscolimit--ee9035beeb128094b1d38b92.md) | 168 | `result-track:ee9035beeb128094b1d38b92cebabf939102f2b636dcd0d71ff36c99472cadcc` |
| 16 | `theorem` | [FinitaryExtensive.mono_inl_of_isColimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Extensive/Variant095f49e237baeb58147d1ef5277c7d0aabfbc3c9642488b81cd755e51883c621.lean/declarations/finitaryextensive-mono-inl-of-iscolimit--c262d8da6b251f2043935e0c.md) | 172 | `result-track:c262d8da6b251f2043935e0c548209433a81b515ce8f3022c8843164e789c397` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Extensive/Variant095f49e237baeb58147d1ef5277c7d0aabfbc3c9642488b81cd755e51883c621.lean/declarations/instance--b2f0151c7809d1bb56d8f385.md) | 176 | `declaration-track:b2f0151c7809d1bb56d8f385c43d515799afc61e51b63eb00da4757d35895ba6` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Extensive/Variant095f49e237baeb58147d1ef5277c7d0aabfbc3c9642488b81cd755e51883c621.lean/declarations/instance--5cb7a952a9a37fd8109ce5b4.md) | 179 | `declaration-track:5cb7a952a9a37fd8109ce5b4a8a04c3f5d090d19f60c88ddb9bad7c0ef6ac9cb` |
| 19 | `theorem` | [FinitaryExtensive.isPullback_initial_to_binaryCofan](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Extensive/Variant095f49e237baeb58147d1ef5277c7d0aabfbc3c9642488b81cd755e51883c621.lean/declarations/finitaryextensive-ispullback-initial-to-binarycofan--c63af0abad8020b9a86ab593.md) | 182 | `result-track:c63af0abad8020b9a86ab59378f6daca0eae0b05e49cb64bfc3c190aab060277` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Extensive/Variant095f49e237baeb58147d1ef5277c7d0aabfbc3c9642488b81cd755e51883c621.lean/declarations/instance--37cc6ce10995fccda6bd983a.md) | 187 | `declaration-track:37cc6ce10995fccda6bd983af1a3db2d0de4247c5d7abd69423add78a0b7e40d` |
| 21 | `theorem` | [finitaryExtensive_iff_of_isTerminal](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Extensive/Variant095f49e237baeb58147d1ef5277c7d0aabfbc3c9642488b81cd755e51883c621.lean/declarations/finitaryextensive-iff-of-isterminal--b28c79d0e4feb8df1b1c5ca9.md) | 194 | `result-track:b28c79d0e4feb8df1b1c5ca99cce8102e30ada9d6c184d5dbc95b9525ab76d8a` |
| 22 | `instance` | [types.finitaryExtensive](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Extensive/Variant095f49e237baeb58147d1ef5277c7d0aabfbc3c9642488b81cd755e51883c621.lean/declarations/types-finitaryextensive--33b6441238e230298cb5413c.md) | 209 | `declaration-track:33b6441238e230298cb5413c09dac68e275d831cd0e2ce54ab726d6accd86462` |
| 23 | `def` | [finitaryExtensiveTopCatAux](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Extensive/Variant095f49e237baeb58147d1ef5277c7d0aabfbc3c9642488b81cd755e51883c621.lean/declarations/finitaryextensivetopcataux--0a36817453ec7a443c2dde78.md) | 280 | `declaration-track:0a36817453ec7a443c2dde7817f2c225dd8e3782dde7a4424c3658ef3cf6f27d` |
| 24 | `instance` | [finitaryExtensive_TopCat](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Extensive/Variant095f49e237baeb58147d1ef5277c7d0aabfbc3c9642488b81cd755e51883c621.lean/declarations/finitaryextensive-topcat--b4b35f305d6fe0697a237f5d.md) | 302 | `declaration-track:b4b35f305d6fe0697a237f5de1f85b74c8ade734813ae8f011985df7dded84b2` |
| 25 | `theorem` | [finitaryExtensive_of_reflective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Extensive/Variant095f49e237baeb58147d1ef5277c7d0aabfbc3c9642488b81cd755e51883c621.lean/declarations/finitaryextensive-of-reflective--f052bbca01391434b1135896.md) | 352 | `result-track:f052bbca01391434b1135896133d8c87e9fc36c71d9ff3baa85a3418f5ebbe56` |
| 26 | `instance` | [finitaryExtensive_functor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Extensive/Variant095f49e237baeb58147d1ef5277c7d0aabfbc3c9642488b81cd755e51883c621.lean/declarations/finitaryextensive-functor--aa90c1eb6f74f5f7bf470e3d.md) | 377 | `declaration-track:aa90c1eb6f74f5f7bf470e3db5414e9954e2fad0b96c4d7141b27ec8208ae089` |
| 27 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Extensive/Variant095f49e237baeb58147d1ef5277c7d0aabfbc3c9642488b81cd755e51883c621.lean/declarations/instance--056d607b34d32dc3b2d9c3db.md) | 383 | `declaration-track:056d607b34d32dc3b2d9c3db373ce0be4f1b2d7938c93786a4d337d92ecfa914` |
| 28 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Extensive/Variant095f49e237baeb58147d1ef5277c7d0aabfbc3c9642488b81cd755e51883c621.lean/declarations/instance--14f23419735a39d054b29c57.md) | 390 | `declaration-track:14f23419735a39d054b29c572beaa72d87fec1c2b49212e0dcc84b23d7314e02` |
| 29 | `theorem` | [finitaryExtensive_of_preserves_and_reflects](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Extensive/Variant095f49e237baeb58147d1ef5277c7d0aabfbc3c9642488b81cd755e51883c621.lean/declarations/finitaryextensive-of-preserves-and-reflects--5e2632dee59195324b87a114.md) | 394 | `result-track:5e2632dee59195324b87a11424a1aeeac54a79818ba92fdd19bf5e166bcf9b3f` |
| 30 | `theorem` | [finitaryExtensive_of_preserves_and_reflects_isomorphism](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Extensive/Variant095f49e237baeb58147d1ef5277c7d0aabfbc3c9642488b81cd755e51883c621.lean/declarations/finitaryextensive-of-preserves-and-reflects-isomorphism--b2c44f635a35a1c93ab4328d.md) | 408 | `result-track:b2c44f635a35a1c93ab4328d8e8dd1100dd9b448ae90801d7cb46084a4582845` |
| 31 | `theorem` | [FinitaryPreExtensive.isUniversal_finiteCoproducts_Fin](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Extensive/Variant095f49e237baeb58147d1ef5277c7d0aabfbc3c9642488b81cd755e51883c621.lean/declarations/finitarypreextensive-isuniversal-finitecoproducts-fin--79d8bea2c5b8476c80920746.md) | 421 | `result-track:79d8bea2c5b8476c8092074660216d5d0472bbd22e02d996e0fb0b78c90838ab` |
| 32 | `theorem` | [FinitaryPreExtensive.isUniversal_finiteCoproducts](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Extensive/Variant095f49e237baeb58147d1ef5277c7d0aabfbc3c9642488b81cd755e51883c621.lean/declarations/finitarypreextensive-isuniversal-finitecoproducts--3ee6b4fe419aad0c82fb0cc4.md) | 437 | `result-track:3ee6b4fe419aad0c82fb0cc4491da3d591bd86426fb4da56d1449beacdeb5e57` |
| 33 | `theorem` | [FinitaryExtensive.isVanKampen_finiteCoproducts_Fin](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Extensive/Variant095f49e237baeb58147d1ef5277c7d0aabfbc3c9642488b81cd755e51883c621.lean/declarations/finitaryextensive-isvankampen-finitecoproducts-fin--9c8aff11ca7b1f04b09c8deb.md) | 444 | `result-track:9c8aff11ca7b1f04b09c8debaef77eeb603f0c0274b6d1c35720f6d56b5f5672` |
| 34 | `theorem` | [FinitaryExtensive.isVanKampen_finiteCoproducts](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Extensive/Variant095f49e237baeb58147d1ef5277c7d0aabfbc3c9642488b81cd755e51883c621.lean/declarations/finitaryextensive-isvankampen-finitecoproducts--84dca00879061b1c4d3a63f1.md) | 463 | `result-track:84dca00879061b1c4d3a63f1be9a7194935c005a0217dd5798b8c848a8e79540` |
| 35 | `lemma` | [FinitaryPreExtensive.hasPullbacks_of_is_coproduct](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Extensive/Variant095f49e237baeb58147d1ef5277c7d0aabfbc3c9642488b81cd755e51883c621.lean/declarations/finitarypreextensive-haspullbacks-of-is-coproduct--84f698fe2a3e26803a922216.md) | 470 | `result-track:84f698fe2a3e26803a92221679c12131bb6440a4f3ae0c3b7c52e8470f5af0dd` |
| 36 | `lemma` | [FinitaryExtensive.mono_ι](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Extensive/Variant095f49e237baeb58147d1ef5277c7d0aabfbc3c9642488b81cd755e51883c621.lean/declarations/finitaryextensive-mono--acf14403185c7f5af38970e4.md) | 504 | `result-track:acf14403185c7f5af38970e4f33c8bdb53819208956ec160560c882fad9242d7` |
| 37 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Extensive/Variant095f49e237baeb58147d1ef5277c7d0aabfbc3c9642488b81cd755e51883c621.lean/declarations/instance--401aa8a5a98e1bcf558fd5ab.md) | 509 | `declaration-track:401aa8a5a98e1bcf558fd5ab2300a3a8edee882bc18fe0a6f5265f6eb0f6e213` |
| 38 | `lemma` | [FinitaryExtensive.isPullback_initial_to](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Extensive/Variant095f49e237baeb58147d1ef5277c7d0aabfbc3c9642488b81cd755e51883c621.lean/declarations/finitaryextensive-ispullback-initial-to--cfe3307a6230a528914ca4fb.md) | 513 | `result-track:cfe3307a6230a528914ca4fb4eea240bcf0028aa9536ac4057a2edb4c0f65a5f` |
| 39 | `lemma` | [FinitaryExtensive.isPullback_initial_to_sigma_ι](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Extensive/Variant095f49e237baeb58147d1ef5277c7d0aabfbc3c9642488b81cd755e51883c621.lean/declarations/finitaryextensive-ispullback-initial-to-sigma--8d4ed3ab8986a9579b970f7a.md) | 519 | `result-track:8d4ed3ab8986a9579b970f7a22772193dc5b4528663ad3ebb1fc920ab599c228` |
| 40 | `instance` | [FinitaryPreExtensive.hasPullbacks_of_inclusions](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Extensive/Variant095f49e237baeb58147d1ef5277c7d0aabfbc3c9642488b81cd755e51883c621.lean/declarations/finitarypreextensive-haspullbacks-of-inclusions--0c755a27542dbdfa23480774.md) | 525 | `declaration-track:0c755a27542dbdfa234807741c7a383ed8d7b1ca47c51c03b78af41e79988cc6` |
| 41 | `lemma` | [FinitaryPreExtensive.sigma_desc_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Extensive/Variant095f49e237baeb58147d1ef5277c7d0aabfbc3c9642488b81cd755e51883c621.lean/declarations/finitarypreextensive-sigma-desc-iso--9759a85e221d31a160a7c9d5.md) | 531 | `result-track:9759a85e221d31a160a7c9d5420416ea34080cc20ca79a838805e61e53ebd947` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
