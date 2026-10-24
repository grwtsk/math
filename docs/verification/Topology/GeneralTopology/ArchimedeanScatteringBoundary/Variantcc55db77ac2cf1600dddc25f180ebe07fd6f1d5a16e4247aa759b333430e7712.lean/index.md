# Verification target: GRWTSK.Topology.GeneralTopology.ArchimedeanScatteringBoundary.Variantcc55db77ac2cf1600dddc25f180ebe07fd6f1d5a16e4247aa759b333430e7712

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a7737b41706855ec7ae335398b117cb5698e65e5",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/ArchimedeanScatteringBoundary/Variantcc55db77ac2cf1600dddc25f180ebe07fd6f1d5a16e4247aa759b333430e7712.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/ArchimedeanScatteringBoundary/Variantcc55db77ac2cf1600dddc25f180ebe07fd6f1d5a16e4247aa759b333430e7712.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/ArchimedeanScatteringBoundary/Variantcc55db77ac2cf1600dddc25f180ebe07fd6f1d5a16e4247aa759b333430e7712.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a7737b41706855ec7ae335398b117cb5698e65e5`.

Source path: `GRWTSK/Topology/GeneralTopology/ArchimedeanScatteringBoundary/Variantcc55db77ac2cf1600dddc25f180ebe07fd6f1d5a16e4247aa759b333430e7712.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/ArchimedeanScatteringBoundary/Variantcc55db77ac2cf1600dddc25f180ebe07fd6f1d5a16e4247aa759b333430e7712.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Think.SourceTree.Legacy.Arithmetic.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ArchimedeanSpatialAction](../../../../../mathematics/Topology/GeneralTopology/ArchimedeanScatteringBoundary/Variantcc55db77ac2cf1600dddc25f180ebe07fd6f1d5a16e4247aa759b333430e7712.lean/declarations/archimedeanspatialaction--d5009cbf21fff1b04781ca42.md) | 28 | `declaration-track:d5009cbf21fff1b04781ca428204cbf177a6db39c5678df18f85ea33e791d387` |
| 2 | `theorem` | [preserves_self_adjointness](../../../../../mathematics/Topology/GeneralTopology/ArchimedeanScatteringBoundary/Variantcc55db77ac2cf1600dddc25f180ebe07fd6f1d5a16e4247aa759b333430e7712.lean/declarations/preserves-self-adjointness--8aa12bfc91dfd73871325645.md) | 44 | `result-track:8aa12bfc91dfd7387132564517943aca3e906f055b6e8cebb93d3234284c7c73` |
| 3 | `structure` | [ArchimedeanBoundary](../../../../../mathematics/Topology/GeneralTopology/ArchimedeanScatteringBoundary/Variantcc55db77ac2cf1600dddc25f180ebe07fd6f1d5a16e4247aa759b333430e7712.lean/declarations/archimedeanboundary--e316c7c2c68c105beab4473c.md) | 54 | `declaration-track:e316c7c2c68c105beab4473ca62d26de7f8b69af0ae0510ccf26df30e8586319` |
| 4 | `def` | [defaultArchimedeanBoundary](../../../../../mathematics/Topology/GeneralTopology/ArchimedeanScatteringBoundary/Variantcc55db77ac2cf1600dddc25f180ebe07fd6f1d5a16e4247aa759b333430e7712.lean/declarations/defaultarchimedeanboundary--70edf70b4058aa45ad9adc56.md) | 73 | `declaration-track:70edf70b4058aa45ad9adc568b22a17c2d3d080329a2152c36e52d5b52405034` |
| 5 | `theorem` | [archimedean_boundary_preserves_self_adjointness](../../../../../mathematics/Topology/GeneralTopology/ArchimedeanScatteringBoundary/Variantcc55db77ac2cf1600dddc25f180ebe07fd6f1d5a16e4247aa759b333430e7712.lean/declarations/archimedean-boundary-preserves-self-adjointness--df631d53886a539038fb7e7f.md) | 91 | `result-track:df631d53886a539038fb7e7f0a30417efca9dd33ce69f857645b6964b0d6a19e` |
| 6 | `theorem` | [archimedean_boundary_blocks_ordinary_fredholm_overclaim](../../../../../mathematics/Topology/GeneralTopology/ArchimedeanScatteringBoundary/Variantcc55db77ac2cf1600dddc25f180ebe07fd6f1d5a16e4247aa759b333430e7712.lean/declarations/archimedean-boundary-blocks-ordinary-fredholm-overclaim--8ee440221baa3c449e2c6c09.md) | 99 | `result-track:8ee440221baa3c449e2c6c099fff6130502a2095a327e582e03657a44e4b8244` |
| 7 | `theorem` | [finite_mobius_projectors_do_not_act_on_archimedean_channel](../../../../../mathematics/Topology/GeneralTopology/ArchimedeanScatteringBoundary/Variantcc55db77ac2cf1600dddc25f180ebe07fd6f1d5a16e4247aa759b333430e7712.lean/declarations/finite-mobius-projectors-do-not-act-on-archimedean-channel--58fae256a4c1364ca10952df.md) | 107 | `result-track:58fae256a4c1364ca10952df3004e62dbe721d68785637bcb0a56430ec08c879` |
| 8 | `theorem` | [continuous_spectrum_is_not_self_adjointness_failure](../../../../../mathematics/Topology/GeneralTopology/ArchimedeanScatteringBoundary/Variantcc55db77ac2cf1600dddc25f180ebe07fd6f1d5a16e4247aa759b333430e7712.lean/declarations/continuous-spectrum-is-not-self-adjointness-failure--bba0db67cf34566836454d45.md) | 113 | `result-track:bba0db67cf34566836454d451631680a50d7da3b6f089c115299a8d7fb1b25fa` |
| 9 | `theorem` | [continuous_spectrum_forces_no_ordinary_fredholm_claim](../../../../../mathematics/Topology/GeneralTopology/ArchimedeanScatteringBoundary/Variantcc55db77ac2cf1600dddc25f180ebe07fd6f1d5a16e4247aa759b333430e7712.lean/declarations/continuous-spectrum-forces-no-ordinary-fredholm-claim--3379c8b54c063387c31362b3.md) | 120 | `result-track:3379c8b54c063387c31362b32083238e5c7500bcf8da15dcee4072579cde8c59` |
| 10 | `theorem` | [continuous_spectrum_retains_self_adjoint_generator](../../../../../mathematics/Topology/GeneralTopology/ArchimedeanScatteringBoundary/Variantcc55db77ac2cf1600dddc25f180ebe07fd6f1d5a16e4247aa759b333430e7712.lean/declarations/continuous-spectrum-retains-self-adjoint-generator--b306df1ebd062553f630c916.md) | 126 | `result-track:b306df1ebd062553f630c916a438b93f51a3d6a36db199a16a7218af3d08322e` |
| 11 | `structure` | [ZetaSpectralRigidityBoundary](../../../../../mathematics/Topology/GeneralTopology/ArchimedeanScatteringBoundary/Variantcc55db77ac2cf1600dddc25f180ebe07fd6f1d5a16e4247aa759b333430e7712.lean/declarations/zetaspectralrigidityboundary--add1bcd022e3a4c4f039d169.md) | 134 | `declaration-track:add1bcd022e3a4c4f039d16949bdb4e61599c3aa40cfc8d64353f3ba02d34021` |
| 12 | `def` | [defaultZetaSpectralRigidityBoundary](../../../../../mathematics/Topology/GeneralTopology/ArchimedeanScatteringBoundary/Variantcc55db77ac2cf1600dddc25f180ebe07fd6f1d5a16e4247aa759b333430e7712.lean/declarations/defaultzetaspectralrigidityboundary--9935bb6fc151802aaec42a20.md) | 148 | `declaration-track:9935bb6fc151802aaec42a20ffdddac7e628fa81431f048b91250fd1a3492f1f` |
| 13 | `theorem` | [zeta_boundary_uses_relative_regularized_determinant](../../../../../mathematics/Topology/GeneralTopology/ArchimedeanScatteringBoundary/Variantcc55db77ac2cf1600dddc25f180ebe07fd6f1d5a16e4247aa759b333430e7712.lean/declarations/zeta-boundary-uses-relative-regularized-determinant--eabc647bb4bbfe19d8c66561.md) | 162 | `result-track:eabc647bb4bbfe19d8c6656116a829720fb2981a761f521845ea9b20346a5fb6` |
| 14 | `theorem` | [zeta_boundary_uses_critical_line_ordinate](../../../../../mathematics/Topology/GeneralTopology/ArchimedeanScatteringBoundary/Variantcc55db77ac2cf1600dddc25f180ebe07fd6f1d5a16e4247aa759b333430e7712.lean/declarations/zeta-boundary-uses-critical-line-ordinate--8517130c3ca8059e54f52507.md) | 169 | `result-track:8517130c3ca8059e54f52507d7759744951f02e5b196cfd6a336c4f0a2ef5866` |
| 15 | `theorem` | [zeta_boundary_keeps_rigidity_conditional](../../../../../mathematics/Topology/GeneralTopology/ArchimedeanScatteringBoundary/Variantcc55db77ac2cf1600dddc25f180ebe07fd6f1d5a16e4247aa759b333430e7712.lean/declarations/zeta-boundary-keeps-rigidity-conditional--4996eabbe83c5bd155e54fe4.md) | 176 | `result-track:4996eabbe83c5bd155e54fe47a244b5fff9d03d92bd5d68f7b79dee5ca115d23` |
| 16 | `theorem` | [archimedean_channel_self_adjoint_relative_boundary](../../../../../mathematics/Topology/GeneralTopology/ArchimedeanScatteringBoundary/Variantcc55db77ac2cf1600dddc25f180ebe07fd6f1d5a16e4247aa759b333430e7712.lean/declarations/archimedean-channel-self-adjoint-relative-boundary--ceaf741ecdb6d271ca712ebe.md) | 184 | `result-track:ceaf741ecdb6d271ca712ebef6313726fff3606f785d446c3942e10517c43877` |
| 17 | `structure` | [GlobalScatteringTraceBoundary](../../../../../mathematics/Topology/GeneralTopology/ArchimedeanScatteringBoundary/Variantcc55db77ac2cf1600dddc25f180ebe07fd6f1d5a16e4247aa759b333430e7712.lean/declarations/globalscatteringtraceboundary--117ccf77c3825d6370579ba0.md) | 192 | `declaration-track:117ccf77c3825d6370579ba0229e58d42c19dafb725ce980213edcc8a19a8881` |
| 18 | `def` | [defaultGlobalScatteringTraceBoundary](../../../../../mathematics/Topology/GeneralTopology/ArchimedeanScatteringBoundary/Variantcc55db77ac2cf1600dddc25f180ebe07fd6f1d5a16e4247aa759b333430e7712.lean/declarations/defaultglobalscatteringtraceboundary--6e05786b8204a36238bd5b2f.md) | 203 | `declaration-track:6e05786b8204a36238bd5b2f47c3c9ffd6398fbf671fdc8c8ddaa332fbb815fa` |
| 19 | `theorem` | [global_trace_blocks_direct_archimedean_projector_lift](../../../../../mathematics/Topology/GeneralTopology/ArchimedeanScatteringBoundary/Variantcc55db77ac2cf1600dddc25f180ebe07fd6f1d5a16e4247aa759b333430e7712.lean/declarations/global-trace-blocks-direct-archimedean-projector-lift--ccd4778c2685e177366298cd.md) | 213 | `result-track:ccd4778c2685e177366298cd4822b761f28310890fc690256b32c3a11f28ebb7` |
| 20 | `theorem` | [global_trace_requires_relative_boundary](../../../../../mathematics/Topology/GeneralTopology/ArchimedeanScatteringBoundary/Variantcc55db77ac2cf1600dddc25f180ebe07fd6f1d5a16e4247aa759b333430e7712.lean/declarations/global-trace-requires-relative-boundary--4bd373786274038ac1fe3124.md) | 221 | `result-track:4bd373786274038ac1fe3124cbe6d7968699d55a94e8ac7fd369488b0e3545cf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
