# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.DensityDecoder.Variant4d7b33cb9e8194213b9c748324c463505c7737ab17955312e398040074545329

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2d000b00ed2c3d18846409259044a65e427c6db9",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/DensityDecoder/Variant4d7b33cb9e8194213b9c748324c463505c7737ab17955312e398040074545329.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DensityDecoder/Variant4d7b33cb9e8194213b9c748324c463505c7737ab17955312e398040074545329.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DensityDecoder/Variant4d7b33cb9e8194213b9c748324c463505c7737ab17955312e398040074545329.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2d000b00ed2c3d18846409259044a65e427c6db9`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/DensityDecoder/Variant4d7b33cb9e8194213b9c748324c463505c7737ab17955312e398040074545329.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/DensityDecoder/Variant4d7b33cb9e8194213b9c748324c463505c7737ab17955312e398040074545329.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FiniteDecoderDraft` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceCriticalDensityQuadrature` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [densityReadout](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DensityDecoder/Variant4d7b33cb9e8194213b9c748324c463505c7737ab17955312e398040074545329.lean/declarations/densityreadout--3d1a3ed801c4390cd6efa336.md) | 17 | `declaration-track:3d1a3ed801c4390cd6efa336c43769cd7a0b1b53021e143897fdefec954eee79` |
| 2 | `theorem` | [density_continuous](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DensityDecoder/Variant4d7b33cb9e8194213b9c748324c463505c7737ab17955312e398040074545329.lean/declarations/density-continuous--9e8246fe1500cf4649126390.md) | 20 | `result-track:9e8246fe1500cf46491263909c3f9b6e15d95156255e28a8ced356c6747cdc89` |
| 3 | `theorem` | [density_interval_mass](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DensityDecoder/Variant4d7b33cb9e8194213b9c748324c463505c7737ab17955312e398040074545329.lean/declarations/density-interval-mass--f02e0c692077a0a69ee4e1ec.md) | 24 | `result-track:f02e0c692077a0a69ee4e1ecaeaeb5a16950cd534d9011508f92b39d0aa8b0f9` |
| 4 | `theorem` | [cell_density_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DensityDecoder/Variant4d7b33cb9e8194213b9c748324c463505c7737ab17955312e398040074545329.lean/declarations/cell-density-integrable--1bf42bfd64cbcee34a5c718a.md) | 36 | `result-track:1bf42bfd64cbcee34a5c718a9d19504a5e6e92cb5a6c0175620e35d31055966a` |
| 5 | `theorem` | [density_decoded_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DensityDecoder/Variant4d7b33cb9e8194213b9c748324c463505c7737ab17955312e398040074545329.lean/declarations/density-decoded-integrable--8ab44a2edd5bdf36c44a1968.md) | 46 | `result-track:8ab44a2edd5bdf36c44a1968231c37b636c62ba1b5faec290b1cb15508d9df8c` |
| 6 | `theorem` | [cell_density_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DensityDecoder/Variant4d7b33cb9e8194213b9c748324c463505c7737ab17955312e398040074545329.lean/declarations/cell-density-integral--ac98b7f032b559d38de20d89.md) | 53 | `result-track:ac98b7f032b559d38de20d89232d537f59bbe5ee2cd395a731889566fc242b1d` |
| 7 | `theorem` | [density_decoded_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DensityDecoder/Variant4d7b33cb9e8194213b9c748324c463505c7737ab17955312e398040074545329.lean/declarations/density-decoded-integral--e289b359207d02b30b54021e.md) | 77 | `result-track:e289b359207d02b30b54021ef1c8e4485f1b756786123beb8017a37a34eb36ba` |
| 8 | `theorem` | [density_decoded_ledger](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DensityDecoder/Variant4d7b33cb9e8194213b9c748324c463505c7737ab17955312e398040074545329.lean/declarations/density-decoded-ledger--a0b78e34aa629244002e7cbd.md) | 90 | `result-track:a0b78e34aa629244002e7cbdabac14bc07fd1ff9609076ce42da0e6a5cf23742` |
| 9 | `theorem` | [density_mesh_ledger](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DensityDecoder/Variant4d7b33cb9e8194213b9c748324c463505c7737ab17955312e398040074545329.lean/declarations/density-mesh-ledger--f48ee062fc31192464d0e052.md) | 102 | `result-track:f48ee062fc31192464d0e052e62e4ae004e1a9681bd9df59cf318eaf0f130a73` |
| 10 | `theorem` | [densityReadout_actual](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DensityDecoder/Variant4d7b33cb9e8194213b9c748324c463505c7737ab17955312e398040074545329.lean/declarations/densityreadout-actual--b48456135dc39b609891e9ab.md) | 111 | `result-track:b48456135dc39b609891e9abefe4ef6555a124910d7ca7b3937c94e76a2cad28` |
| 11 | `theorem` | [densityReadout_full_drift](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DensityDecoder/Variant4d7b33cb9e8194213b9c748324c463505c7737ab17955312e398040074545329.lean/declarations/densityreadout-full-drift--efab970b4ebcac3834ad55c9.md) | 116 | `result-track:efab970b4ebcac3834ad55c9c33c6cb8719deb0100bbca2d893819c5874c513f` |
| 12 | `theorem` | [density_integral_error](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DensityDecoder/Variant4d7b33cb9e8194213b9c748324c463505c7737ab17955312e398040074545329.lean/declarations/density-integral-error--4d3e322d1e7ec77bf4f542ff.md) | 124 | `result-track:4d3e322d1e7ec77bf4f542fff8cd4654f49b22c179f8325b796f772ea8c2ead9` |
| 13 | `theorem` | [densityReadout_error](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DensityDecoder/Variant4d7b33cb9e8194213b9c748324c463505c7737ab17955312e398040074545329.lean/declarations/densityreadout-error--fede3343a027a5361aab7e8d.md) | 155 | `result-track:fede3343a027a5361aab7e8d6d0a6b34e2e2b384ed558b0a76429b38ab732dc5` |
| 14 | `theorem` | [densityReadout_sharp_uniform_error](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DensityDecoder/Variant4d7b33cb9e8194213b9c748324c463505c7737ab17955312e398040074545329.lean/declarations/densityreadout-sharp-uniform-error--ad1beb67501a4f3d8183853a.md) | 175 | `result-track:ad1beb67501a4f3d8183853afa523a30d80424e0bf72a5b2dc1a2904d8d6065a` |
| 15 | `theorem` | [densityReadout_uniform_error](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DensityDecoder/Variant4d7b33cb9e8194213b9c748324c463505c7737ab17955312e398040074545329.lean/declarations/densityreadout-uniform-error--1945ffd64114d343cedde7ec.md) | 193 | `result-track:1945ffd64114d343cedde7ec805bdb37c0cb77aeec1f196907d13f74763c4fab` |
| 16 | `def` | [densityResolutionCount](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DensityDecoder/Variant4d7b33cb9e8194213b9c748324c463505c7737ab17955312e398040074545329.lean/declarations/densityresolutioncount--65ea31813285c51bd1a577ac.md) | 204 | `declaration-track:65ea31813285c51bd1a577acf26810ea90ac1722d8b38914cdbcfab0e9a75e7f` |
| 17 | `theorem` | [densityResolutionCount_pos](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DensityDecoder/Variant4d7b33cb9e8194213b9c748324c463505c7737ab17955312e398040074545329.lean/declarations/densityresolutioncount-pos--d9248dc0ae5455d88d48c1ac.md) | 207 | `result-track:d9248dc0ae5455d88d48c1acb6918c3a9365388de1ebf7f6a5f9d3ed0a7124dc` |
| 18 | `theorem` | [density_resolution_budget](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DensityDecoder/Variant4d7b33cb9e8194213b9c748324c463505c7737ab17955312e398040074545329.lean/declarations/density-resolution-budget--1f2a90d70652417a1809006f.md) | 210 | `result-track:1f2a90d70652417a1809006fe30c9c1de4ee78098e2f638d1c9d882d3c89e45b` |
| 19 | `theorem` | [densityResolutionCount_monotone](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DensityDecoder/Variant4d7b33cb9e8194213b9c748324c463505c7737ab17955312e398040074545329.lean/declarations/densityresolutioncount-monotone--e0a482a3d793376f9f4515fd.md) | 234 | `result-track:e0a482a3d793376f9f4515fd085d73df3b7a710d7f1dc2356a7653eb1e17fce0` |
| 20 | `theorem` | [density_resolving_error](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DensityDecoder/Variant4d7b33cb9e8194213b9c748324c463505c7737ab17955312e398040074545329.lean/declarations/density-resolving-error--f514c80db3bb61ea13151d3e.md) | 247 | `result-track:f514c80db3bb61ea13151d3e5732c33aa97dc7cade8653b50d915a6f3ab32916` |
| 21 | `theorem` | [density_resolving_error_unconditional](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DensityDecoder/Variant4d7b33cb9e8194213b9c748324c463505c7737ab17955312e398040074545329.lean/declarations/density-resolving-error-unconditional--12b3182a093a25bbc5e07090.md) | 275 | `result-track:12b3182a093a25bbc5e070902c7b6574beb28277728c535ac7995bb8f5da4e51` |
| 22 | `theorem` | [density_decoder_tail_transfer](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DensityDecoder/Variant4d7b33cb9e8194213b9c748324c463505c7737ab17955312e398040074545329.lean/declarations/density-decoder-tail-transfer--b02b467d0b431e865d88a9aa.md) | 286 | `result-track:b02b467d0b431e865d88a9aa5d99bafd6381fc4a569cf7f05787977ce73306d8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
