# Verification target: GRWTSK.NumberTheory.Moebius.SignedAbelDepthWeightedDispersion

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e94e13369e116a21d9a68f9bef72b368b8f1ee5e",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Moebius/SignedAbelDepthWeightedDispersion.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Moebius/SignedAbelDepthWeightedDispersion.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Moebius/SignedAbelDepthWeightedDispersion.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e94e13369e116a21d9a68f9bef72b368b8f1ee5e`.

Source path: `GRWTSK/NumberTheory/Moebius/SignedAbelDepthWeightedDispersion.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Moebius/SignedAbelDepthWeightedDispersion.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Moebius.SignedAbelDepthDispersion`](../../../../mathematics/NumberTheory/Moebius/SignedAbelDepthDispersion.lean/index.md) — import line 11; pinned internal source present.
- `Mathlib.Algebra.Order.BigOperators.Ring.Finset` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Real.Sqrt` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [signedAbelDepthAmplitude](../../../../mathematics/NumberTheory/Moebius/SignedAbelDepthWeightedDispersion.lean/declarations/signedabeldepthamplitude--fc72900131af8083e3d71a10.md) | 53 | `declaration-track:fc72900131af8083e3d71a1018a11c44da7d35d341cf4796135f9b7cae6573f7` |
| 2 | `def` | [signedAbelDepthWeight](../../../../mathematics/NumberTheory/Moebius/SignedAbelDepthWeightedDispersion.lean/declarations/signedabeldepthweight--1cf9fdb681ae8408884e1dda.md) | 58 | `declaration-track:1cf9fdb681ae8408884e1ddafdd010133a3ae5beea3f1ff0cbc5df0ce40abf5c` |
| 3 | `theorem` | [signedAbelDepthWeight_nonneg](../../../../mathematics/NumberTheory/Moebius/SignedAbelDepthWeightedDispersion.lean/declarations/signedabeldepthweight-nonneg--c91edf2d5f748d613405ee85.md) | 65 | `result-track:c91edf2d5f748d613405ee85fd306f8172c53bb0f52da2c0b04250ed10024488` |
| 4 | `theorem` | [weightedMertensDyadicSignedAbelCell_eq_amplitude_mul_weight](../../../../mathematics/NumberTheory/Moebius/SignedAbelDepthWeightedDispersion.lean/declarations/weightedmertensdyadicsignedabelcell-eq-amplitude-mul-weight--57b41e3654ffa0f0a63efbfe.md) | 75 | `result-track:57b41e3654ffa0f0a63efbfefae982fb79ec31783dc45adfcae0061f47e8aad9` |
| 5 | `theorem` | [weightedMertensDyadicSignedAbelDepthSlice_eq_weightedBilinear](../../../../mathematics/NumberTheory/Moebius/SignedAbelDepthWeightedDispersion.lean/declarations/weightedmertensdyadicsignedabeldepthslice-eq-weightedbilinear--14e649bb24278b09050bfc86.md) | 90 | `result-track:14e649bb24278b09050bfc8686066658739ff989bdb37e112adb4b1b23b15698` |
| 6 | `def` | [weightedMertensSignedAbelDepthBilinearModel](../../../../mathematics/NumberTheory/Moebius/SignedAbelDepthWeightedDispersion.lean/declarations/weightedmertenssignedabeldepthbilinearmodel--b59e86ea758c5c1bef4cc19f.md) | 103 | `declaration-track:b59e86ea758c5c1bef4cc19fffb5a8d77bcbd4637a0931d4c4c2fe428f44950a` |
| 7 | `def` | [weightedMertensSignedAbelDepthMass](../../../../mathematics/NumberTheory/Moebius/SignedAbelDepthWeightedDispersion.lean/declarations/weightedmertenssignedabeldepthmass--5e6b7228b6d4e3939c9635fb.md) | 116 | `declaration-track:5e6b7228b6d4e3939c9635fb991325c3a64e017cfe167cecbd5d874551148319` |
| 8 | `def` | [weightedMertensSignedAbelDepthQuadraticEnergy](../../../../mathematics/NumberTheory/Moebius/SignedAbelDepthWeightedDispersion.lean/declarations/weightedmertenssignedabeldepthquadraticenergy--8f99e62b743564a21952d6e9.md) | 122 | `declaration-track:8f99e62b743564a21952d6e996c1b0f3e1c2a835c8636582b36c6eea48a14790` |
| 9 | `theorem` | [weightedMertensSignedAbelDepthMass_nonneg](../../../../mathematics/NumberTheory/Moebius/SignedAbelDepthWeightedDispersion.lean/declarations/weightedmertenssignedabeldepthmass-nonneg--22aafc6c83e666435b1d8745.md) | 127 | `result-track:22aafc6c83e666435b1d87459f3e51277d337b7da3f040c58c4f9fd6e28fd901` |
| 10 | `theorem` | [weightedMertensSignedAbelDepthQuadraticEnergy_nonneg](../../../../mathematics/NumberTheory/Moebius/SignedAbelDepthWeightedDispersion.lean/declarations/weightedmertenssignedabeldepthquadraticenergy-nonneg--78182af1308bb6b9eccd3fe7.md) | 134 | `result-track:78182af1308bb6b9eccd3fe7a4e45100084af086d60037f654a7b82c0953a05c` |
| 11 | `theorem` | [weightedMertensDyadicSignedAbelDepthSlice_sq_le_dispersion](../../../../mathematics/NumberTheory/Moebius/SignedAbelDepthWeightedDispersion.lean/declarations/weightedmertensdyadicsignedabeldepthslice-sq-le-dispersion--b17c1b6197e658a1c04a5982.md) | 144 | `result-track:b17c1b6197e658a1c04a59823b97286e722bf39b444b642a2c844c8ad8d5d63b` |
| 12 | `def` | [weightedMertensSignedAbelDepthDispersionRadius](../../../../mathematics/NumberTheory/Moebius/SignedAbelDepthWeightedDispersion.lean/declarations/weightedmertenssignedabeldepthdispersionradius--d2300364cab8223d23187231.md) | 169 | `declaration-track:d2300364cab8223d231872315b41725477baae86f7dd2eac6210daf37f055f59` |
| 13 | `theorem` | [weightedMertensSignedAbelDepthDispersionRadius_nonneg](../../../../mathematics/NumberTheory/Moebius/SignedAbelDepthWeightedDispersion.lean/declarations/weightedmertenssignedabeldepthdispersionradius-nonneg--d98a751275c5e781ecbc575c.md) | 175 | `result-track:d98a751275c5e781ecbc575cbc375ae7c8029a0c9b59a4c5695156a3be71f56c` |
| 14 | `theorem` | [weightedMertensDyadicSignedAbelDepthSlice_le_dispersionRadius](../../../../mathematics/NumberTheory/Moebius/SignedAbelDepthWeightedDispersion.lean/declarations/weightedmertensdyadicsignedabeldepthslice-le-dispersionradius--7bb79d957f1ad0134f86e224.md) | 182 | `result-track:7bb79d957f1ad0134f86e224e801f6588719d5db02cdf4c8365e9d414bf7863b` |
| 15 | `def` | [weightedMertensDyadicSignedAbelDispersionMajorant](../../../../mathematics/NumberTheory/Moebius/SignedAbelDepthWeightedDispersion.lean/declarations/weightedmertensdyadicsignedabeldispersionmajorant--5817bb3e1913bb92be812f50.md) | 197 | `declaration-track:5817bb3e1913bb92be812f502ed57394924ecb0c11f20d566e239581833e1f15` |
| 16 | `theorem` | [weightedMertensDyadicSignedAbelDispersionMajorant_nonneg](../../../../mathematics/NumberTheory/Moebius/SignedAbelDepthWeightedDispersion.lean/declarations/weightedmertensdyadicsignedabeldispersionmajorant-nonneg--d06cc517c699579d6f8c4326.md) | 202 | `result-track:d06cc517c699579d6f8c4326cd2fee2c0c6e611bf1c936990099969beb4bbb85` |
| 17 | `theorem` | [weightedMertensDyadicSignedAbelDepthPacket_le_dispersionMajorant](../../../../mathematics/NumberTheory/Moebius/SignedAbelDepthWeightedDispersion.lean/declarations/weightedmertensdyadicsignedabeldepthpacket-le-dispersionmajorant--6361b7f81bfd74e2d636b661.md) | 211 | `result-track:6361b7f81bfd74e2d636b6610f33c47dd5db992bff681d44655288a6e7efe907` |
| 18 | `def` | [SubpolynomialDyadicSignedAbelWeightedDispersion](../../../../mathematics/NumberTheory/Moebius/SignedAbelDepthWeightedDispersion.lean/declarations/subpolynomialdyadicsignedabelweighteddispersion--fe3e0733a7a5a94161b8bfad.md) | 223 | `declaration-track:fe3e0733a7a5a94161b8bfadd626d838c6e802bf6ee7824f479b00f545df4107` |
| 19 | `theorem` | [subpolynomialDyadicSignedAbelDepthPacket_of_weightedDispersion](../../../../mathematics/NumberTheory/Moebius/SignedAbelDepthWeightedDispersion.lean/declarations/subpolynomialdyadicsignedabeldepthpacket-of-weighteddispersion--5a01d2fb0e4b5749a159cda4.md) | 231 | `result-track:5a01d2fb0e4b5749a159cda4f049289ecee146f3429822d82cbc363b590eaf98` |
| 20 | `theorem` | [riemannHypothesis_of_subpolynomialDyadicSignedAbelWeightedDispersion](../../../../mathematics/NumberTheory/Moebius/SignedAbelDepthWeightedDispersion.lean/declarations/riemannhypothesis-of-subpolynomialdyadicsignedabelweighteddispersion--f880032312d1bd08edf3a12c.md) | 244 | `result-track:f880032312d1bd08edf3a12c3c3eab2d43e5faf6f19c498596821d698b810988` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
