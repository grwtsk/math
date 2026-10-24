# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.GlobalSections.Variant92b889897a20582ec2afb5381a6aab9e80443f6aaecdfd7cdd462da2e96aa902

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "74520eb1fede755ad7a31e1799c2c888e27dc0e5",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/GlobalSections/Variant92b889897a20582ec2afb5381a6aab9e80443f6aaecdfd7cdd462da2e96aa902.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GlobalSections/Variant92b889897a20582ec2afb5381a6aab9e80443f6aaecdfd7cdd462da2e96aa902.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GlobalSections/Variant92b889897a20582ec2afb5381a6aab9e80443f6aaecdfd7cdd462da2e96aa902.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `74520eb1fede755ad7a31e1799c2c888e27dc0e5`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/GlobalSections/Variant92b889897a20582ec2afb5381a6aab9e80443f6aaecdfd7cdd462da2e96aa902.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/GlobalSections/Variant92b889897a20582ec2afb5381a6aab9e80443f6aaecdfd7cdd462da2e96aa902.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Sites.ConstantSheaf` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [HasGlobalSectionsFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GlobalSections/Variant92b889897a20582ec2afb5381a6aab9e80443f6aaecdfd7cdd462da2e96aa902.lean/declarations/hasglobalsectionsfunctor--2198968fb667d92194afaa84.md) | 56 | `declaration-track:2198968fb667d92194afaa846d50f6a83f1eabf4687876269005ce5bd94b8493` |
| 2 | `def` | [Sheaf.Γ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GlobalSections/Variant92b889897a20582ec2afb5381a6aab9e80443f6aaecdfd7cdd462da2e96aa902.lean/declarations/sheaf--15e55c8d1a324ae6e36eeebf.md) | 60 | `declaration-track:15e55c8d1a324ae6e36eeebfb7625089ad80b94267783162c84017e8f59bddf7` |
| 3 | `def` | [constantSheafΓAdj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GlobalSections/Variant92b889897a20582ec2afb5381a6aab9e80443f6aaecdfd7cdd462da2e96aa902.lean/declarations/constantsheaf-adj--0e93bec7bce31c872961615f.md) | 64 | `declaration-track:0e93bec7bce31c872961615f083ce4cdc84d5d4ad325e4e48939d2e5cbf6c401` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GlobalSections/Variant92b889897a20582ec2afb5381a6aab9e80443f6aaecdfd7cdd462da2e96aa902.lean/declarations/instance--698a781d1aa8bb871bf586b3.md) | 68 | `declaration-track:698a781d1aa8bb871bf586b32dc4a211e528c736372db447220563e8933f9e39` |
| 5 | `instance` | [hasGlobalSectionsFunctor_of_hasTerminal](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GlobalSections/Variant92b889897a20582ec2afb5381a6aab9e80443f6aaecdfd7cdd462da2e96aa902.lean/declarations/hasglobalsectionsfunctor-of-hasterminal--5c8080a66ceb516b6b804fa0.md) | 72 | `declaration-track:5c8080a66ceb516b6b804fa09ba50df413ffff7739141b02348b333cb4bc3d27` |
| 6 | `def` | [Sheaf.ΓNatIsoSheafSections](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GlobalSections/Variant92b889897a20582ec2afb5381a6aab9e80443f6aaecdfd7cdd462da2e96aa902.lean/declarations/sheaf-natisosheafsections--600d18f0ab7e8fec4d9bbdbd.md) | 78 | `declaration-track:600d18f0ab7e8fec4d9bbdbdd0b6f82b6129c5ec3b695aff047cbb79d663abd1` |
| 7 | `instance` | [hasGlobalSectionsFunctor_of_hasLimitsOfShape](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GlobalSections/Variant92b889897a20582ec2afb5381a6aab9e80443f6aaecdfd7cdd462da2e96aa902.lean/declarations/hasglobalsectionsfunctor-of-haslimitsofshape--28f450b5feefe56e54d551bb.md) | 84 | `declaration-track:28f450b5feefe56e54d551bb0a5b3daa9d0e449c6e2d1c0d60860f72aa5bfa0d` |
| 8 | `def` | [Sheaf.ΓNatIsoLim](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GlobalSections/Variant92b889897a20582ec2afb5381a6aab9e80443f6aaecdfd7cdd462da2e96aa902.lean/declarations/sheaf-natisolim--974f91f8afe74d12f4e10634.md) | 91 | `declaration-track:974f91f8afe74d12f4e106345d459b34d18282e6774f2c49e79d90667ac1748e` |
| 9 | `def` | [Sheaf.ΓHomEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GlobalSections/Variant92b889897a20582ec2afb5381a6aab9e80443f6aaecdfd7cdd462da2e96aa902.lean/declarations/sheaf-homequiv--a4d6418e560eef656bae0913.md) | 99 | `declaration-track:a4d6418e560eef656bae091394e741e79c8d861f7695d1c37f797a9bd976de57` |
| 10 | `lemma` | [Sheaf.ΓHomEquiv_naturality_left](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GlobalSections/Variant92b889897a20582ec2afb5381a6aab9e80443f6aaecdfd7cdd462da2e96aa902.lean/declarations/sheaf-homequiv-naturality-left--c429e099e1271e5099afdfd7.md) | 105 | `result-track:c429e099e1271e5099afdfd720db12493f12a2ba9c8399d6a2c88d550e18fbff` |
| 11 | `lemma` | [Sheaf.ΓHomEquiv_naturality_left_symm](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GlobalSections/Variant92b889897a20582ec2afb5381a6aab9e80443f6aaecdfd7cdd462da2e96aa902.lean/declarations/sheaf-homequiv-naturality-left-symm--dc189e42b20ff61b15a28d3a.md) | 112 | `result-track:dc189e42b20ff61b15a28d3a908eb3b4e573fa51326f66361eb639cf952ed479` |
| 12 | `lemma` | [Sheaf.ΓHomEquiv_naturality_right](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GlobalSections/Variant92b889897a20582ec2afb5381a6aab9e80443f6aaecdfd7cdd462da2e96aa902.lean/declarations/sheaf-homequiv-naturality-right--c0896a5b1591a2bbb6f681e6.md) | 119 | `result-track:c0896a5b1591a2bbb6f681e69937e918f3db02d8c0953bad48777151c39a3493` |
| 13 | `lemma` | [Sheaf.ΓHomEquiv_naturality_right_symm](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GlobalSections/Variant92b889897a20582ec2afb5381a6aab9e80443f6aaecdfd7cdd462da2e96aa902.lean/declarations/sheaf-homequiv-naturality-right-symm--786c50ece1f5595bb3c833ea.md) | 126 | `result-track:786c50ece1f5595bb3c833ea67b295084019eb6280226d917f20abc647e7509b` |
| 14 | `def` | [Sheaf.coneΓ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GlobalSections/Variant92b889897a20582ec2afb5381a6aab9e80443f6aaecdfd7cdd462da2e96aa902.lean/declarations/sheaf-cone--793d27ceec502fc7623e9591.md) | 135 | `declaration-track:793d27ceec502fc7623e95919f97cc39a263aacb6e0a048e1757d37dd5d5d5c0` |
| 15 | `def` | [Sheaf.isLimitConeΓ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GlobalSections/Variant92b889897a20582ec2afb5381a6aab9e80443f6aaecdfd7cdd462da2e96aa902.lean/declarations/sheaf-islimitcone--ca99660c8832dfabdc36ad3c.md) | 141 | `declaration-track:ca99660c8832dfabdc36ad3c75b8b2221f85540b74cb8981b68b84a5b10fd459` |
| 16 | `def` | [Sheaf.ΓRes](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GlobalSections/Variant92b889897a20582ec2afb5381a6aab9e80443f6aaecdfd7cdd462da2e96aa902.lean/declarations/sheaf-res--be9486286ef167dbf342b351.md) | 152 | `declaration-track:be9486286ef167dbf342b351edd2c7b049655bf2940dd88c5dfe5229d5d93c10` |
| 17 | `lemma` | [Sheaf.ΓRes_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GlobalSections/Variant92b889897a20582ec2afb5381a6aab9e80443f6aaecdfd7cdd462da2e96aa902.lean/declarations/sheaf-res-map--d550637e34820cddbfe4de2c.md) | 157 | `result-track:d550637e34820cddbfe4de2cf8b09226705531cd74e4a9a323a56bea7c7112f7` |
| 18 | `lemma` | [Sheaf.coneΓ_π_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GlobalSections/Variant92b889897a20582ec2afb5381a6aab9e80443f6aaecdfd7cdd462da2e96aa902.lean/declarations/sheaf-cone-app--05e85e230eb86b7bf9e003c0.md) | 162 | `result-track:05e85e230eb86b7bf9e003c036eef06f4fcdd653c2d60f7c91da8706a63e6bcb` |
| 19 | `lemma` | [Sheaf.ΓRes_naturality](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GlobalSections/Variant92b889897a20582ec2afb5381a6aab9e80443f6aaecdfd7cdd462da2e96aa902.lean/declarations/sheaf-res-naturality--0753d1959c0b56e40d101b0e.md) | 165 | `result-track:0753d1959c0b56e40d101b0e7d488a14ac0e1b9813360a590c42913f20e8461b` |
| 20 | `def` | [Sheaf.natTransΓRes](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GlobalSections/Variant92b889897a20582ec2afb5381a6aab9e80443f6aaecdfd7cdd462da2e96aa902.lean/declarations/sheaf-nattrans-res--066fc8dbb3b4bc058c1f170a.md) | 175 | `declaration-track:066fc8dbb3b4bc058c1f170a88a80bca3efa4dfacb480b233035a4b16f0161d5` |
| 21 | `def` | [Sheaf.ΓObjEquivSections](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GlobalSections/Variant92b889897a20582ec2afb5381a6aab9e80443f6aaecdfd7cdd462da2e96aa902.lean/declarations/sheaf-objequivsections--1c3654f3c05fc9a3c34901f5.md) | 185 | `declaration-track:1c3654f3c05fc9a3c34901f50833b2775e59cde25807838ba5e68864378468f4` |
| 22 | `lemma` | [Sheaf.ΓObjEquivSections_naturality](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GlobalSections/Variant92b889897a20582ec2afb5381a6aab9e80443f6aaecdfd7cdd462da2e96aa902.lean/declarations/sheaf-objequivsections-naturality--fdc4be19e49a78400d62626d.md) | 191 | `result-track:fdc4be19e49a78400d62626de8deacfbd6c4959d0d0e60b1e33aa4a1e765f949` |
| 23 | `lemma` | [Sheaf.ΓObjEquivSections_naturality_symm](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GlobalSections/Variant92b889897a20582ec2afb5381a6aab9e80443f6aaecdfd7cdd462da2e96aa902.lean/declarations/sheaf-objequivsections-naturality-symm--600f15598edf53c5b1443184.md) | 199 | `result-track:600f15598edf53c5b144318428f4b537ba800386dec40e15cad7943eb5904a64` |
| 24 | `def` | [Sheaf.ΓNatIsoSectionsFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GlobalSections/Variant92b889897a20582ec2afb5381a6aab9e80443f6aaecdfd7cdd462da2e96aa902.lean/declarations/sheaf-natisosectionsfunctor--c28578321f60a9482527b37e.md) | 207 | `declaration-track:c28578321f60a9482527b37eb2bfafecd141279279cd19efb16047220986fcb4` |
| 25 | `def` | [Sheaf.ΓObjEquivHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GlobalSections/Variant92b889897a20582ec2afb5381a6aab9e80443f6aaecdfd7cdd462da2e96aa902.lean/declarations/sheaf-objequivhom--4593600dbd5754bb93f45107.md) | 215 | `declaration-track:4593600dbd5754bb93f451074a6c386ba1f9341cf6b92e9709f16989f99b2b07` |
| 26 | `lemma` | [Sheaf.ΓObjEquivHom_naturality](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GlobalSections/Variant92b889897a20582ec2afb5381a6aab9e80443f6aaecdfd7cdd462da2e96aa902.lean/declarations/sheaf-objequivhom-naturality--a3954196c3d66e025a8a659a.md) | 220 | `result-track:a3954196c3d66e025a8a659a4ce464cb26825e0678c73784643acdf4daaa7bb8` |
| 27 | `lemma` | [Sheaf.ΓObjEquivHom_naturality_symm](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GlobalSections/Variant92b889897a20582ec2afb5381a6aab9e80443f6aaecdfd7cdd462da2e96aa902.lean/declarations/sheaf-objequivhom-naturality-symm--bd1db519099a925557f9232c.md) | 226 | `result-track:bd1db519099a925557f9232cd2c4d2ca1ff4f3841723b665bff6b6757977f4b2` |
| 28 | `def` | [Sheaf.ΓNatIsoCoyoneda](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GlobalSections/Variant92b889897a20582ec2afb5381a6aab9e80443f6aaecdfd7cdd462da2e96aa902.lean/declarations/sheaf-natisocoyoneda--f70e28d5496382ee1beccb57.md) | 234 | `declaration-track:f70e28d5496382ee1beccb57f62cf1bbc00590a62167fda5b08e41a2c41dbff3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
