# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.SourceHybridStorage.Variant276b4c1759ac7e379742e9f371980b450d36499d68c3dffceb20a79981d5e003

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fa7723ed5b6449dc5bc6326d5c2e6217ec4570ed",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceHybridStorage/Variant276b4c1759ac7e379742e9f371980b450d36499d68c3dffceb20a79981d5e003.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceHybridStorage/Variant276b4c1759ac7e379742e9f371980b450d36499d68c3dffceb20a79981d5e003.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceHybridStorage/Variant276b4c1759ac7e379742e9f371980b450d36499d68c3dffceb20a79981d5e003.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fa7723ed5b6449dc5bc6326d5c2e6217ec4570ed`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/SourceHybridStorage/Variant276b4c1759ac7e379742e9f371980b450d36499d68c3dffceb20a79981d5e003.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/SourceHybridStorage/Variant276b4c1759ac7e379742e9f371980b450d36499d68c3dffceb20a79981d5e003.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Integral.IntervalIntegral.FundThmCalculus` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.ConjTranspose` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Complex.Basic` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Linarith` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NoncommRing` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [flow_integral_bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceHybridStorage/Variant276b4c1759ac7e379742e9f371980b450d36499d68c3dffceb20a79981d5e003.lean/declarations/flow-integral-bound--858a7be423f6d5ac62a181bf.md) | 28 | `result-track:858a7be423f6d5ac62a181bf99e60fd049b71b1d439611cc64e060facf002666` |
| 2 | `theorem` | [signed_hybrid_telescope](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceHybridStorage/Variant276b4c1759ac7e379742e9f371980b450d36499d68c3dffceb20a79981d5e003.lean/declarations/signed-hybrid-telescope--6fc09f9b3a11c0fbb23ef71d.md) | 41 | `result-track:6fc09f9b3a11c0fbb23ef71dc0af50229d8038c5ad4fb2afdb7d7891924c511d` |
| 3 | `theorem` | [signed_hybrid_bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceHybridStorage/Variant276b4c1759ac7e379742e9f371980b450d36499d68c3dffceb20a79981d5e003.lean/declarations/signed-hybrid-bound--5d0df62ea8bb0cdd88fec7a9.md) | 58 | `result-track:5d0df62ea8bb0cdd88fec7a9e00c9dcd5260ebf5ad583dc7fb2fdedc2bdf30bd` |
| 4 | `def` | [quadraticReadout](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceHybridStorage/Variant276b4c1759ac7e379742e9f371980b450d36499d68c3dffceb20a79981d5e003.lean/declarations/quadraticreadout--242d8dd71763565b93287cda.md) | 75 | `declaration-track:242d8dd71763565b93287cda2caa79dffb342f117a52066d94b15c11315acb99` |
| 5 | `def` | [FormLE](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceHybridStorage/Variant276b4c1759ac7e379742e9f371980b450d36499d68c3dffceb20a79981d5e003.lean/declarations/formle--ffc8c71427d4fa5c42f1cb1f.md) | 79 | `declaration-track:ffc8c71427d4fa5c42f1cb1f1d4d97145a5bc6b06ab1a8efe9f388f68665bfb5` |
| 6 | `theorem` | [quadraticReadout_congruence](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceHybridStorage/Variant276b4c1759ac7e379742e9f371980b450d36499d68c3dffceb20a79981d5e003.lean/declarations/quadraticreadout-congruence--2bf7be95a4426b862f7a057c.md) | 82 | `result-track:2bf7be95a4426b862f7a057c92c09c1e8403b69313cb61a925dced04917c29b7` |
| 7 | `theorem` | [formLE_congruence](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceHybridStorage/Variant276b4c1759ac7e379742e9f371980b450d36499d68c3dffceb20a79981d5e003.lean/declarations/formle-congruence--b2075700ffb7a2a250086d82.md) | 89 | `result-track:b2075700ffb7a2a250086d827210f5f114cd5dd455c5eef59745c80282abd8aa` |
| 8 | `def` | [homogeneousProjector](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceHybridStorage/Variant276b4c1759ac7e379742e9f371980b450d36499d68c3dffceb20a79981d5e003.lean/declarations/homogeneousprojector--03c87e57e26a606a957f3d26.md) | 95 | `declaration-track:03c87e57e26a606a957f3d26ed8e8d8b4f07c16f22e7cfd337d00ade9a154f37` |
| 9 | `theorem` | [homogeneousProjector_readout](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceHybridStorage/Variant276b4c1759ac7e379742e9f371980b450d36499d68c3dffceb20a79981d5e003.lean/declarations/homogeneousprojector-readout--648cdda66c6661b2a4dc0df5.md) | 98 | `result-track:648cdda66c6661b2a4dc0df5807fcee2fb08df4b0e683c68cde4df8792c172f0` |
| 10 | `theorem` | [homogeneousProjector_covariance](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceHybridStorage/Variant276b4c1759ac7e379742e9f371980b450d36499d68c3dffceb20a79981d5e003.lean/declarations/homogeneousprojector-covariance--a61152912ef543de0fff842a.md) | 104 | `result-track:a61152912ef543de0fff842abca858ef381dccf1e3ac7749c55d04865cad6bb1` |
| 11 | `def` | [transformedStorageDerivative](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceHybridStorage/Variant276b4c1759ac7e379742e9f371980b450d36499d68c3dffceb20a79981d5e003.lean/declarations/transformedstoragederivative--f52dfb1c5fb224adfaa12f85.md) | 120 | `declaration-track:f52dfb1c5fb224adfaa12f85db873d0132862e7772846d62baf48c13e98e17fe` |
| 12 | `theorem` | [flow_defect_covariance](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceHybridStorage/Variant276b4c1759ac7e379742e9f371980b450d36499d68c3dffceb20a79981d5e003.lean/declarations/flow-defect-covariance--990922de23e70b5fef6e1d88.md) | 123 | `result-track:990922de23e70b5fef6e1d88d9ac232aba33b330e7338bdf084485f6f1e7b781` |
| 13 | `theorem` | [event_defect_covariance](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceHybridStorage/Variant276b4c1759ac7e379742e9f371980b450d36499d68c3dffceb20a79981d5e003.lean/declarations/event-defect-covariance--4a0410b8474122f9a86ad476.md) | 141 | `result-track:4a0410b8474122f9a86ad47604f7f02bdb306a072a38821ea1d2408efc8b2372` |
| 14 | `theorem` | [simultaneous_affine_reset](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceHybridStorage/Variant276b4c1759ac7e379742e9f371980b450d36499d68c3dffceb20a79981d5e003.lean/declarations/simultaneous-affine-reset--ed9aa80879527b8c3cc4c4bc.md) | 159 | `result-track:ed9aa80879527b8c3cc4c4bcd4f0e1ebe2819f6bad48779673bec35c9465fbbc` |
| 15 | `theorem` | [simultaneous_impulse_mixed_term](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceHybridStorage/Variant276b4c1759ac7e379742e9f371980b450d36499d68c3dffceb20a79981d5e003.lean/declarations/simultaneous-impulse-mixed-term--f30ed1155f7ec7a9a5117ab2.md) | 165 | `result-track:f30ed1155f7ec7a9a5117ab288f81a2bd41d3fd155a0f9bff24bca4dcaf86e68` |
| 16 | `theorem` | [offset_telescope](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceHybridStorage/Variant276b4c1759ac7e379742e9f371980b450d36499d68c3dffceb20a79981d5e003.lean/declarations/offset-telescope--fce4a03105004e58c4f7b6dd.md) | 172 | `result-track:fce4a03105004e58c4f7b6dd183e791ac791c22f2c35fab86d038619b8fd6e40` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
