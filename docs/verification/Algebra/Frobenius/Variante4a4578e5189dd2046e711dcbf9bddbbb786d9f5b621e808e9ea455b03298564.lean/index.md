# Verification target: GRWTSK.Algebra.Frobenius.Variante4a4578e5189dd2046e711dcbf9bddbbb786d9f5b621e808e9ea455b03298564

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0b5a6dfeb91d52bca4316737d654e4d069a5bf4a",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Frobenius/Variante4a4578e5189dd2046e711dcbf9bddbbb786d9f5b621e808e9ea455b03298564.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Frobenius/Variante4a4578e5189dd2046e711dcbf9bddbbb786d9f5b621e808e9ea455b03298564.lean/index.md) · [Full source](../../../../mathematics/Algebra/Frobenius/Variante4a4578e5189dd2046e711dcbf9bddbbb786d9f5b621e808e9ea455b03298564.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0b5a6dfeb91d52bca4316737d654e4d069a5bf4a`.

Source path: `GRWTSK/Algebra/Frobenius/Variante4a4578e5189dd2046e711dcbf9bddbbb786d9f5b621e808e9ea455b03298564.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Frobenius/Variante4a4578e5189dd2046e711dcbf9bddbbb786d9f5b621e808e9ea455b03298564.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Algebra.ZMod` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Multiplicity` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.Perfect` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.WittVector.Basic` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.WittVector.IsPoly` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [frobeniusPolyRat](../../../../mathematics/Algebra/Frobenius/Variante4a4578e5189dd2046e711dcbf9bddbbb786d9f5b621e808e9ea455b03298564.lean/declarations/frobeniuspolyrat--ffc92f5dd53c33304bff7705.md) | 73 | `declaration-track:ffc92f5dd53c33304bff77051c28e5e3bd4948ba16f5f5122b599335862bf0a4` |
| 2 | `theorem` | [bind₁_frobeniusPolyRat_wittPolynomial](../../../../mathematics/Algebra/Frobenius/Variante4a4578e5189dd2046e711dcbf9bddbbb786d9f5b621e808e9ea455b03298564.lean/declarations/bind-frobeniuspolyrat-wittpolynomial--2dfd3d5d551cc1b29bb5b6bb.md) | 76 | `result-track:2dfd3d5d551cc1b29bb5b6bb978659bf284fcf2fddee5e9158cd4acd2505dd44` |
| 3 | `def` | [frobeniusPolyAux](../../../../mathematics/Algebra/Frobenius/Variante4a4578e5189dd2046e711dcbf9bddbbb786d9f5b621e808e9ea455b03298564.lean/declarations/frobeniuspolyaux--d7e86b2011f8915c48f49ddf.md) | 87 | `declaration-track:d7e86b2011f8915c48f49ddfbfb253486d3455c18bd9bcbd596a95aaa7a2edbf` |
| 4 | `theorem` | [frobeniusPolyAux_eq](../../../../mathematics/Algebra/Frobenius/Variante4a4578e5189dd2046e711dcbf9bddbbb786d9f5b621e808e9ea455b03298564.lean/declarations/frobeniuspolyaux-eq--392743f7ef525fa68d0b66e5.md) | 96 | `result-track:392743f7ef525fa68d0b66e58c1c71ca04094da49da38b9542304fa25be0a33c` |
| 5 | `def` | [frobeniusPoly](../../../../mathematics/Algebra/Frobenius/Variante4a4578e5189dd2046e711dcbf9bddbbb786d9f5b621e808e9ea455b03298564.lean/declarations/frobeniuspoly--e80871a77e7cff0600043cf3.md) | 107 | `declaration-track:e80871a77e7cff0600043cf3e8c5cc378ea7a55f3b39ef34d4153f5229f6b785` |
| 6 | `theorem` | [map_frobeniusPoly.key₁](../../../../mathematics/Algebra/Frobenius/Variante4a4578e5189dd2046e711dcbf9bddbbb786d9f5b621e808e9ea455b03298564.lean/declarations/map-frobeniuspoly-key--c7df174b4a8b882251ee9e01.md) | 120 | `result-track:c7df174b4a8b882251ee9e018211faba506bbee8327288d460a7eb30cc6c46a9` |
| 7 | `theorem` | [map_frobeniusPoly.key₂](../../../../mathematics/Algebra/Frobenius/Variante4a4578e5189dd2046e711dcbf9bddbbb786d9f5b621e808e9ea455b03298564.lean/declarations/map-frobeniuspoly-key--7616fa7c095a86cf1a225dd7.md) | 126 | `result-track:7616fa7c095a86cf1a225dd7bfe2e528afb0cbc0ccc54db329831c99d7d92234` |
| 8 | `theorem` | [map_frobeniusPoly](../../../../mathematics/Algebra/Frobenius/Variante4a4578e5189dd2046e711dcbf9bddbbb786d9f5b621e808e9ea455b03298564.lean/declarations/map-frobeniuspoly--21f5e6ab47d008567411ee7f.md) | 137 | `result-track:21f5e6ab47d008567411ee7fa7974170b7948f550f908981c28fc336112f9a06` |
| 9 | `theorem` | [frobeniusPoly_zmod](../../../../mathematics/Algebra/Frobenius/Variante4a4578e5189dd2046e711dcbf9bddbbb786d9f5b621e808e9ea455b03298564.lean/declarations/frobeniuspoly-zmod--70ded413787d67289f3280c4.md) | 189 | `result-track:70ded413787d67289f3280c4f5adb720afe22c93790deab170c44de45d935b9e` |
| 10 | `theorem` | [bind₁_frobeniusPoly_wittPolynomial](../../../../mathematics/Algebra/Frobenius/Variante4a4578e5189dd2046e711dcbf9bddbbb786d9f5b621e808e9ea455b03298564.lean/declarations/bind-frobeniuspoly-wittpolynomial--b405710da0bad0949434356f.md) | 195 | `result-track:b405710da0bad0949434356f56c3684695c13bd0963df1a63c29f022be63ac00` |
| 11 | `def` | [frobeniusFun](../../../../mathematics/Algebra/Frobenius/Variante4a4578e5189dd2046e711dcbf9bddbbb786d9f5b621e808e9ea455b03298564.lean/declarations/frobeniusfun--fdbd38334868d10e92a339f2.md) | 205 | `declaration-track:fdbd38334868d10e92a339f28d3c5e170da6a49fc381d417605098f279154e4a` |
| 12 | `theorem` | [coeff_frobeniusFun](../../../../mathematics/Algebra/Frobenius/Variante4a4578e5189dd2046e711dcbf9bddbbb786d9f5b621e808e9ea455b03298564.lean/declarations/coeff-frobeniusfun--9988c46256dc41d07b746981.md) | 209 | `result-track:9988c46256dc41d07b7469811edddeb74e5c7d81cb11b54cbe38f66fa5f3c1c5` |
| 13 | `instance` | [frobeniusFun_isPoly](../../../../mathematics/Algebra/Frobenius/Variante4a4578e5189dd2046e711dcbf9bddbbb786d9f5b621e808e9ea455b03298564.lean/declarations/frobeniusfun-ispoly--5759d143013039440444fc8c.md) | 218 | `declaration-track:5759d143013039440444fc8cda9712b3d35e8a5dc866560a2ce467f4dbdf69b8` |
| 14 | `theorem` | [ghostComponent_frobeniusFun](../../../../mathematics/Algebra/Frobenius/Variante4a4578e5189dd2046e711dcbf9bddbbb786d9f5b621e808e9ea455b03298564.lean/declarations/ghostcomponent-frobeniusfun--3bb25156cf3198987953afa9.md) | 222 | `result-track:3bb25156cf3198987953afa9f6c7a5ded499460cbe0753d479d963ab6bc5e3d6` |
| 15 | `def` | [frobenius](../../../../mathematics/Algebra/Frobenius/Variante4a4578e5189dd2046e711dcbf9bddbbb786d9f5b621e808e9ea455b03298564.lean/declarations/frobenius--6321a45d15c1119af1900dd5.md) | 234 | `declaration-track:6321a45d15c1119af1900dd53230332205130cc66f4faf216fc54ed90c758b59` |
| 16 | `theorem` | [coeff_frobenius](../../../../mathematics/Algebra/Frobenius/Variante4a4578e5189dd2046e711dcbf9bddbbb786d9f5b621e808e9ea455b03298564.lean/declarations/coeff-frobenius--52566a26b222be3d054b9c71.md) | 253 | `result-track:52566a26b222be3d054b9c717a486ba48a065f712534d0b2845eaa561bc35575` |
| 17 | `theorem` | [ghostComponent_frobenius](../../../../mathematics/Algebra/Frobenius/Variante4a4578e5189dd2046e711dcbf9bddbbb786d9f5b621e808e9ea455b03298564.lean/declarations/ghostcomponent-frobenius--80a85a937a920ac9ffbf6bbd.md) | 258 | `result-track:80a85a937a920ac9ffbf6bbd6eb038c45d740d50ca6bcdee48bade5c73093c31` |
| 18 | `instance` | [frobenius_isPoly](../../../../mathematics/Algebra/Frobenius/Variante4a4578e5189dd2046e711dcbf9bddbbb786d9f5b621e808e9ea455b03298564.lean/declarations/frobenius-ispoly--4d10782d0cae3893c01d27a8.md) | 266 | `declaration-track:4d10782d0cae3893c01d27a8cc9d4a282255cf6be30d5cb0a8c1670f36c01bf7` |
| 19 | `theorem` | [coeff_frobenius_charP](../../../../mathematics/Algebra/Frobenius/Variante4a4578e5189dd2046e711dcbf9bddbbb786d9f5b621e808e9ea455b03298564.lean/declarations/coeff-frobenius-charp--8290b1abec2433e51c38712d.md) | 274 | `result-track:8290b1abec2433e51c38712d1508f0adab2e66c7fd8ca8ef7438c564b8d7e1fb` |
| 20 | `theorem` | [frobenius_eq_map_frobenius](../../../../mathematics/Algebra/Frobenius/Variante4a4578e5189dd2046e711dcbf9bddbbb786d9f5b621e808e9ea455b03298564.lean/declarations/frobenius-eq-map-frobenius--b4b1c97362966aa09245cfbf.md) | 289 | `result-track:b4b1c97362966aa09245cfbfff6e1bbc46c31622acdcd3c80107b7790e4bd715` |
| 21 | `theorem` | [frobenius_zmodp](../../../../mathematics/Algebra/Frobenius/Variante4a4578e5189dd2046e711dcbf9bddbbb786d9f5b621e808e9ea455b03298564.lean/declarations/frobenius-zmodp--ee7257e0c1cd7a2ec7eccc30.md) | 294 | `result-track:ee7257e0c1cd7a2ec7eccc3021d786f2f61a307bb112add97442a18af85ff542` |
| 22 | `def` | [frobeniusEquiv](../../../../mathematics/Algebra/Frobenius/Variante4a4578e5189dd2046e711dcbf9bddbbb786d9f5b621e808e9ea455b03298564.lean/declarations/frobeniusequiv--5ec03587c4551f287870b603.md) | 302 | `declaration-track:5ec03587c4551f287870b603875eff184dd8e118d7526eb11fabef61071100e6` |
| 23 | `theorem` | [frobenius_bijective](../../../../mathematics/Algebra/Frobenius/Variante4a4578e5189dd2046e711dcbf9bddbbb786d9f5b621e808e9ea455b03298564.lean/declarations/frobenius-bijective--9a25cfcfa4dbd9f40107461d.md) | 313 | `result-track:9a25cfcfa4dbd9f40107461dfe204b69b70fecfa951dc5eb8aa1037b6efdd8ff` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
