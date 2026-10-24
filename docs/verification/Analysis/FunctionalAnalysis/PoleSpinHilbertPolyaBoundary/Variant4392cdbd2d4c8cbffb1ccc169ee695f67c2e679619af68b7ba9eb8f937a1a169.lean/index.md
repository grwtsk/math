# Verification target: GRWTSK.Analysis.FunctionalAnalysis.PoleSpinHilbertPolyaBoundary.Variant4392cdbd2d4c8cbffb1ccc169ee695f67c2e679619af68b7ba9eb8f937a1a169

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "28ab0831f7995365781f5dbd339db5d3303771db",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/PoleSpinHilbertPolyaBoundary/Variant4392cdbd2d4c8cbffb1ccc169ee695f67c2e679619af68b7ba9eb8f937a1a169.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/PoleSpinHilbertPolyaBoundary/Variant4392cdbd2d4c8cbffb1ccc169ee695f67c2e679619af68b7ba9eb8f937a1a169.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/PoleSpinHilbertPolyaBoundary/Variant4392cdbd2d4c8cbffb1ccc169ee695f67c2e679619af68b7ba9eb8f937a1a169.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `28ab0831f7995365781f5dbd339db5d3303771db`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/PoleSpinHilbertPolyaBoundary/Variant4392cdbd2d4c8cbffb1ccc169ee695f67c2e679619af68b7ba9eb8f937a1a169.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/PoleSpinHilbertPolyaBoundary/Variant4392cdbd2d4c8cbffb1ccc169ee695f67c2e679619af68b7ba9eb8f937a1a169.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Think.SourceTree.Legacy.Arithmetic.ConnesTaoCheckedTheoremImports` — import line 1; external provider; requires a separately pinned dependency.
- `Think.SourceTree.Legacy.Arithmetic.GNSDeterminantExactnessBoundary` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [PoleSpinState](../../../../../mathematics/Analysis/FunctionalAnalysis/PoleSpinHilbertPolyaBoundary/Variant4392cdbd2d4c8cbffb1ccc169ee695f67c2e679619af68b7ba9eb8f937a1a169.lean/declarations/polespinstate--8b63447f4953fb3cc743de24.md) | 22 | `declaration-track:8b63447f4953fb3cc743de244be392e26d5446ab38f7b63347402fa966a395ba` |
| 2 | `def` | [zeroPoleSpinState](../../../../../mathematics/Analysis/FunctionalAnalysis/PoleSpinHilbertPolyaBoundary/Variant4392cdbd2d4c8cbffb1ccc169ee695f67c2e679619af68b7ba9eb8f937a1a169.lean/declarations/zeropolespinstate--4203ff085690769dee723caf.md) | 32 | `declaration-track:4203ff085690769dee723caf77af832fd43fac88db536b8f2bff6f66bc1e79b6` |
| 3 | `def` | [onePoleSpinState](../../../../../mathematics/Analysis/FunctionalAnalysis/PoleSpinHilbertPolyaBoundary/Variant4392cdbd2d4c8cbffb1ccc169ee695f67c2e679619af68b7ba9eb8f937a1a169.lean/declarations/onepolespinstate--510bbe86fc27e4ddd6909722.md) | 46 | `declaration-track:510bbe86fc27e4ddd690972234ff358793f3ea2e7b40e1b3c90f4d1ce3b75d87` |
| 4 | `theorem` | [pole_spin_flip_involutive](../../../../../mathematics/Analysis/FunctionalAnalysis/PoleSpinHilbertPolyaBoundary/Variant4392cdbd2d4c8cbffb1ccc169ee695f67c2e679619af68b7ba9eb8f937a1a169.lean/declarations/pole-spin-flip-involutive--31d0e894e84dd53e31051dc6.md) | 60 | `result-track:31d0e894e84dd53e31051dc64a323b86d5ea08bf2b1ef80e12618cc78f535fbd` |
| 5 | `theorem` | [zero_spin_flips_to_one](../../../../../mathematics/Analysis/FunctionalAnalysis/PoleSpinHilbertPolyaBoundary/Variant4392cdbd2d4c8cbffb1ccc169ee695f67c2e679619af68b7ba9eb8f937a1a169.lean/declarations/zero-spin-flips-to-one--f6e1f8826a69bce75af0efac.md) | 66 | `result-track:f6e1f8826a69bce75af0efac0645d8d9a360975829197743eba0d1c4b6827931` |
| 6 | `theorem` | [one_spin_flips_to_zero](../../../../../mathematics/Analysis/FunctionalAnalysis/PoleSpinHilbertPolyaBoundary/Variant4392cdbd2d4c8cbffb1ccc169ee695f67c2e679619af68b7ba9eb8f937a1a169.lean/declarations/one-spin-flips-to-zero--272558a3e205979d46125a6b.md) | 72 | `result-track:272558a3e205979d46125a6bd77bbeaeebcd9c07537a85914faaceed8fff37a0` |
| 7 | `structure` | [PoleSpinIsolationBoundary](../../../../../mathematics/Analysis/FunctionalAnalysis/PoleSpinHilbertPolyaBoundary/Variant4392cdbd2d4c8cbffb1ccc169ee695f67c2e679619af68b7ba9eb8f937a1a169.lean/declarations/polespinisolationboundary--1145f58effbeaef9d6babc35.md) | 78 | `declaration-track:1145f58effbeaef9d6babc35289479bfc3fa804cb96c92d15b8bc1cd6e1c5b44` |
| 8 | `def` | [defaultPoleSpinIsolationBoundary](../../../../../mathematics/Analysis/FunctionalAnalysis/PoleSpinHilbertPolyaBoundary/Variant4392cdbd2d4c8cbffb1ccc169ee695f67c2e679619af68b7ba9eb8f937a1a169.lean/declarations/defaultpolespinisolationboundary--a72253442c283894bfb1d5ed.md) | 100 | `declaration-track:a72253442c283894bfb1d5eda997b3415bb2a248fe47b9d482752eeedb7870cb` |
| 9 | `def` | [completedPoleSpinIsolationBoundary](../../../../../mathematics/Analysis/FunctionalAnalysis/PoleSpinHilbertPolyaBoundary/Variant4392cdbd2d4c8cbffb1ccc169ee695f67c2e679619af68b7ba9eb8f937a1a169.lean/declarations/completedpolespinisolationboundary--e5dea6dced4cc70feecc803f.md) | 117 | `declaration-track:e5dea6dced4cc70feecc803f98e18fcda1c9bb1e4aff4f5e0099dabfcbd0361b` |
| 10 | `theorem` | [isolated_pole_spin_flip_boundary_admits_transfer](../../../../../mathematics/Analysis/FunctionalAnalysis/PoleSpinHilbertPolyaBoundary/Variant4392cdbd2d4c8cbffb1ccc169ee695f67c2e679619af68b7ba9eb8f937a1a169.lean/declarations/isolated-pole-spin-flip-boundary-admits-transfer--34bed0b3aa17beba077df964.md) | 134 | `result-track:34bed0b3aa17beba077df964067cf30f00ae603419de7474e7df03f44208643a` |
| 11 | `theorem` | [completed_pole_spin_boundary_admits_transfer](../../../../../mathematics/Analysis/FunctionalAnalysis/PoleSpinHilbertPolyaBoundary/Variant4392cdbd2d4c8cbffb1ccc169ee695f67c2e679619af68b7ba9eb8f937a1a169.lean/declarations/completed-pole-spin-boundary-admits-transfer--e5058881713d69b70051e9f3.md) | 147 | `result-track:e5058881713d69b70051e9f34507f64cfe10f538ece42da7b4993184b64c4d9a` |
| 12 | `theorem` | [default_pole_spin_boundary_blocks_transfer](../../../../../mathematics/Analysis/FunctionalAnalysis/PoleSpinHilbertPolyaBoundary/Variant4392cdbd2d4c8cbffb1ccc169ee695f67c2e679619af68b7ba9eb8f937a1a169.lean/declarations/default-pole-spin-boundary-blocks-transfer--583d7a1b73a3aa01266eca05.md) | 152 | `result-track:583d7a1b73a3aa01266eca052132219e82470dc74bd16e7c7a2799037520bd6f` |
| 13 | `theorem` | [completed_pole_spin_boundary_does_not_prove_hp_or_rh](../../../../../mathematics/Analysis/FunctionalAnalysis/PoleSpinHilbertPolyaBoundary/Variant4392cdbd2d4c8cbffb1ccc169ee695f67c2e679619af68b7ba9eb8f937a1a169.lean/declarations/completed-pole-spin-boundary-does-not-prove-hp-or-rh--7dace5bc552510ba7f365ab0.md) | 159 | `result-track:7dace5bc552510ba7f365ab06b5117efe643c7ede9ee7a6e3897a3b71310ab10` |
| 14 | `structure` | [HilbertPolyaAuthorityBoundary](../../../../../mathematics/Analysis/FunctionalAnalysis/PoleSpinHilbertPolyaBoundary/Variant4392cdbd2d4c8cbffb1ccc169ee695f67c2e679619af68b7ba9eb8f937a1a169.lean/declarations/hilbertpolyaauthorityboundary--d10a3a592566b59c176e35bb.md) | 165 | `declaration-track:d10a3a592566b59c176e35bbef774672bea966cce9b86d4dee1fd7c54ade4ba0` |
| 15 | `def` | [defaultHilbertPolyaAuthorityBoundary](../../../../../mathematics/Analysis/FunctionalAnalysis/PoleSpinHilbertPolyaBoundary/Variant4392cdbd2d4c8cbffb1ccc169ee695f67c2e679619af68b7ba9eb8f937a1a169.lean/declarations/defaulthilbertpolyaauthorityboundary--411eb776aa42baa4f87dbe6e.md) | 206 | `declaration-track:411eb776aa42baa4f87dbe6e125cd73e0cec5d0525c8f1794f55dc26e281721f` |
| 16 | `def` | [completedHilbertPolyaAuthorityBoundary](../../../../../mathematics/Analysis/FunctionalAnalysis/PoleSpinHilbertPolyaBoundary/Variant4392cdbd2d4c8cbffb1ccc169ee695f67c2e679619af68b7ba9eb8f937a1a169.lean/declarations/completedhilbertpolyaauthorityboundary--053b1d85069b4783e5511aa7.md) | 234 | `declaration-track:053b1d85069b4783e5511aa7bcfefbc0ead08daa89e4bbe4fafc7ea473b41c52` |
| 17 | `theorem` | [complete_gate_implies_hilbert_polya_authority](../../../../../mathematics/Analysis/FunctionalAnalysis/PoleSpinHilbertPolyaBoundary/Variant4392cdbd2d4c8cbffb1ccc169ee695f67c2e679619af68b7ba9eb8f937a1a169.lean/declarations/complete-gate-implies-hilbert-polya-authority--a3633298ba629f8c2023a25a.md) | 260 | `result-track:a3633298ba629f8c2023a25a1b04b99023560ef385997c28d4c7e935bf74f012` |
| 18 | `theorem` | [hilbert_polya_authority_implies_rh_authority](../../../../../mathematics/Analysis/FunctionalAnalysis/PoleSpinHilbertPolyaBoundary/Variant4392cdbd2d4c8cbffb1ccc169ee695f67c2e679619af68b7ba9eb8f937a1a169.lean/declarations/hilbert-polya-authority-implies-rh-authority--8b8e96da982d99f3d1d2a46f.md) | 283 | `result-track:8b8e96da982d99f3d1d2a46f499c9af73395b6e5926c87f15423eef8e755735d` |
| 19 | `theorem` | [default_boundary_refuses_unconditional_hilbert_polya](../../../../../mathematics/Analysis/FunctionalAnalysis/PoleSpinHilbertPolyaBoundary/Variant4392cdbd2d4c8cbffb1ccc169ee695f67c2e679619af68b7ba9eb8f937a1a169.lean/declarations/default-boundary-refuses-unconditional-hilbert-polya--57903d16028c824e5f5ed81c.md) | 291 | `result-track:57903d16028c824e5f5ed81c411e754981e62e155d92811caceb6834321c9f98` |
| 20 | `theorem` | [completed_boundary_reaches_hilbert_polya_and_rh](../../../../../mathematics/Analysis/FunctionalAnalysis/PoleSpinHilbertPolyaBoundary/Variant4392cdbd2d4c8cbffb1ccc169ee695f67c2e679619af68b7ba9eb8f937a1a169.lean/declarations/completed-boundary-reaches-hilbert-polya-and-rh--d1e3373cbe80fce96c75bd99.md) | 303 | `result-track:d1e3373cbe80fce96c75bd99909faa97c553ba28b32e8f885299f9bfe797eb05` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
