# Verification target: GRWTSK.Analysis.BranchOrthogonalCompression.Variant6572f3c217a3e3c371bb09362948dc7314c04c5d1bcd2a3e198f1602400ccbbe

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6b656f637ba287fece1779f3f8662d68e15e8eb4",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/BranchOrthogonalCompression/Variant6572f3c217a3e3c371bb09362948dc7314c04c5d1bcd2a3e198f1602400ccbbe.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/BranchOrthogonalCompression/Variant6572f3c217a3e3c371bb09362948dc7314c04c5d1bcd2a3e198f1602400ccbbe.lean/index.md) · [Full source](../../../../mathematics/Analysis/BranchOrthogonalCompression/Variant6572f3c217a3e3c371bb09362948dc7314c04c5d1bcd2a3e198f1602400ccbbe.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6b656f637ba287fece1779f3f8662d68e15e8eb4`.

Source path: `GRWTSK/Analysis/BranchOrthogonalCompression/Variant6572f3c217a3e3c371bb09362948dc7314c04c5d1bcd2a3e198f1602400ccbbe.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/BranchOrthogonalCompression/Variant6572f3c217a3e3c371bb09362948dc7314c04c5d1bcd2a3e198f1602400ccbbe.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.Conversation.BranchNativeTranslationGap` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.InnerProductSpace.Projection.Basic` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.InnerProductSpace.Adjoint` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.InnerProductSpace.Projection.FiniteDimensional` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [compressedTranslation](../../../../mathematics/Analysis/BranchOrthogonalCompression/Variant6572f3c217a3e3c371bb09362948dc7314c04c5d1bcd2a3e198f1602400ccbbe.lean/declarations/compressedtranslation--c6ae119100456e6eaa8b0472.md) | 23 | `declaration-track:c6ae119100456e6eaa8b047231f9b518793200408b84e2f3ba6d12947b2a08ca` |
| 2 | `def` | [compressedDifference](../../../../mathematics/Analysis/BranchOrthogonalCompression/Variant6572f3c217a3e3c371bb09362948dc7314c04c5d1bcd2a3e198f1602400ccbbe.lean/declarations/compresseddifference--3d946a4f10373a0eba605136.md) | 27 | `declaration-track:3d946a4f10373a0eba605136349c522a17f0672c1ce0f2a8e18bec4f3887ba17` |
| 3 | `theorem` | [compressed_translation_norm_le](../../../../mathematics/Analysis/BranchOrthogonalCompression/Variant6572f3c217a3e3c371bb09362948dc7314c04c5d1bcd2a3e198f1602400ccbbe.lean/declarations/compressed-translation-norm-le--cd82e1502057087be53a1a32.md) | 30 | `result-track:cd82e1502057087be53a1a32661e04ec56f3a011f92fe3c11ffdf3febb14e885` |
| 4 | `theorem` | [compressed_lower_norm](../../../../mathematics/Analysis/BranchOrthogonalCompression/Variant6572f3c217a3e3c371bb09362948dc7314c04c5d1bcd2a3e198f1602400ccbbe.lean/declarations/compressed-lower-norm--18a6c3cfe52b826f424db936.md) | 34 | `result-track:18a6c3cfe52b826f424db936f7e04d923ceceaa8f4c6422adfad3f1f2c5b7075` |
| 5 | `theorem` | [compressed_upper_norm](../../../../mathematics/Analysis/BranchOrthogonalCompression/Variant6572f3c217a3e3c371bb09362948dc7314c04c5d1bcd2a3e198f1602400ccbbe.lean/declarations/compressed-upper-norm--9e513897c604953803a30c55.md) | 43 | `result-track:9e513897c604953803a30c55aa772aa99654ab505cb196792c2f7e0e0052c5e2` |
| 6 | `theorem` | [compressed_energy_gap](../../../../mathematics/Analysis/BranchOrthogonalCompression/Variant6572f3c217a3e3c371bb09362948dc7314c04c5d1bcd2a3e198f1602400ccbbe.lean/declarations/compressed-energy-gap--add08fa98a070caba6e5a914.md) | 52 | `result-track:add08fa98a070caba6e5a914d6708276e86439e8e100d5f887edfe9b7f59facb` |
| 7 | `theorem` | [compressed_kernel_zero](../../../../mathematics/Analysis/BranchOrthogonalCompression/Variant6572f3c217a3e3c371bb09362948dc7314c04c5d1bcd2a3e198f1602400ccbbe.lean/declarations/compressed-kernel-zero--ebe08e92af2bb5fa7e06cf1e.md) | 62 | `result-track:ebe08e92af2bb5fa7e06cf1ecb9fd7acbf1498e2f28b7fc9ac5bdab6a0b0e4f1` |
| 8 | `theorem` | [compressed_translation_mem](../../../../mathematics/Analysis/BranchOrthogonalCompression/Variant6572f3c217a3e3c371bb09362948dc7314c04c5d1bcd2a3e198f1602400ccbbe.lean/declarations/compressed-translation-mem--d3a560999f757b615db755a0.md) | 71 | `result-track:d3a560999f757b615db755a00d09d1d8dd4e589e1e902a2be39b8ba764db1a50` |
| 9 | `theorem` | [compressed_difference_mem](../../../../mathematics/Analysis/BranchOrthogonalCompression/Variant6572f3c217a3e3c371bb09362948dc7314c04c5d1bcd2a3e198f1602400ccbbe.lean/declarations/compressed-difference-mem--28957fbe3cc8fa1b0cb3260b.md) | 75 | `result-track:28957fbe3cc8fa1b0cb3260b8157494b134bfbe2310959545a93a0843700fd14` |
| 10 | `theorem` | [exact_readout_defect](../../../../mathematics/Analysis/BranchOrthogonalCompression/Variant6572f3c217a3e3c371bb09362948dc7314c04c5d1bcd2a3e198f1602400ccbbe.lean/declarations/exact-readout-defect--12cf7a87393017637ad2cdf0.md) | 79 | `result-track:12cf7a87393017637ad2cdf032169a2e8f0ef1b3899256c7b604069fea9f2144` |
| 11 | `theorem` | [readout_exact_of_mem](../../../../mathematics/Analysis/BranchOrthogonalCompression/Variant6572f3c217a3e3c371bb09362948dc7314c04c5d1bcd2a3e198f1602400ccbbe.lean/declarations/readout-exact-of-mem--801977d972a0dc615af759b6.md) | 88 | `result-track:801977d972a0dc615af759b6b782d43482fbc91d0fef2f40fa9b026d20275361` |
| 12 | `theorem` | [readout_defect_bound](../../../../mathematics/Analysis/BranchOrthogonalCompression/Variant6572f3c217a3e3c371bb09362948dc7314c04c5d1bcd2a3e198f1602400ccbbe.lean/declarations/readout-defect-bound--1c34f01db78597ea0631c7a6.md) | 94 | `result-track:1c34f01db78597ea0631c7a6a3df5b4c70fbcdf311a203787fddb4a0f3992ed9` |
| 13 | `def` | [nativeDifferenceOperator](../../../../mathematics/Analysis/BranchOrthogonalCompression/Variant6572f3c217a3e3c371bb09362948dc7314c04c5d1bcd2a3e198f1602400ccbbe.lean/declarations/nativedifferenceoperator--bfb0cc8c3603c1826471f6fa.md) | 104 | `declaration-track:bfb0cc8c3603c1826471f6fa5f829277517e15aa3463bd0a7b28953f4c302ac5` |
| 14 | `def` | [nativeLaplacian](../../../../mathematics/Analysis/BranchOrthogonalCompression/Variant6572f3c217a3e3c371bb09362948dc7314c04c5d1bcd2a3e198f1602400ccbbe.lean/declarations/nativelaplacian--b2eb7d654ef406b147647834.md) | 107 | `declaration-track:b2eb7d654ef406b147647834757a620a963e17258f239e585ed1b86b6d876708` |
| 15 | `theorem` | [native_difference_operator_apply](../../../../mathematics/Analysis/BranchOrthogonalCompression/Variant6572f3c217a3e3c371bb09362948dc7314c04c5d1bcd2a3e198f1602400ccbbe.lean/declarations/native-difference-operator-apply--9ce797ba5128b33c8bfab610.md) | 110 | `result-track:9ce797ba5128b33c8bfab6101b4304a22f21e3787bf60a7e1f71c49936023ee2` |
| 16 | `theorem` | [native_laplacian_self_adjoint](../../../../mathematics/Analysis/BranchOrthogonalCompression/Variant6572f3c217a3e3c371bb09362948dc7314c04c5d1bcd2a3e198f1602400ccbbe.lean/declarations/native-laplacian-self-adjoint--b065ffbd4ee78671a0128b59.md) | 113 | `result-track:b065ffbd4ee78671a0128b59d607402ff9ecdcff0617dcdb4e48c9949729ff4d` |
| 17 | `theorem` | [native_laplacian_energy](../../../../mathematics/Analysis/BranchOrthogonalCompression/Variant6572f3c217a3e3c371bb09362948dc7314c04c5d1bcd2a3e198f1602400ccbbe.lean/declarations/native-laplacian-energy--f0fe7017bba8e112d87cbdd0.md) | 117 | `result-track:f0fe7017bba8e112d87cbdd00f9752e277289b7aeaae474305494ed2e0e61d27` |
| 18 | `theorem` | [native_laplacian_gap](../../../../mathematics/Analysis/BranchOrthogonalCompression/Variant6572f3c217a3e3c371bb09362948dc7314c04c5d1bcd2a3e198f1602400ccbbe.lean/declarations/native-laplacian-gap--6d1af1e620d6f7f7fec0756f.md) | 122 | `result-track:6d1af1e620d6f7f7fec0756ff06dc6afb3aa1cf52b4e039b364ec6758edc782a` |
| 19 | `theorem` | [native_laplacian_kernel_zero](../../../../mathematics/Analysis/BranchOrthogonalCompression/Variant6572f3c217a3e3c371bb09362948dc7314c04c5d1bcd2a3e198f1602400ccbbe.lean/declarations/native-laplacian-kernel-zero--683888d6d1b97d04b1f0342b.md) | 127 | `result-track:683888d6d1b97d04b1f0342bc01627dbe809c60ab43e1292517a23e5370d6ee2` |
| 20 | `theorem` | [native_laplacian_kernel](../../../../mathematics/Analysis/BranchOrthogonalCompression/Variant6572f3c217a3e3c371bb09362948dc7314c04c5d1bcd2a3e198f1602400ccbbe.lean/declarations/native-laplacian-kernel--961dc6a5e3f5978bc7d8423d.md) | 135 | `result-track:961dc6a5e3f5978bc7d8423d8df4386492430945764ac6d93d615fce46f13b9e` |
| 21 | `theorem` | [native_harmonic_projection_zero](../../../../mathematics/Analysis/BranchOrthogonalCompression/Variant6572f3c217a3e3c371bb09362948dc7314c04c5d1bcd2a3e198f1602400ccbbe.lean/declarations/native-harmonic-projection-zero--71421a5b2ba1bab6fab5c4d5.md) | 140 | `result-track:71421a5b2ba1bab6fab5c4d580a7046c4ad70ec4e2e9080571697ed05455d38c` |
| 22 | `theorem` | [native_readout_energy_bound](../../../../mathematics/Analysis/BranchOrthogonalCompression/Variant6572f3c217a3e3c371bb09362948dc7314c04c5d1bcd2a3e198f1602400ccbbe.lean/declarations/native-readout-energy-bound--7d0b2a58ecec74f2c1bfa7e1.md) | 147 | `result-track:7d0b2a58ecec74f2c1bfa7e1baef80b568fa534fb67738b947189e20d99eb5d3` |
| 23 | `abbrev` | [finiteSourceSpan](../../../../mathematics/Analysis/BranchOrthogonalCompression/Variant6572f3c217a3e3c371bb09362948dc7314c04c5d1bcd2a3e198f1602400ccbbe.lean/declarations/finitesourcespan--b56dea0c3496caf9da73e729.md) | 158 | `declaration-track:b56dea0c3496caf9da73e7297514c2705e1b97558d411552fe8adaab5f0cfebc` |
| 24 | `theorem` | [finite_span_has_orthogonal_projection](../../../../mathematics/Analysis/BranchOrthogonalCompression/Variant6572f3c217a3e3c371bb09362948dc7314c04c5d1bcd2a3e198f1602400ccbbe.lean/declarations/finite-span-has-orthogonal-projection--3afacff2f5bd7530b09224f5.md) | 161 | `result-track:3afacff2f5bd7530b09224f5d8fe3dd17355ca5f5a5d633c0eac71842f16fd4d` |
| 25 | `def` | [finiteCompressedDifference](../../../../mathematics/Analysis/BranchOrthogonalCompression/Variant6572f3c217a3e3c371bb09362948dc7314c04c5d1bcd2a3e198f1602400ccbbe.lean/declarations/finitecompresseddifference--a6010803d514a49d253e5e0e.md) | 168 | `declaration-track:a6010803d514a49d253e5e0e8bc20e718f25206c125935d3d2898be1071e4da0` |
| 26 | `theorem` | [finite_compressed_lower_norm](../../../../mathematics/Analysis/BranchOrthogonalCompression/Variant6572f3c217a3e3c371bb09362948dc7314c04c5d1bcd2a3e198f1602400ccbbe.lean/declarations/finite-compressed-lower-norm--2268c9072f5277e921577789.md) | 173 | `result-track:2268c9072f5277e921577789dd295fdcbc9725f8b07902cf3d1387720a0bb7ec` |
| 27 | `theorem` | [finite_compressed_energy_gap](../../../../mathematics/Analysis/BranchOrthogonalCompression/Variant6572f3c217a3e3c371bb09362948dc7314c04c5d1bcd2a3e198f1602400ccbbe.lean/declarations/finite-compressed-energy-gap--9c7683d2f140df20dde978b4.md) | 179 | `result-track:9c7683d2f140df20dde978b4704e4265a6ce1b8ce882e507ce1a2c200edc3687` |
| 28 | `theorem` | [finite_readout_exact](../../../../mathematics/Analysis/BranchOrthogonalCompression/Variant6572f3c217a3e3c371bb09362948dc7314c04c5d1bcd2a3e198f1602400ccbbe.lean/declarations/finite-readout-exact--c704d473265b08c741ea41c3.md) | 185 | `result-track:c704d473265b08c741ea41c31090faa54cf625a9b255fc145cec9a90786bec18` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
