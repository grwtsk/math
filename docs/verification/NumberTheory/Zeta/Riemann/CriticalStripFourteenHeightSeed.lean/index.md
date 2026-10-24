# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripFourteenHeightSeed

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5e8ab59ef5c235768e3045af4e123eab73225858",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripFourteenHeightSeed.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripFourteenHeightSeed.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripFourteenHeightSeed.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5e8ab59ef5c235768e3045af4e123eab73225858`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripFourteenHeightSeed.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/CriticalStripFourteenHeightSeed.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripFourteenHeightBernstein`](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripFourteenHeightBernstein.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [projection_le_twice_norm](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripFourteenHeightSeed.lean/declarations/projection-le-twice-norm--558b6f5f98a9ba98fe9b2ff6.md) | 23 | `result-track:558b6f5f98a9ba98fe9b2ff621e97384b31d5734b1b4d881fc4c012077e4048e` |
| 2 | `theorem` | [source_projection](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripFourteenHeightSeed.lean/declarations/source-projection--84576acc1da96791c911299b.md) | 29 | `result-track:84576acc1da96791c911299b95a15a96b138b82f3fd0318acd7ef1bb1bf04fe8` |
| 3 | `theorem` | [poleNormalized_norm_lower_fourteenBand](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripFourteenHeightSeed.lean/declarations/polenormalized-norm-lower-fourteenband--54fc117c8b1e309fcc5d1efc.md) | 38 | `result-track:54fc117c8b1e309fcc5d1efcc081cd459227669ed3830bc41f7e48ccebf7845f` |
| 4 | `theorem` | [poleNormalized_nonzero_fourteenBand](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripFourteenHeightSeed.lean/declarations/polenormalized-nonzero-fourteenband--9b8301eefa890df48f89943d.md) | 44 | `result-track:9b8301eefa890df48f89943d42facb26e387814cd9cb425cca83625436ac0235` |
| 5 | `theorem` | [shellRH_thirteen](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripFourteenHeightSeed.lean/declarations/shellrh-thirteen--2907d62d4bef796fc3b6a81f.md) | 51 | `result-track:2907d62d4bef796fc3b6a81f3fc0baa2b6f215a8c230d591f65a2d16c907e1c0` |
| 6 | `theorem` | [windowRH_fourteen](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripFourteenHeightSeed.lean/declarations/windowrh-fourteen--d019535e7b19a3500b0e54d9.md) | 62 | `result-track:d019535e7b19a3500b0e54d9e5b64e6af4fa3f797b2b61a1f8de9e9ff479acb2` |
| 7 | `theorem` | [nontrivialZetaZero_height_gt_fourteen](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripFourteenHeightSeed.lean/declarations/nontrivialzetazero-height-gt-fourteen--74a40402e76c0d1b63330041.md) | 65 | `result-track:74a40402e76c0d1b63330041fdf7ce38f6e1bc090c06f54f14b6d29fec6a7ec2` |
| 8 | `theorem` | [noTargetZero_fourteenHeight](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripFourteenHeightSeed.lean/declarations/notargetzero-fourteenheight--d42ad6aeab22637e96b8e57a.md) | 95 | `result-track:d42ad6aeab22637e96b8e57a83f6a01bdf52b2000822c1a36e89bfd9513671ed` |
| 9 | `def` | [deformation](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripFourteenHeightSeed.lean/declarations/deformation--f3642db71ce66dab43804a71.md) | 101 | `declaration-track:f3642db71ce66dab43804a71e670337c5d87ca7793b8b06b36add074a9516daa` |
| 10 | `theorem` | [deformation_zero](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripFourteenHeightSeed.lean/declarations/deformation-zero--af3c676ffef1526823b39503.md) | 104 | `result-track:af3c676ffef1526823b3950313d6dc1540c8f6d8c4837a6bd2d002031a110f45` |
| 11 | `theorem` | [deformation_one](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripFourteenHeightSeed.lean/declarations/deformation-one--0af9c220421993d44a6413df.md) | 105 | `result-track:0af9c220421993d44a6413df3bcdf215218964dec0aa5529dc315e09a35e7f9f` |
| 12 | `theorem` | [deformation_continuous](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripFourteenHeightSeed.lean/declarations/deformation-continuous--d5dc9ee43d8aabe02d073981.md) | 107 | `result-track:d5dc9ee43d8aabe02d073981ac9be7b76dac11a3eca86c224e77e6ef5241746f` |
| 13 | `theorem` | [deformation_differentiableAt](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripFourteenHeightSeed.lean/declarations/deformation-differentiableat--ba29cac9b11259045bc70681.md) | 111 | `result-track:ba29cac9b11259045bc70681efbe292582f29b0f99603fdb69729a22daf7c86b` |
| 14 | `theorem` | [deformation_norm_lower](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripFourteenHeightSeed.lean/declarations/deformation-norm-lower--95f33e40a5ef83cb5a1ec061.md) | 114 | `result-track:95f33e40a5ef83cb5a1ec061aeace29e1bd153e6a0448c27899009d728515c6a` |
| 15 | `theorem` | [inverse_deformation_differentiableAt](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripFourteenHeightSeed.lean/declarations/inverse-deformation-differentiableat--7f63f1d7924aea12009b5151.md) | 124 | `result-track:7f63f1d7924aea12009b5151c625f8514581d228ed858ef30b7d860e0c562793` |
| 16 | `theorem` | [old_new_endpoint](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripFourteenHeightSeed.lean/declarations/old-new-endpoint--9752b8c4d98c60cdf26ffff2.md) | 134 | `result-track:9752b8c4d98c60cdf26ffff24f179be714304749773243a7b3478f3810c7cf0a` |
| 17 | `theorem` | [window_fifteen_of_shell](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripFourteenHeightSeed.lean/declarations/window-fifteen-of-shell--3a4f5a200f00088ffde7373b.md) | 137 | `result-track:3a4f5a200f00088ffde7373b51afc8bb4f19e147a2c776b406de0940f2fd6b85` |
| 18 | `theorem` | [all_windows_of_above_fourteen](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripFourteenHeightSeed.lean/declarations/all-windows-of-above-fourteen--25d636bc7351a1fc5fd582b9.md) | 140 | `result-track:25d636bc7351a1fc5fd582b91dd7bb91cfd9460657016bd728bea899881c7bfe` |
| 19 | `theorem` | [rh_of_above_fourteen](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripFourteenHeightSeed.lean/declarations/rh-of-above-fourteen--906a4612753761c2407bff57.md) | 150 | `result-track:906a4612753761c2407bff577bce03dbf012bbc7088d5cedf3c6ce6222fa57fc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
