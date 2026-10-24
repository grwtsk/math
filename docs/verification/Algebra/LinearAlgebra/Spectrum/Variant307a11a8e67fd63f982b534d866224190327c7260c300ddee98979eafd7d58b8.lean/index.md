# Verification target: GRWTSK.Algebra.LinearAlgebra.Spectrum.Variant307a11a8e67fd63f982b534d866224190327c7260c300ddee98979eafd7d58b8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "73e60598b11ac26f4de08f94ed25cb6fd0eb00e6",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Spectrum/Variant307a11a8e67fd63f982b534d866224190327c7260c300ddee98979eafd7d58b8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Spectrum/Variant307a11a8e67fd63f982b534d866224190327c7260c300ddee98979eafd7d58b8.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Spectrum/Variant307a11a8e67fd63f982b534d866224190327c7260c300ddee98979eafd7d58b8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `73e60598b11ac26f4de08f94ed25cb6fd0eb00e6`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Spectrum/Variant307a11a8e67fd63f982b534d866224190327c7260c300ddee98979eafd7d58b8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Spectrum/Variant307a11a8e67fd63f982b534d866224190327c7260c300ddee98979eafd7d58b8.lean.json)

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
| 1 | `lemma` | [finite_real_spectrum](../../../../../mathematics/Algebra/LinearAlgebra/Spectrum/Variant307a11a8e67fd63f982b534d866224190327c7260c300ddee98979eafd7d58b8.lean/declarations/finite-real-spectrum--bf3289f025e8bce639d3e906.md) | 33 | `result-track:bf3289f025e8bce639d3e9062614b2161e5002e3d67ab857c3f4a2a2c1184dd9` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Spectrum/Variant307a11a8e67fd63f982b534d866224190327c7260c300ddee98979eafd7d58b8.lean/declarations/instance--a8814049d2a32ce0636b27b9.md) | 37 | `declaration-track:a8814049d2a32ce0636b27b9a10cc1eb28a570db30bcf00289f5c253e538b34d` |
| 3 | `theorem` | [spectrum_toLpLin](../../../../../mathematics/Algebra/LinearAlgebra/Spectrum/Variant307a11a8e67fd63f982b534d866224190327c7260c300ddee98979eafd7d58b8.lean/declarations/spectrum-tolplin--d25be683c6d52f06c9ee5695.md) | 40 | `result-track:d25be683c6d52f06c9ee5695fa2b2f00e502d61415167a26f4ddcb56eedcd5b6` |
| 4 | `theorem` | [spectralRadius_transpose](../../../../../mathematics/Algebra/LinearAlgebra/Spectrum/Variant307a11a8e67fd63f982b534d866224190327c7260c300ddee98979eafd7d58b8.lean/declarations/spectralradius-transpose--36dd608aae21f4a047c680de.md) | 45 | `result-track:36dd608aae21f4a047c680ded921c5109a862843f4af82f2de8225ff9e264e6c` |
| 5 | `def` | [eigenvalues₀](../../../../../mathematics/Algebra/LinearAlgebra/Spectrum/Variant307a11a8e67fd63f982b534d866224190327c7260c300ddee98979eafd7d58b8.lean/declarations/eigenvalues--88af8c06076e6350ad676500.md) | 60 | `declaration-track:88af8c06076e6350ad676500b93537a3f3c1c24ae85b6bff577b0135f78e7020` |
| 6 | `lemma` | [eigenvalues₀_antitone](../../../../../mathematics/Algebra/LinearAlgebra/Spectrum/Variant307a11a8e67fd63f982b534d866224190327c7260c300ddee98979eafd7d58b8.lean/declarations/eigenvalues-antitone--c93e02431193d4d89932ed88.md) | 63 | `result-track:c93e02431193d4d89932ed8888743b60ea4490e503028207591f3c14daf372a5` |
| 7 | `def` | [eigenvalues](../../../../../mathematics/Algebra/LinearAlgebra/Spectrum/Variant307a11a8e67fd63f982b534d866224190327c7260c300ddee98979eafd7d58b8.lean/declarations/eigenvalues--8938354b5be427b3e447a09d.md) | 67 | `declaration-track:8938354b5be427b3e447a09d494c09769c905de3fed04d5ebb787f2e7cd7c762` |
| 8 | `def` | [eigenvectorBasis](../../../../../mathematics/Algebra/LinearAlgebra/Spectrum/Variant307a11a8e67fd63f982b534d866224190327c7260c300ddee98979eafd7d58b8.lean/declarations/eigenvectorbasis--11132acf4fc460fb8d8de73d.md) | 71 | `declaration-track:11132acf4fc460fb8d8de73d52fdac3985d5bd6c9087e3058678f95e6544ac36` |
| 9 | `lemma` | [mulVec_eigenvectorBasis](../../../../../mathematics/Algebra/LinearAlgebra/Spectrum/Variant307a11a8e67fd63f982b534d866224190327c7260c300ddee98979eafd7d58b8.lean/declarations/mulvec-eigenvectorbasis--89c45b4c77b9d2f53e6ee038.md) | 75 | `result-track:89c45b4c77b9d2f53e6ee0385ac531046b1cd2bc40be9ed3c8e5a6ee2ea85f1e` |
| 10 | `theorem` | [eigenvalues_mem_spectrum_real](../../../../../mathematics/Algebra/LinearAlgebra/Spectrum/Variant307a11a8e67fd63f982b534d866224190327c7260c300ddee98979eafd7d58b8.lean/declarations/eigenvalues-mem-spectrum-real--8f80b338e0e3cdc45edc5217.md) | 83 | `result-track:8f80b338e0e3cdc45edc5217ba86214e12dcf65c5d7af2ccb31af93df4080570` |
| 11 | `def` | [eigenvectorUnitary](../../../../../mathematics/Algebra/LinearAlgebra/Spectrum/Variant307a11a8e67fd63f982b534d866224190327c7260c300ddee98979eafd7d58b8.lean/declarations/eigenvectorunitary--e89c54e8f1f5106e1a5080d5.md) | 89 | `declaration-track:e89c54e8f1f5106e1a5080d5b914f1870c9932ac3c40f3c9ed2aa6a8dfd8bcf0` |
| 12 | `lemma` | [eigenvectorUnitary_coe](../../../../../mathematics/Algebra/LinearAlgebra/Spectrum/Variant307a11a8e67fd63f982b534d866224190327c7260c300ddee98979eafd7d58b8.lean/declarations/eigenvectorunitary-coe--c02fc2fd5349b1af472eeb2c.md) | 95 | `result-track:c02fc2fd5349b1af472eeb2c7e2a17dc23a93b84acf1dcdb88fb954f723eba6d` |
| 13 | `theorem` | [eigenvectorUnitary_transpose_apply](../../../../../mathematics/Algebra/LinearAlgebra/Spectrum/Variant307a11a8e67fd63f982b534d866224190327c7260c300ddee98979eafd7d58b8.lean/declarations/eigenvectorunitary-transpose-apply--87fa786194c8e063290059c2.md) | 102 | `result-track:87fa786194c8e063290059c20bde51f134f9423d0532fae0f98907a81015a422` |
| 14 | `theorem` | [eigenvectorUnitary_col_eq](../../../../../mathematics/Algebra/LinearAlgebra/Spectrum/Variant307a11a8e67fd63f982b534d866224190327c7260c300ddee98979eafd7d58b8.lean/declarations/eigenvectorunitary-col-eq--310d88407e4acc621f2d0141.md) | 107 | `result-track:310d88407e4acc621f2d0141bb4db237b86cf297dcb71b0ac344297ab90d7e99` |
| 15 | `theorem` | [eigenvectorUnitary_apply](../../../../../mathematics/Algebra/LinearAlgebra/Spectrum/Variant307a11a8e67fd63f982b534d866224190327c7260c300ddee98979eafd7d58b8.lean/declarations/eigenvectorunitary-apply--6ff730ec92c9bc318cd5daab.md) | 112 | `result-track:6ff730ec92c9bc318cd5daabde4cbe55b33b6497eb86f0a2356454844c43dada` |
| 16 | `theorem` | [eigenvectorUnitary_mulVec](../../../../../mathematics/Algebra/LinearAlgebra/Spectrum/Variant307a11a8e67fd63f982b534d866224190327c7260c300ddee98979eafd7d58b8.lean/declarations/eigenvectorunitary-mulvec--d4a3d56266a9912623165336.md) | 116 | `result-track:d4a3d56266a9912623165336ad2ec4d20feaed6c0b76d0bb73628dca881d0b87` |
| 17 | `theorem` | [star_eigenvectorUnitary_mulVec](../../../../../mathematics/Algebra/LinearAlgebra/Spectrum/Variant307a11a8e67fd63f982b534d866224190327c7260c300ddee98979eafd7d58b8.lean/declarations/star-eigenvectorunitary-mulvec--ee7b36d4680a659858b367b9.md) | 120 | `result-track:ee7b36d4680a659858b367b9ed9d6897588ac9de04273bb94ed9bb481dfbad93` |
| 18 | `theorem` | [conjStarAlgAut_star_eigenvectorUnitary](../../../../../mathematics/Algebra/LinearAlgebra/Spectrum/Variant307a11a8e67fd63f982b534d866224190327c7260c300ddee98979eafd7d58b8.lean/declarations/conjstaralgaut-star-eigenvectorunitary--d616649d8412a978cc0154bc.md) | 127 | `result-track:d616649d8412a978cc0154bc43d7f81cae590af349b0a21ad3484bf3afd74719` |
| 19 | `theorem` | [spectral_theorem](../../../../../mathematics/Algebra/LinearAlgebra/Spectrum/Variant307a11a8e67fd63f982b534d866224190327c7260c300ddee98979eafd7d58b8.lean/declarations/spectral-theorem--2b051d583b3fae3c8a7f6efd.md) | 143 | `result-track:2b051d583b3fae3c8a7f6efd456085a2af8567972f007e9f1b2998fa240f7717` |
| 20 | `theorem` | [eigenvalues_eq](../../../../../mathematics/Algebra/LinearAlgebra/Spectrum/Variant307a11a8e67fd63f982b534d866224190327c7260c300ddee98979eafd7d58b8.lean/declarations/eigenvalues-eq--1feb9ffb5fed6ef30acda68b.md) | 148 | `result-track:1feb9ffb5fed6ef30acda68b4c6e8c6a7f9f20d3c950de2724a61f1ec87d0ba3` |
| 21 | `lemma` | [charpoly_eq](../../../../../mathematics/Algebra/LinearAlgebra/Spectrum/Variant307a11a8e67fd63f982b534d866224190327c7260c300ddee98979eafd7d58b8.lean/declarations/charpoly-eq--c83d880a40770bc3c5578914.md) | 157 | `result-track:c83d880a40770bc3c55789140befe628666937f8ea615d6980a00d9d58ffa0d4` |
| 22 | `lemma` | [roots_charpoly_eq_eigenvalues](../../../../../mathematics/Algebra/LinearAlgebra/Spectrum/Variant307a11a8e67fd63f982b534d866224190327c7260c300ddee98979eafd7d58b8.lean/declarations/roots-charpoly-eq-eigenvalues--254a980fa54a559800927d29.md) | 161 | `result-track:254a980fa54a559800927d299928ed3022d03039bf61e1d806841841e0ce03cc` |
| 23 | `lemma` | [roots_charpoly_eq_eigenvalues₀](../../../../../mathematics/Algebra/LinearAlgebra/Spectrum/Variant307a11a8e67fd63f982b534d866224190327c7260c300ddee98979eafd7d58b8.lean/declarations/roots-charpoly-eq-eigenvalues--e2e051cbe0064ff3fceedb2b.md) | 168 | `result-track:e2e051cbe0064ff3fceedb2b998030def9a0e63a93e9166f9be2e0822d873851` |
| 24 | `lemma` | [sort_roots_charpoly_eq_eigenvalues₀](../../../../../mathematics/Algebra/LinearAlgebra/Spectrum/Variant307a11a8e67fd63f982b534d866224190327c7260c300ddee98979eafd7d58b8.lean/declarations/sort-roots-charpoly-eq-eigenvalues--65a925b2dc8caf5881af051c.md) | 174 | `result-track:65a925b2dc8caf5881af051c577437f17fd82d18804b61ef6e19cbf540e63954` |
| 25 | `lemma` | [eigenvalues_eq_eigenvalues_iff](../../../../../mathematics/Algebra/LinearAlgebra/Spectrum/Variant307a11a8e67fd63f982b534d866224190327c7260c300ddee98979eafd7d58b8.lean/declarations/eigenvalues-eq-eigenvalues-iff--e2d17044758a66a7be55b05b.md) | 182 | `result-track:e2d17044758a66a7be55b05b7f02c1571abdbc3bf4befd96860d7aa31a042323` |
| 26 | `theorem` | [splits_charpoly](../../../../../mathematics/Algebra/LinearAlgebra/Spectrum/Variant307a11a8e67fd63f982b534d866224190327c7260c300ddee98979eafd7d58b8.lean/declarations/splits-charpoly--ba0bd205884baf68a8cc6d0a.md) | 189 | `result-track:ba0bd205884baf68a8cc6d0a285402a930193a15409d01495b667c913673291a` |
| 27 | `theorem` | [det_eq_prod_eigenvalues](../../../../../mathematics/Algebra/LinearAlgebra/Spectrum/Variant307a11a8e67fd63f982b534d866224190327c7260c300ddee98979eafd7d58b8.lean/declarations/det-eq-prod-eigenvalues--5217eb71beefafa83ba82615.md) | 193 | `result-track:5217eb71beefafa83ba8261523e1489d2a3a578e5a734441ae8d08c6bccc34e5` |
| 28 | `lemma` | [rank_eq_rank_diagonal](../../../../../mathematics/Algebra/LinearAlgebra/Spectrum/Variant307a11a8e67fd63f982b534d866224190327c7260c300ddee98979eafd7d58b8.lean/declarations/rank-eq-rank-diagonal--9c9fc61366ae579f234be0fb.md) | 197 | `result-track:9c9fc61366ae579f234be0fb6fe01f4cdc58b3ffc2e5df554798073583056e36` |
| 29 | `lemma` | [rank_eq_card_non_zero_eigs](../../../../../mathematics/Algebra/LinearAlgebra/Spectrum/Variant307a11a8e67fd63f982b534d866224190327c7260c300ddee98979eafd7d58b8.lean/declarations/rank-eq-card-non-zero-eigs--b924350aec28885f752c17d6.md) | 202 | `result-track:b924350aec28885f752c17d6d95839f42761ade91386c796e0f118f3c2f134ef` |
| 30 | `theorem` | [spectrum_eq_image_range](../../../../../mathematics/Algebra/LinearAlgebra/Spectrum/Variant307a11a8e67fd63f982b534d866224190327c7260c300ddee98979eafd7d58b8.lean/declarations/spectrum-eq-image-range--4f982641094a4762b9f00840.md) | 206 | `result-track:4f982641094a4762b9f00840055f81bddf92e80130cb9b0fd0f4b4e162d28ae7` |
| 31 | `theorem` | [spectrum_real_eq_range_eigenvalues](../../../../../mathematics/Algebra/LinearAlgebra/Spectrum/Variant307a11a8e67fd63f982b534d866224190327c7260c300ddee98979eafd7d58b8.lean/declarations/spectrum-real-eq-range-eigenvalues--9e0a9e651dad1f9a577dee2b.md) | 213 | `result-track:9e0a9e651dad1f9a577dee2b4498a131bc1cb8bd759ccedbaf6cf542a205c3a9` |
| 32 | `theorem` | [eigenvalues_eq_zero_iff](../../../../../mathematics/Algebra/LinearAlgebra/Spectrum/Variant307a11a8e67fd63f982b534d866224190327c7260c300ddee98979eafd7d58b8.lean/declarations/eigenvalues-eq-zero-iff--e4516dee1c87a0956960c6bd.md) | 219 | `result-track:e4516dee1c87a0956960c6bdcb9630d990a0a860d8586e39e5aa7084e65245a1` |
| 33 | `lemma` | [exists_eigenvector_of_ne_zero](../../../../../mathematics/Algebra/LinearAlgebra/Spectrum/Variant307a11a8e67fd63f982b534d866224190327c7260c300ddee98979eafd7d58b8.lean/declarations/exists-eigenvector-of-ne-zero--b4a6e557cf123c8c07206108.md) | 228 | `result-track:b4a6e557cf123c8c072061086713728eb1fc6e489f450f0fe89fd1881678d967` |
| 34 | `theorem` | [trace_eq_sum_eigenvalues](../../../../../mathematics/Algebra/LinearAlgebra/Spectrum/Variant307a11a8e67fd63f982b534d866224190327c7260c300ddee98979eafd7d58b8.lean/declarations/trace-eq-sum-eigenvalues--c957272f14c295b41a26775e.md) | 240 | `result-track:c957272f14c295b41a26775efb8ded7b4567d604bb039f4c344c20b192767982` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
