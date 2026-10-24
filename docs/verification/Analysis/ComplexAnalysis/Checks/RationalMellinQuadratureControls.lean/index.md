# Verification target: GRWTSK.Analysis.Complex.Checks.RationalMellinQuadratureControls

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0e958c55832886f8baf3a9505bc57edcd8c40ee0",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Complex/Checks/RationalMellinQuadratureControls.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/ComplexAnalysis/Checks/RationalMellinQuadratureControls.lean/index.md) · [Full source](../../../../../mathematics/Analysis/ComplexAnalysis/Checks/RationalMellinQuadratureControls.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0e958c55832886f8baf3a9505bc57edcd8c40ee0`.

Source path: `GRWTSK/Analysis/Complex/Checks/RationalMellinQuadratureControls.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Complex/Checks/RationalMellinQuadratureControls.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.Complex.RationalMellinQuadrature`](../../../../../mathematics/Analysis/ComplexAnalysis/RationalMellinQuadrature.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [unitSample](../../../../../mathematics/Analysis/ComplexAnalysis/Checks/RationalMellinQuadratureControls.lean/declarations/unitsample--dff785255f4f386110de9025.md) | 24 | `declaration-track:dff785255f4f386110de90253217cfc7b47f53d746df83f7e6bbe6256217a4e2` |
| 2 | `def` | [unitTrace](../../../../../mathematics/Analysis/ComplexAnalysis/Checks/RationalMellinQuadratureControls.lean/declarations/unittrace--8cd85bb404cfb990db2ca3f0.md) | 25 | `declaration-track:8cd85bb404cfb990db2ca3f03cf68aa6af730a432d7b91f48d851dbd207c6981` |
| 3 | `theorem` | [unit_checked](../../../../../mathematics/Analysis/ComplexAnalysis/Checks/RationalMellinQuadratureControls.lean/declarations/unit-checked--0760e1f9754b5eef16eaae67.md) | 27 | `result-track:0760e1f9754b5eef16eaae6787dec98386ca4002cab99a68c212ba885ba7e05a` |
| 4 | `theorem` | [unit_integral_enclosure](../../../../../mathematics/Analysis/ComplexAnalysis/Checks/RationalMellinQuadratureControls.lean/declarations/unit-integral-enclosure--1ab8d7dc5460b0546ccd9b1a.md) | 29 | `result-track:1ab8d7dc5460b0546ccd9b1abe7bffd9434d3c4331499ae843bdadd0d0a0deab` |
| 5 | `def` | [reciprocalSample](../../../../../mathematics/Analysis/ComplexAnalysis/Checks/RationalMellinQuadratureControls.lean/declarations/reciprocalsample--7ec4d76edb4533ec00fb8e74.md) | 34 | `declaration-track:7ec4d76edb4533ec00fb8e74cd327be9d105313ce6b43bef3bd346ced1ed17b1` |
| 6 | `def` | [reciprocalTrace](../../../../../mathematics/Analysis/ComplexAnalysis/Checks/RationalMellinQuadratureControls.lean/declarations/reciprocaltrace--7fceff04fd0ab7615ad51783.md) | 36 | `declaration-track:7fceff04fd0ab7615ad51783df2c559953179e93dd007eb27b32d56db18047f3` |
| 7 | `theorem` | [reciprocal_checked](../../../../../mathematics/Analysis/ComplexAnalysis/Checks/RationalMellinQuadratureControls.lean/declarations/reciprocal-checked--4415f7636bec75400c50df6c.md) | 38 | `result-track:4415f7636bec75400c50df6c8490416aa5a0169c5ba5ac422d7af7b2ca9fce98` |
| 8 | `theorem` | [reciprocal_integral_enclosure](../../../../../mathematics/Analysis/ComplexAnalysis/Checks/RationalMellinQuadratureControls.lean/declarations/reciprocal-integral-enclosure--5d4a22909980e2e940717e13.md) | 41 | `result-track:5d4a22909980e2e940717e130986e5515933c47f82cb9f1a4de183d6a466c135` |
| 9 | `theorem` | [node_precision_is_not_kernel_precision](../../../../../mathematics/Analysis/ComplexAnalysis/Checks/RationalMellinQuadratureControls.lean/declarations/node-precision-is-not-kernel-precision--ece75abed4fd1ee039735000.md) | 47 | `result-track:ece75abed4fd1ee0397350008710ba7a8c748ff32e21d4d59a6b1d0ec5b47fda` |
| 10 | `theorem` | [changed_right_endpoint_rejected](../../../../../mathematics/Analysis/ComplexAnalysis/Checks/RationalMellinQuadratureControls.lean/declarations/changed-right-endpoint-rejected--4c85e7c5c457395a60660f5d.md) | 53 | `result-track:4c85e7c5c457395a60660f5d7130d91bbb1a638658ef9d661fe2d358a318a4d6` |
| 11 | `theorem` | [domain_controls](../../../../../mathematics/Analysis/ComplexAnalysis/Checks/RationalMellinQuadratureControls.lean/declarations/domain-controls--d6e2f2523579580bffb9bdfd.md) | 55 | `result-track:d6e2f2523579580bffb9bdfdd664dc81abaece04df2824679565c399565ec72d` |
| 12 | `theorem` | [zero_cells_rejected](../../../../../mathematics/Analysis/ComplexAnalysis/Checks/RationalMellinQuadratureControls.lean/declarations/zero-cells-rejected--c04f8a9389fcbc13d0b37db5.md) | 62 | `result-track:c04f8a9389fcbc13d0b37db5999932559cc070edda77bf72de74bceba08d0b3d` |
| 13 | `theorem` | [sample_coverage_controls](../../../../../mathematics/Analysis/ComplexAnalysis/Checks/RationalMellinQuadratureControls.lean/declarations/sample-coverage-controls--93e4d1fd609ae1835938ccad.md) | 66 | `result-track:93e4d1fd609ae1835938ccad89c74145fa9bcb9d0ecf6aff1a43a055626ca0fd` |
| 14 | `theorem` | [sum_coverage_controls](../../../../../mathematics/Analysis/ComplexAnalysis/Checks/RationalMellinQuadratureControls.lean/declarations/sum-coverage-controls--e4eb01afc77a256a560aa122.md) | 70 | `result-track:e4eb01afc77a256a560aa1220340a320b18af8779d206ea6789f629a4e48992f` |
| 15 | `theorem` | [initialization_control](../../../../../mathematics/Analysis/ComplexAnalysis/Checks/RationalMellinQuadratureControls.lean/declarations/initialization-control--1301f714c070b8a8d9d46447.md) | 76 | `result-track:1301f714c070b8a8d9d4644790a70dace33e0eeeada5e1b163f53a49e6c23074` |
| 16 | `def` | [roundedTrace](../../../../../mathematics/Analysis/ComplexAnalysis/Checks/RationalMellinQuadratureControls.lean/declarations/roundedtrace--db3b3f1e6de5a33838d1de3d.md) | 79 | `declaration-track:db3b3f1e6de5a33838d1de3dc47210ac15d8811b07648883038cdfb644897023` |
| 17 | `theorem` | [rounded_accumulation_control](../../../../../mathematics/Analysis/ComplexAnalysis/Checks/RationalMellinQuadratureControls.lean/declarations/rounded-accumulation-control--cdf0bbbe7e33bbc5fd516307.md) | 82 | `result-track:cdf0bbbe7e33bbc5fd51630792400320162ee1abfbabfcfe1ec80447b8d1d459` |
| 18 | `theorem` | [negative_radius_and_imaginary_defect_controls](../../../../../mathematics/Analysis/ComplexAnalysis/Checks/RationalMellinQuadratureControls.lean/declarations/negative-radius-and-imaginary-defect-controls--849b6f6d3a4b2593986e2faa.md) | 87 | `result-track:849b6f6d3a4b2593986e2faa990017e1881847206ab1ff297b2b1a0a42fa8c90` |
| 19 | `theorem` | [degenerate_interval_control](../../../../../mathematics/Analysis/ComplexAnalysis/Checks/RationalMellinQuadratureControls.lean/declarations/degenerate-interval-control--e65b40b2bde205decb4061b2.md) | 92 | `result-track:e65b40b2bde205decb4061b208c0b2e8efe161c1f1b1c21c424ff00ac779521c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
