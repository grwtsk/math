# Verification target: GRWTSK.Algebra.Frobenius.Variantc227e2a6f352eb5bc6fd7ee469ded5a79aa2afc7acf7e3bf45f50f3f3191cde9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "567d68719bde002381f327a2df51572cd75fa4c2",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Frobenius/Variantc227e2a6f352eb5bc6fd7ee469ded5a79aa2afc7acf7e3bf45f50f3f3191cde9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Frobenius/Variantc227e2a6f352eb5bc6fd7ee469ded5a79aa2afc7acf7e3bf45f50f3f3191cde9.lean/index.md) · [Full source](../../../../mathematics/Algebra/Frobenius/Variantc227e2a6f352eb5bc6fd7ee469ded5a79aa2afc7acf7e3bf45f50f3f3191cde9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `567d68719bde002381f327a2df51572cd75fa4c2`.

Source path: `GRWTSK/Algebra/Frobenius/Variantc227e2a6f352eb5bc6fd7ee469ded5a79aa2afc7acf7e3bf45f50f3f3191cde9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Frobenius/Variantc227e2a6f352eb5bc6fd7ee469ded5a79aa2afc7acf7e3bf45f50f3f3191cde9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Nat.Multiplicity` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.ZMod.Algebra` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.WittVector.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.WittVector.IsPoly` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.Perfect` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [frobeniusPolyRat](../../../../mathematics/Algebra/Frobenius/Variantc227e2a6f352eb5bc6fd7ee469ded5a79aa2afc7acf7e3bf45f50f3f3191cde9.lean/declarations/frobeniuspolyrat--dcf8278b84ebcc7a10c2871e.md) | 69 | `declaration-track:dcf8278b84ebcc7a10c2871e79d6469164c3900da378cd4674caff23c0d4ef0e` |
| 2 | `theorem` | [bind₁_frobeniusPolyRat_wittPolynomial](../../../../mathematics/Algebra/Frobenius/Variantc227e2a6f352eb5bc6fd7ee469ded5a79aa2afc7acf7e3bf45f50f3f3191cde9.lean/declarations/bind-frobeniuspolyrat-wittpolynomial--c6ce484be67bf5d53cb7ef16.md) | 73 | `result-track:c6ce484be67bf5d53cb7ef16f92c6fd7d06511e42da4c3ae2f37833e2c7a252e` |
| 3 | `def` | [pnat_multiplicity](../../../../mathematics/Algebra/Frobenius/Variantc227e2a6f352eb5bc6fd7ee469ded5a79aa2afc7acf7e3bf45f50f3f3191cde9.lean/declarations/pnat-multiplicity--00d014fd953267b4df7b67d4.md) | 81 | `declaration-track:00d014fd953267b4df7b67d42ecdffae80f089b195d6e8e8f5b065009479f711` |
| 4 | `def` | [frobeniusPolyAux](../../../../mathematics/Algebra/Frobenius/Variantc227e2a6f352eb5bc6fd7ee469ded5a79aa2afc7acf7e3bf45f50f3f3191cde9.lean/declarations/frobeniuspolyaux--bec9391035930474ae326620.md) | 90 | `declaration-track:bec9391035930474ae326620219b1d2b09c3a6fc723440406a010dad2cd612cc` |
| 5 | `theorem` | [frobeniusPolyAux_eq](../../../../mathematics/Algebra/Frobenius/Variantc227e2a6f352eb5bc6fd7ee469ded5a79aa2afc7acf7e3bf45f50f3f3191cde9.lean/declarations/frobeniuspolyaux-eq--4ff450ec8029ac7a62c9113c.md) | 99 | `result-track:4ff450ec8029ac7a62c9113c2a7f92e1d9ec156d865e9bdf4e83ae6a2bd8023a` |
| 6 | `def` | [frobeniusPoly](../../../../mathematics/Algebra/Frobenius/Variantc227e2a6f352eb5bc6fd7ee469ded5a79aa2afc7acf7e3bf45f50f3f3191cde9.lean/declarations/frobeniuspoly--f3011bb89a6c6c4c3f364460.md) | 111 | `declaration-track:f3011bb89a6c6c4c3f364460efdf10952d9d2f89ad388d0bea0c25637767dadf` |
| 7 | `theorem` | [map_frobeniusPoly.key₁](../../../../mathematics/Algebra/Frobenius/Variantc227e2a6f352eb5bc6fd7ee469ded5a79aa2afc7acf7e3bf45f50f3f3191cde9.lean/declarations/map-frobeniuspoly-key--269752c154c90297ebcf47cf.md) | 125 | `result-track:269752c154c90297ebcf47cffc186aaba8da81fc400fb66974b694254f499306` |
| 8 | `theorem` | [map_frobeniusPoly.key₂](../../../../mathematics/Algebra/Frobenius/Variantc227e2a6f352eb5bc6fd7ee469ded5a79aa2afc7acf7e3bf45f50f3f3191cde9.lean/declarations/map-frobeniuspoly-key--7521f7753a0ec6d630def2e8.md) | 133 | `result-track:7521f7753a0ec6d630def2e8d210a2a078a55a44938cf1d771945c2819329c85` |
| 9 | `theorem` | [map_frobeniusPoly](../../../../mathematics/Algebra/Frobenius/Variantc227e2a6f352eb5bc6fd7ee469ded5a79aa2afc7acf7e3bf45f50f3f3191cde9.lean/declarations/map-frobeniuspoly--ca5f548926cb416e3609ab8f.md) | 145 | `result-track:ca5f548926cb416e3609ab8f74223b05c86384268ec5079fe0c9872b8970d2f9` |
| 10 | `theorem` | [frobeniusPoly_zmod](../../../../mathematics/Algebra/Frobenius/Variantc227e2a6f352eb5bc6fd7ee469ded5a79aa2afc7acf7e3bf45f50f3f3191cde9.lean/declarations/frobeniuspoly-zmod--c00b57d6822d4afe3a00efdc.md) | 199 | `result-track:c00b57d6822d4afe3a00efdc1e87205d2f4b05a96646405d12d24d43e0d83145` |
| 11 | `theorem` | [bind₁_frobeniusPoly_wittPolynomial](../../../../mathematics/Algebra/Frobenius/Variantc227e2a6f352eb5bc6fd7ee469ded5a79aa2afc7acf7e3bf45f50f3f3191cde9.lean/declarations/bind-frobeniuspoly-wittpolynomial--2320db6b432112f743849dba.md) | 206 | `result-track:2320db6b432112f743849dba5348ac621a93d967ef39e1080043696b5ea0d55b` |
| 12 | `def` | [frobeniusFun](../../../../mathematics/Algebra/Frobenius/Variantc227e2a6f352eb5bc6fd7ee469ded5a79aa2afc7acf7e3bf45f50f3f3191cde9.lean/declarations/frobeniusfun--bf72f1790bb460c55542a2c0.md) | 217 | `declaration-track:bf72f1790bb460c55542a2c08be734a82b32131283a385ea66fe7470be1ce349` |
| 13 | `theorem` | [coeff_frobeniusFun](../../../../mathematics/Algebra/Frobenius/Variantc227e2a6f352eb5bc6fd7ee469ded5a79aa2afc7acf7e3bf45f50f3f3191cde9.lean/declarations/coeff-frobeniusfun--40c95efb9f56b074bf8ea9e6.md) | 221 | `result-track:40c95efb9f56b074bf8ea9e69d6319ccc339fed606fe536d2b88455c668bf4b5` |
| 14 | `instance` | [frobeniusFun_isPoly](../../../../mathematics/Algebra/Frobenius/Variantc227e2a6f352eb5bc6fd7ee469ded5a79aa2afc7acf7e3bf45f50f3f3191cde9.lean/declarations/frobeniusfun-ispoly--2a22b2827e1bab75d8bfc759.md) | 232 | `declaration-track:2a22b2827e1bab75d8bfc759bbe21a2564fa2c82a908accf9ef1151299b4ca28` |
| 15 | `theorem` | [ghostComponent_frobeniusFun](../../../../mathematics/Algebra/Frobenius/Variantc227e2a6f352eb5bc6fd7ee469ded5a79aa2afc7acf7e3bf45f50f3f3191cde9.lean/declarations/ghostcomponent-frobeniusfun--2fe8ca760d2343c20e93f598.md) | 239 | `result-track:2fe8ca760d2343c20e93f5983061eec8b0fcaeb68ea9436c0f9634abcdb0fae6` |
| 16 | `def` | [frobenius](../../../../mathematics/Algebra/Frobenius/Variantc227e2a6f352eb5bc6fd7ee469ded5a79aa2afc7acf7e3bf45f50f3f3191cde9.lean/declarations/frobenius--9f39c3d46e98417b2b1db4b2.md) | 252 | `declaration-track:9f39c3d46e98417b2b1db4b2577f9253065f28517a14fbc39929c397c93ce0b7` |
| 17 | `theorem` | [coeff_frobenius](../../../../mathematics/Algebra/Frobenius/Variantc227e2a6f352eb5bc6fd7ee469ded5a79aa2afc7acf7e3bf45f50f3f3191cde9.lean/declarations/coeff-frobenius--8e752f7c8624977a89d48654.md) | 272 | `result-track:8e752f7c8624977a89d48654ae66c35c7f17574cad037f90b84b6eda40e77c30` |
| 18 | `theorem` | [ghostComponent_frobenius](../../../../mathematics/Algebra/Frobenius/Variantc227e2a6f352eb5bc6fd7ee469ded5a79aa2afc7acf7e3bf45f50f3f3191cde9.lean/declarations/ghostcomponent-frobenius--fc3cbaeaac477f7d34dc9763.md) | 278 | `result-track:fc3cbaeaac477f7d34dc9763ce06266fd42471510da52f4b29cbe84f17571eb5` |
| 19 | `instance` | [frobenius_isPoly](../../../../mathematics/Algebra/Frobenius/Variantc227e2a6f352eb5bc6fd7ee469ded5a79aa2afc7acf7e3bf45f50f3f3191cde9.lean/declarations/frobenius-ispoly--dfb0d2bd18e39058d807929a.md) | 287 | `declaration-track:dfb0d2bd18e39058d807929a42ef9ab07e5debadf209b4377b6e638ca8bfe912` |
| 20 | `theorem` | [coeff_frobenius_charP](../../../../mathematics/Algebra/Frobenius/Variantc227e2a6f352eb5bc6fd7ee469ded5a79aa2afc7acf7e3bf45f50f3f3191cde9.lean/declarations/coeff-frobenius-charp--9d7b52681613f5f56d6d5ae1.md) | 296 | `result-track:9d7b52681613f5f56d6d5ae1f355b2972a5aeec3e7eb76dd37324a149d293159` |
| 21 | `theorem` | [frobenius_eq_map_frobenius](../../../../mathematics/Algebra/Frobenius/Variantc227e2a6f352eb5bc6fd7ee469ded5a79aa2afc7acf7e3bf45f50f3f3191cde9.lean/declarations/frobenius-eq-map-frobenius--8dfcb9ae932fab4106dc64fc.md) | 312 | `result-track:8dfcb9ae932fab4106dc64fcbe83ead864d2d162fa638bd790b7148e8507f40f` |
| 22 | `theorem` | [frobenius_zmodp](../../../../mathematics/Algebra/Frobenius/Variantc227e2a6f352eb5bc6fd7ee469ded5a79aa2afc7acf7e3bf45f50f3f3191cde9.lean/declarations/frobenius-zmodp--3608a106d11b3958e90acb23.md) | 318 | `result-track:3608a106d11b3958e90acb2389db17adeb48af31445822cf63c49d64139b02d5` |
| 23 | `def` | [frobeniusEquiv](../../../../mathematics/Algebra/Frobenius/Variantc227e2a6f352eb5bc6fd7ee469ded5a79aa2afc7acf7e3bf45f50f3f3191cde9.lean/declarations/frobeniusequiv--cd37b9410e08aae5b4c143a6.md) | 326 | `declaration-track:cd37b9410e08aae5b4c143a6f34f22bd50fab078495265ecb5d8f6e4ddf040b8` |
| 24 | `theorem` | [frobenius_bijective](../../../../mathematics/Algebra/Frobenius/Variantc227e2a6f352eb5bc6fd7ee469ded5a79aa2afc7acf7e3bf45f50f3f3191cde9.lean/declarations/frobenius-bijective--3ec218d96579f07418241b74.md) | 338 | `result-track:3ec218d96579f07418241b74731cbd69723a916aca68402ffd1db818bf81666f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
