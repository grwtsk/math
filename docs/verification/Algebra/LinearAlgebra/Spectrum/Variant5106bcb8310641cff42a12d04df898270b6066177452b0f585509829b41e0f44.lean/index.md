# Verification target: GRWTSK.Algebra.LinearAlgebra.Spectrum.Variant5106bcb8310641cff42a12d04df898270b6066177452b0f585509829b41e0f44

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d099425d172b3dc3b703d8db4244803ec590d509",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Spectrum/Variant5106bcb8310641cff42a12d04df898270b6066177452b0f585509829b41e0f44.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Spectrum/Variant5106bcb8310641cff42a12d04df898270b6066177452b0f585509829b41e0f44.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Spectrum/Variant5106bcb8310641cff42a12d04df898270b6066177452b0f585509829b41e0f44.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d099425d172b3dc3b703d8db4244803ec590d509`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Spectrum/Variant5106bcb8310641cff42a12d04df898270b6066177452b0f585509829b41e0f44.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Spectrum/Variant5106bcb8310641cff42a12d04df898270b6066177452b0f585509829b41e0f44.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [finite_real_spectrum](../../../../../mathematics/Algebra/LinearAlgebra/Spectrum/Variant5106bcb8310641cff42a12d04df898270b6066177452b0f585509829b41e0f44.lean/declarations/finite-real-spectrum--2b3315e52e16984220ea744e.md) | 41 | `result-track:2b3315e52e16984220ea744ee82bf9952288e4dc9efb7f0c1880b332a0c6ed5c` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Spectrum/Variant5106bcb8310641cff42a12d04df898270b6066177452b0f585509829b41e0f44.lean/declarations/instance--9046b8ed60d6a97da6167fd8.md) | 45 | `declaration-track:9046b8ed60d6a97da6167fd826409e699baf7558e4f35327cfda75229ac73930` |
| 3 | `theorem` | [spectrum_toLpLin](../../../../../mathematics/Algebra/LinearAlgebra/Spectrum/Variant5106bcb8310641cff42a12d04df898270b6066177452b0f585509829b41e0f44.lean/declarations/spectrum-tolplin--1102804f6819103c3d290638.md) | 48 | `result-track:1102804f6819103c3d2906381bf46c7a8b5be788fc5e155aba23a73b8b8ea24a` |
| 4 | `theorem` | [spectralRadius_transpose](../../../../../mathematics/Algebra/LinearAlgebra/Spectrum/Variant5106bcb8310641cff42a12d04df898270b6066177452b0f585509829b41e0f44.lean/declarations/spectralradius-transpose--525bc4b6988796e61525c7e8.md) | 53 | `result-track:525bc4b6988796e61525c7e82380eb00f87ccd90e7b3c762bbef94805b96aef3` |
| 5 | `def` | [eigenvalues₀](../../../../../mathematics/Algebra/LinearAlgebra/Spectrum/Variant5106bcb8310641cff42a12d04df898270b6066177452b0f585509829b41e0f44.lean/declarations/eigenvalues--2086a0c72408fc50618909f4.md) | 68 | `declaration-track:2086a0c72408fc50618909f419e7dcdd55d58921771dd784c430724361b2e5ad` |
| 6 | `lemma` | [eigenvalues₀_antitone](../../../../../mathematics/Algebra/LinearAlgebra/Spectrum/Variant5106bcb8310641cff42a12d04df898270b6066177452b0f585509829b41e0f44.lean/declarations/eigenvalues-antitone--b194d6f8451ba1563834be23.md) | 71 | `result-track:b194d6f8451ba1563834be23255a57337ec7deac65f08fedc8b5344259891151` |
| 7 | `def` | [eigenvalues](../../../../../mathematics/Algebra/LinearAlgebra/Spectrum/Variant5106bcb8310641cff42a12d04df898270b6066177452b0f585509829b41e0f44.lean/declarations/eigenvalues--05a1f6072d027c8497cf44e9.md) | 75 | `declaration-track:05a1f6072d027c8497cf44e9f72914f9f06cf5d844348844ad70a27d81928a96` |
| 8 | `def` | [eigenvectorBasis](../../../../../mathematics/Algebra/LinearAlgebra/Spectrum/Variant5106bcb8310641cff42a12d04df898270b6066177452b0f585509829b41e0f44.lean/declarations/eigenvectorbasis--785344b1b92b802a4d5c811d.md) | 79 | `declaration-track:785344b1b92b802a4d5c811d1c7ab4609bf8119fb1b2cc472358d3c5e81eee3c` |
| 9 | `lemma` | [mulVec_eigenvectorBasis](../../../../../mathematics/Algebra/LinearAlgebra/Spectrum/Variant5106bcb8310641cff42a12d04df898270b6066177452b0f585509829b41e0f44.lean/declarations/mulvec-eigenvectorbasis--c46498b485690cabdfe909c8.md) | 83 | `result-track:c46498b485690cabdfe909c89e034e0f13a4e239a08bc66cc89dd1ffb81bb32d` |
| 10 | `theorem` | [eigenvalues_mem_spectrum_real](../../../../../mathematics/Algebra/LinearAlgebra/Spectrum/Variant5106bcb8310641cff42a12d04df898270b6066177452b0f585509829b41e0f44.lean/declarations/eigenvalues-mem-spectrum-real--0f7fafbae481539ec24843fb.md) | 91 | `result-track:0f7fafbae481539ec24843fb5f811f072e12a14f39672c8e420d5c65e46fd7b7` |
| 11 | `def` | [eigenvectorUnitary](../../../../../mathematics/Algebra/LinearAlgebra/Spectrum/Variant5106bcb8310641cff42a12d04df898270b6066177452b0f585509829b41e0f44.lean/declarations/eigenvectorunitary--37d299d51caa665cb386ac4b.md) | 97 | `declaration-track:37d299d51caa665cb386ac4bd7222dd0d2ee5fa0038400c6d6524034cf97a10b` |
| 12 | `lemma` | [eigenvectorUnitary_coe](../../../../../mathematics/Algebra/LinearAlgebra/Spectrum/Variant5106bcb8310641cff42a12d04df898270b6066177452b0f585509829b41e0f44.lean/declarations/eigenvectorunitary-coe--ef20d9c5d2a1842bfd435566.md) | 103 | `result-track:ef20d9c5d2a1842bfd4355667ff40045da32060a6e406f276a8005032e54e826` |
| 13 | `theorem` | [eigenvectorUnitary_transpose_apply](../../../../../mathematics/Algebra/LinearAlgebra/Spectrum/Variant5106bcb8310641cff42a12d04df898270b6066177452b0f585509829b41e0f44.lean/declarations/eigenvectorunitary-transpose-apply--0f3bdd8f81826ca980dface1.md) | 110 | `result-track:0f3bdd8f81826ca980dface1e0a11577bdc7fb708ead8f4e537d88f7706cbfbf` |
| 14 | `theorem` | [eigenvectorUnitary_col_eq](../../../../../mathematics/Algebra/LinearAlgebra/Spectrum/Variant5106bcb8310641cff42a12d04df898270b6066177452b0f585509829b41e0f44.lean/declarations/eigenvectorunitary-col-eq--147d2556e1f71907f18e04c8.md) | 115 | `result-track:147d2556e1f71907f18e04c88485dabf43f96e180ce7833af627d09b8eac38c3` |
| 15 | `theorem` | [eigenvectorUnitary_apply](../../../../../mathematics/Algebra/LinearAlgebra/Spectrum/Variant5106bcb8310641cff42a12d04df898270b6066177452b0f585509829b41e0f44.lean/declarations/eigenvectorunitary-apply--4031978bba6c0223bedb664a.md) | 120 | `result-track:4031978bba6c0223bedb664aa057821c3fb646935d462edff0788b4035288913` |
| 16 | `theorem` | [eigenvectorUnitary_mulVec](../../../../../mathematics/Algebra/LinearAlgebra/Spectrum/Variant5106bcb8310641cff42a12d04df898270b6066177452b0f585509829b41e0f44.lean/declarations/eigenvectorunitary-mulvec--1906d5a49600b8d99166cadf.md) | 124 | `result-track:1906d5a49600b8d99166cadfef31e358db5a2595a9e3c8c60a0dc4de19c389cf` |
| 17 | `theorem` | [star_eigenvectorUnitary_mulVec](../../../../../mathematics/Algebra/LinearAlgebra/Spectrum/Variant5106bcb8310641cff42a12d04df898270b6066177452b0f585509829b41e0f44.lean/declarations/star-eigenvectorunitary-mulvec--8f81f597c6b76e3a55ecd3f2.md) | 128 | `result-track:8f81f597c6b76e3a55ecd3f24b8b4368e27565274dfda1a8fa5952e6a84ef80e` |
| 18 | `theorem` | [conjStarAlgAut_star_eigenvectorUnitary](../../../../../mathematics/Algebra/LinearAlgebra/Spectrum/Variant5106bcb8310641cff42a12d04df898270b6066177452b0f585509829b41e0f44.lean/declarations/conjstaralgaut-star-eigenvectorunitary--59940eb0c0c5785d6da8907d.md) | 135 | `result-track:59940eb0c0c5785d6da8907d43f4cae7d5fea25dbd8ca1b43fbcd3b7e514f9f4` |
| 19 | `theorem` | [spectral_theorem](../../../../../mathematics/Algebra/LinearAlgebra/Spectrum/Variant5106bcb8310641cff42a12d04df898270b6066177452b0f585509829b41e0f44.lean/declarations/spectral-theorem--6629e97f3c935cf318462e6b.md) | 151 | `result-track:6629e97f3c935cf318462e6bfdfa1744ba19709c24f9604a262b1dd2decd8ff9` |
| 20 | `theorem` | [eigenvalues_eq](../../../../../mathematics/Algebra/LinearAlgebra/Spectrum/Variant5106bcb8310641cff42a12d04df898270b6066177452b0f585509829b41e0f44.lean/declarations/eigenvalues-eq--14471a803a66ae756844d700.md) | 156 | `result-track:14471a803a66ae756844d700fe10afcf3fa8be631a8668a9dbee06d608b85188` |
| 21 | `lemma` | [charpoly_eq](../../../../../mathematics/Algebra/LinearAlgebra/Spectrum/Variant5106bcb8310641cff42a12d04df898270b6066177452b0f585509829b41e0f44.lean/declarations/charpoly-eq--8fe3e7f1b0b2e4c5b25482ed.md) | 165 | `result-track:8fe3e7f1b0b2e4c5b25482ed9f5d529d9416350a0b472194b7fec21d3246af23` |
| 22 | `lemma` | [roots_charpoly_eq_eigenvalues](../../../../../mathematics/Algebra/LinearAlgebra/Spectrum/Variant5106bcb8310641cff42a12d04df898270b6066177452b0f585509829b41e0f44.lean/declarations/roots-charpoly-eq-eigenvalues--f44932426b30cc92bacb1257.md) | 169 | `result-track:f44932426b30cc92bacb12570b06c69668c05a8fdd3d7e00da3e889fa8db46e8` |
| 23 | `lemma` | [roots_charpoly_eq_eigenvalues₀](../../../../../mathematics/Algebra/LinearAlgebra/Spectrum/Variant5106bcb8310641cff42a12d04df898270b6066177452b0f585509829b41e0f44.lean/declarations/roots-charpoly-eq-eigenvalues--faa7ae54954e45f6c3dff7d1.md) | 176 | `result-track:faa7ae54954e45f6c3dff7d144b7b367933959644150bc98c0261b94b122ac9f` |
| 24 | `lemma` | [sort_roots_charpoly_eq_eigenvalues₀](../../../../../mathematics/Algebra/LinearAlgebra/Spectrum/Variant5106bcb8310641cff42a12d04df898270b6066177452b0f585509829b41e0f44.lean/declarations/sort-roots-charpoly-eq-eigenvalues--573d48953e870e55add28c09.md) | 182 | `result-track:573d48953e870e55add28c09de03153c9c0dc63e988fd223f828fca9078d90f2` |
| 25 | `lemma` | [eigenvalues_eq_eigenvalues_iff](../../../../../mathematics/Algebra/LinearAlgebra/Spectrum/Variant5106bcb8310641cff42a12d04df898270b6066177452b0f585509829b41e0f44.lean/declarations/eigenvalues-eq-eigenvalues-iff--13464867245d9fb55f5237d9.md) | 190 | `result-track:13464867245d9fb55f5237d9547d16a407ccefd695d146299db88b707e57de36` |
| 26 | `theorem` | [splits_charpoly](../../../../../mathematics/Algebra/LinearAlgebra/Spectrum/Variant5106bcb8310641cff42a12d04df898270b6066177452b0f585509829b41e0f44.lean/declarations/splits-charpoly--cdcfa5316f06f783d25a5925.md) | 197 | `result-track:cdcfa5316f06f783d25a59251637c238929eb89bffe54298468b8699ca4d9b46` |
| 27 | `theorem` | [det_eq_prod_eigenvalues](../../../../../mathematics/Algebra/LinearAlgebra/Spectrum/Variant5106bcb8310641cff42a12d04df898270b6066177452b0f585509829b41e0f44.lean/declarations/det-eq-prod-eigenvalues--123561069af0502624cdb1f5.md) | 201 | `result-track:123561069af0502624cdb1f56e5cf339af19b13dfce9a7c88bd775e725835447` |
| 28 | `lemma` | [rank_eq_rank_diagonal](../../../../../mathematics/Algebra/LinearAlgebra/Spectrum/Variant5106bcb8310641cff42a12d04df898270b6066177452b0f585509829b41e0f44.lean/declarations/rank-eq-rank-diagonal--a878aa5e823f9402c3f3dd2a.md) | 205 | `result-track:a878aa5e823f9402c3f3dd2a27b272a269852e1c7e58f5b91ec51e143bc71eb1` |
| 29 | `lemma` | [rank_eq_card_non_zero_eigs](../../../../../mathematics/Algebra/LinearAlgebra/Spectrum/Variant5106bcb8310641cff42a12d04df898270b6066177452b0f585509829b41e0f44.lean/declarations/rank-eq-card-non-zero-eigs--3218dae34a4c0340ed7fa6f2.md) | 210 | `result-track:3218dae34a4c0340ed7fa6f202ea6253b1c20c08e5df6d6b24004d115d8cf7eb` |
| 30 | `theorem` | [spectrum_eq_image_range](../../../../../mathematics/Algebra/LinearAlgebra/Spectrum/Variant5106bcb8310641cff42a12d04df898270b6066177452b0f585509829b41e0f44.lean/declarations/spectrum-eq-image-range--11aa6f24e246811f2bb32442.md) | 214 | `result-track:11aa6f24e246811f2bb324423f345528440e1893769097a8eb7bc5a5bf3df600` |
| 31 | `theorem` | [spectrum_real_eq_range_eigenvalues](../../../../../mathematics/Algebra/LinearAlgebra/Spectrum/Variant5106bcb8310641cff42a12d04df898270b6066177452b0f585509829b41e0f44.lean/declarations/spectrum-real-eq-range-eigenvalues--2329bf7c9d7dc04cb3f29cbe.md) | 221 | `result-track:2329bf7c9d7dc04cb3f29cbebad6837ef7803b8b44955da895299b4a20db267e` |
| 32 | `theorem` | [eigenvalues_eq_zero_iff](../../../../../mathematics/Algebra/LinearAlgebra/Spectrum/Variant5106bcb8310641cff42a12d04df898270b6066177452b0f585509829b41e0f44.lean/declarations/eigenvalues-eq-zero-iff--67b1fbfab98f1a847f70e211.md) | 227 | `result-track:67b1fbfab98f1a847f70e2113b3173eb4d6401c30818f664c71630f6ea826a14` |
| 33 | `lemma` | [exists_eigenvector_of_ne_zero](../../../../../mathematics/Algebra/LinearAlgebra/Spectrum/Variant5106bcb8310641cff42a12d04df898270b6066177452b0f585509829b41e0f44.lean/declarations/exists-eigenvector-of-ne-zero--b6e8ba9dd13331bd08e7097b.md) | 236 | `result-track:b6e8ba9dd13331bd08e7097b7e257367d7bb3ee0fe6e25c218506254d7327b7a` |
| 34 | `theorem` | [trace_eq_sum_eigenvalues](../../../../../mathematics/Algebra/LinearAlgebra/Spectrum/Variant5106bcb8310641cff42a12d04df898270b6066177452b0f585509829b41e0f44.lean/declarations/trace-eq-sum-eigenvalues--112281807e3b0bc10659f580.md) | 248 | `result-track:112281807e3b0bc10659f58012c4a29970f013aa2d703846be1912c074ac9533` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
