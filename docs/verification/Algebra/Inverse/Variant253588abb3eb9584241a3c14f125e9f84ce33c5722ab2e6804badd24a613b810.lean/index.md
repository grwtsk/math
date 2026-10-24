# Verification target: GRWTSK.Algebra.Inverse.Variant253588abb3eb9584241a3c14f125e9f84ce33c5722ab2e6804badd24a613b810

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e84a464384761bdcae11508a1b1eabb328241e9d",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Inverse/Variant253588abb3eb9584241a3c14f125e9f84ce33c5722ab2e6804badd24a613b810.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Inverse/Variant253588abb3eb9584241a3c14f125e9f84ce33c5722ab2e6804badd24a613b810.lean/index.md) · [Full source](../../../../mathematics/Algebra/Inverse/Variant253588abb3eb9584241a3c14f125e9f84ce33c5722ab2e6804badd24a613b810.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e84a464384761bdcae11508a1b1eabb328241e9d`.

Source path: `GRWTSK/Algebra/Inverse/Variant253588abb3eb9584241a3c14f125e9f84ce33c5722ab2e6804badd24a613b810.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Inverse/Variant253588abb3eb9584241a3c14f125e9f84ce33c5722ab2e6804badd24a613b810.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [inv.aux](../../../../mathematics/Algebra/Inverse/Variant253588abb3eb9584241a3c14f125e9f84ce33c5722ab2e6804badd24a613b810.lean/declarations/inv-aux--93610b1e16fa419ba6369859.md) | 73 | `declaration-track:93610b1e16fa419ba636985974ab68e9da1832af64a8656752b5c8900fbdad6f` |
| 2 | `theorem` | [coeff_inv_aux](../../../../mathematics/Algebra/Inverse/Variant253588abb3eb9584241a3c14f125e9f84ce33c5722ab2e6804badd24a613b810.lean/declarations/coeff-inv-aux--d884b099ccdea52e5f54b3b3.md) | 82 | `result-track:d884b099ccdea52e5f54b3b324a5c4de6006ec1babfb1937c902fe9c4aa517d2` |
| 3 | `def` | [invOfUnit](../../../../mathematics/Algebra/Inverse/Variant253588abb3eb9584241a3c14f125e9f84ce33c5722ab2e6804badd24a613b810.lean/declarations/invofunit--65d9fc61680051200ab36355.md) | 94 | `declaration-track:65d9fc61680051200ab3635534b610f859cdcc04111067081f43ace100d48b18` |
| 4 | `theorem` | [coeff_invOfUnit](../../../../mathematics/Algebra/Inverse/Variant253588abb3eb9584241a3c14f125e9f84ce33c5722ab2e6804badd24a613b810.lean/declarations/coeff-invofunit--8608b57c11443ab192a16a6c.md) | 97 | `result-track:8608b57c11443ab192a16a6c7358c7891dab2615aed408c7d78fb936ee7cddd6` |
| 5 | `theorem` | [constantCoeff_invOfUnit](../../../../mathematics/Algebra/Inverse/Variant253588abb3eb9584241a3c14f125e9f84ce33c5722ab2e6804badd24a613b810.lean/declarations/constantcoeff-invofunit--7e7da360d6462778ce68933d.md) | 107 | `result-track:7e7da360d6462778ce68933d9ea9100ef7d9d926784fefd8c66673d771be3d95` |
| 6 | `theorem` | [mul_invOfUnit](../../../../mathematics/Algebra/Inverse/Variant253588abb3eb9584241a3c14f125e9f84ce33c5722ab2e6804badd24a613b810.lean/declarations/mul-invofunit--0ccace3785af054a6c119d65.md) | 113 | `result-track:0ccace3785af054a6c119d656436d60d79e1e3378e94cc85fa190a5156edf3e0` |
| 7 | `theorem` | [invOfUnit_mul](../../../../mathematics/Algebra/Inverse/Variant253588abb3eb9584241a3c14f125e9f84ce33c5722ab2e6804badd24a613b810.lean/declarations/invofunit-mul--05f34d1d6b5d5b2a0beb9945.md) | 139 | `result-track:05f34d1d6b5d5b2a0beb9945984c286526ce54a4ee4da9899c5c4c88123135fb` |
| 8 | `theorem` | [isUnit_iff_constantCoeff](../../../../mathematics/Algebra/Inverse/Variant253588abb3eb9584241a3c14f125e9f84ce33c5722ab2e6804badd24a613b810.lean/declarations/isunit-iff-constantcoeff--69018590a166faccfc75596c.md) | 146 | `result-track:69018590a166faccfc75596ced9b53082a3ba376b821f4ada20b9d6a779fabc6` |
| 9 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Inverse/Variant253588abb3eb9584241a3c14f125e9f84ce33c5722ab2e6804badd24a613b810.lean/declarations/instance--6f10ee13fa6098358d50f4c2.md) | 160 | `declaration-track:6f10ee13fa6098358d50f4c23708f620ffb4a8908cf1a84c0f4b06d85be11b5a` |
| 10 | `theorem` | [map.isLocalHom](../../../../mathematics/Algebra/Inverse/Variant253588abb3eb9584241a3c14f125e9f84ce33c5722ab2e6804badd24a613b810.lean/declarations/map-islocalhom--89ad3c8072227c366ccc44db.md) | 180 | `result-track:89ad3c8072227c366ccc44db0220c4c78532f0f78c55fcb27a57f76b1569f47e` |
| 11 | `def` | [inv](../../../../mathematics/Algebra/Inverse/Variant253588abb3eb9584241a3c14f125e9f84ce33c5722ab2e6804badd24a613b810.lean/declarations/inv--a95b5cc421232401d8269263.md) | 199 | `declaration-track:a95b5cc421232401d82692636f9f5db9be03924f66d5e785caa2105e2a26e424` |
| 12 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Inverse/Variant253588abb3eb9584241a3c14f125e9f84ce33c5722ab2e6804badd24a613b810.lean/declarations/instance--d6141383511522379861e3a0.md) | 202 | `declaration-track:d6141383511522379861e3a07d1a3d00edd249485d06423613e2f99e9b62e310` |
| 13 | `theorem` | [coeff_inv](../../../../mathematics/Algebra/Inverse/Variant253588abb3eb9584241a3c14f125e9f84ce33c5722ab2e6804badd24a613b810.lean/declarations/coeff-inv--d182a3c7f0dbbbc9fbc56ece.md) | 205 | `result-track:d182a3c7f0dbbbc9fbc56ece229b9e14ae49edd7c0137bdb80cec4c9b0f6325b` |
| 14 | `theorem` | [constantCoeff_inv](../../../../mathematics/Algebra/Inverse/Variant253588abb3eb9584241a3c14f125e9f84ce33c5722ab2e6804badd24a613b810.lean/declarations/constantcoeff-inv--91cb4572e46c80532b36e126.md) | 214 | `result-track:91cb4572e46c80532b36e12665949929eca72c50983cd2d2ea4a533f2d5c0228` |
| 15 | `theorem` | [inv_eq_zero](../../../../mathematics/Algebra/Inverse/Variant253588abb3eb9584241a3c14f125e9f84ce33c5722ab2e6804badd24a613b810.lean/declarations/inv-eq-zero--43b0182f631afa3ed30ed8a1.md) | 219 | `result-track:43b0182f631afa3ed30ed8a1734b8782756f90dbb64817710da67715ff2f1740` |
| 16 | `theorem` | [zero_inv](../../../../mathematics/Algebra/Inverse/Variant253588abb3eb9584241a3c14f125e9f84ce33c5722ab2e6804badd24a613b810.lean/declarations/zero-inv--14fe78994d70aa427829ae37.md) | 228 | `result-track:14fe78994d70aa427829ae379064183560f4652e19474e2a0529abbb91c19e57` |
| 17 | `theorem` | [invOfUnit_eq](../../../../mathematics/Algebra/Inverse/Variant253588abb3eb9584241a3c14f125e9f84ce33c5722ab2e6804badd24a613b810.lean/declarations/invofunit-eq--54653f7ad5ca59d10f5c8cf0.md) | 232 | `result-track:54653f7ad5ca59d10f5c8cf0d4ff7c06a04461ca84043def95e3916efc2af0e2` |
| 18 | `theorem` | [invOfUnit_eq'](../../../../mathematics/Algebra/Inverse/Variant253588abb3eb9584241a3c14f125e9f84ce33c5722ab2e6804badd24a613b810.lean/declarations/invofunit-eq--6336dc7b5b71e6d63d705ee5.md) | 237 | `result-track:6336dc7b5b71e6d63d705ee5bb9a1bf16110fdd1a3e60c579e46a01f58007a63` |
| 19 | `theorem` | [mul_inv_cancel](../../../../mathematics/Algebra/Inverse/Variant253588abb3eb9584241a3c14f125e9f84ce33c5722ab2e6804badd24a613b810.lean/declarations/mul-inv-cancel--b91740306c9c3d5aeec775f3.md) | 245 | `result-track:b91740306c9c3d5aeec775f31e755cce6a68bae3167671b2c85d25fd9c3829d6` |
| 20 | `theorem` | [inv_mul_cancel](../../../../mathematics/Algebra/Inverse/Variant253588abb3eb9584241a3c14f125e9f84ce33c5722ab2e6804badd24a613b810.lean/declarations/inv-mul-cancel--dabdc1f4b1e70bf84808342f.md) | 249 | `result-track:dabdc1f4b1e70bf84808342f6001e5c6f82d9f9fe37a5e6533d040f04a21b714` |
| 21 | `theorem` | [eq_mul_inv_iff_mul_eq](../../../../mathematics/Algebra/Inverse/Variant253588abb3eb9584241a3c14f125e9f84ce33c5722ab2e6804badd24a613b810.lean/declarations/eq-mul-inv-iff-mul-eq--d2f616e2dc776aa7145525fd.md) | 252 | `result-track:d2f616e2dc776aa7145525fde22435b96e22404d96e091b9a34f1b1d74845612` |
| 22 | `theorem` | [eq_inv_iff_mul_eq_one](../../../../mathematics/Algebra/Inverse/Variant253588abb3eb9584241a3c14f125e9f84ce33c5722ab2e6804badd24a613b810.lean/declarations/eq-inv-iff-mul-eq-one--6b33923fe3427271514d76ca.md) | 257 | `result-track:6b33923fe3427271514d76ca1eab23780f1ff2c501c3187047039c029c833716` |
| 23 | `theorem` | [inv_eq_iff_mul_eq_one](../../../../mathematics/Algebra/Inverse/Variant253588abb3eb9584241a3c14f125e9f84ce33c5722ab2e6804badd24a613b810.lean/declarations/inv-eq-iff-mul-eq-one--3034807f049f13afd41fc979.md) | 260 | `result-track:3034807f049f13afd41fc979fa5b21b4b8823ddaab2aed44b21e7b3207ecd9dc` |
| 24 | `theorem` | [mul_inv_rev](../../../../mathematics/Algebra/Inverse/Variant253588abb3eb9584241a3c14f125e9f84ce33c5722ab2e6804badd24a613b810.lean/declarations/mul-inv-rev--5600180715ba2ba7d1138d7f.md) | 264 | `result-track:5600180715ba2ba7d1138d7f0a7f66653081362aaf087906faa9cdec7938a5a4` |
| 25 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Inverse/Variant253588abb3eb9584241a3c14f125e9f84ce33c5722ab2e6804badd24a613b810.lean/declarations/instance--0637d9180f64cede41991ece.md) | 276 | `declaration-track:0637d9180f64cede41991ece530837d6d1007207f7a12ebceb93b6fd5c0c99c7` |
| 26 | `theorem` | [inv_pow](../../../../mathematics/Algebra/Inverse/Variant253588abb3eb9584241a3c14f125e9f84ce33c5722ab2e6804badd24a613b810.lean/declarations/inv-pow--cf380711ceb29767b403741a.md) | 284 | `result-track:cf380711ceb29767b403741a2e208f6408949062f2fc058f78b0f01d59aa9f08` |
| 27 | `theorem` | [C_inv](../../../../mathematics/Algebra/Inverse/Variant253588abb3eb9584241a3c14f125e9f84ce33c5722ab2e6804badd24a613b810.lean/declarations/c-inv--d8cea247011fdd3efa575065.md) | 289 | `result-track:d8cea247011fdd3efa575065703ce66d4d69f78e411c8d911118c4eccf47f30f` |
| 28 | `theorem` | [X_inv](../../../../mathematics/Algebra/Inverse/Variant253588abb3eb9584241a3c14f125e9f84ce33c5722ab2e6804badd24a613b810.lean/declarations/x-inv--eec62d215ff9cdaa5cfe5750.md) | 296 | `result-track:eec62d215ff9cdaa5cfe5750c29b841e42260fb4e36091731cfbbfe6aaad95df` |
| 29 | `theorem` | [smul_inv](../../../../mathematics/Algebra/Inverse/Variant253588abb3eb9584241a3c14f125e9f84ce33c5722ab2e6804badd24a613b810.lean/declarations/smul-inv--66a95e941b340bed236be5a8.md) | 300 | `result-track:66a95e941b340bed236be5a88ae6bd2b1dcf66f1d75f887a6f812e222987a8bc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
