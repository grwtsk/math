# Verification target: GRWTSK.NumberTheory.XiToeplitz.Variant10596a4f49ca7a550a0e2f3b8dc6e14253bf3ad764f58c4c1e84bee31db4f243

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a948422878c679712386f55c18dc80205709163a",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/XiToeplitz/Variant10596a4f49ca7a550a0e2f3b8dc6e14253bf3ad764f58c4c1e84bee31db4f243.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/XiToeplitz/Variant10596a4f49ca7a550a0e2f3b8dc6e14253bf3ad764f58c4c1e84bee31db4f243.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/XiToeplitz/Variant10596a4f49ca7a550a0e2f3b8dc6e14253bf3ad764f58c4c1e84bee31db4f243.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a948422878c679712386f55c18dc80205709163a`.

Source path: `GRWTSK/NumberTheory/XiToeplitz/Variant10596a4f49ca7a550a0e2f3b8dc6e14253bf3ad764f58c4c1e84bee31db4f243.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/XiToeplitz/Variant10596a4f49ca7a550a0e2f3b8dc6e14253bf3ad764f58c4c1e84bee31db4f243.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.PositiveAtlas.Grassmannian.ToeplitzChart24` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.PositiveAtlas.Grassmannian.Transverse` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.LSeries.RiemannZeta` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.IteratedDeriv.Defs` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [xi](../../../../mathematics/NumberTheory/XiToeplitz/Variant10596a4f49ca7a550a0e2f3b8dc6e14253bf3ad764f58c4c1e84bee31db4f243.lean/declarations/xi--c04889f2761a5da95c7ed377.md) | 34 | `declaration-track:c04889f2761a5da95c7ed3772d01973fe9ae423fbf2aa1293d98f2911bd4a975` |
| 2 | `theorem` | [xi_zero](../../../../mathematics/NumberTheory/XiToeplitz/Variant10596a4f49ca7a550a0e2f3b8dc6e14253bf3ad764f58c4c1e84bee31db4f243.lean/declarations/xi-zero--339b6df315c28cedfb68b06e.md) | 37 | `result-track:339b6df315c28cedfb68b06eb0b2240c36f2c3bb2fe213b2928412bb0dea3762` |
| 3 | `theorem` | [xi_one](../../../../mathematics/NumberTheory/XiToeplitz/Variant10596a4f49ca7a550a0e2f3b8dc6e14253bf3ad764f58c4c1e84bee31db4f243.lean/declarations/xi-one--8398a47432ce921bc39c3d12.md) | 40 | `result-track:8398a47432ce921bc39c3d12b10c1c89b3a6c76162134891d8f3f1a799d2d898` |
| 4 | `theorem` | [differentiable_xi](../../../../mathematics/NumberTheory/XiToeplitz/Variant10596a4f49ca7a550a0e2f3b8dc6e14253bf3ad764f58c4c1e84bee31db4f243.lean/declarations/differentiable-xi--ead0af29a425a1f5fd58de03.md) | 43 | `result-track:ead0af29a425a1f5fd58de035f47beb5dd4aa67eb2ac19e05e436410057e01ff` |
| 5 | `theorem` | [xi_one_sub](../../../../mathematics/NumberTheory/XiToeplitz/Variant10596a4f49ca7a550a0e2f3b8dc6e14253bf3ad764f58c4c1e84bee31db4f243.lean/declarations/xi-one-sub--b1271211bcb009cb53b405e5.md) | 50 | `result-track:b1271211bcb009cb53b405e54b6d3dc0f880a39de2e0e9cd8d8dc7099a734503` |
| 6 | `theorem` | [xi_centered_even](../../../../mathematics/NumberTheory/XiToeplitz/Variant10596a4f49ca7a550a0e2f3b8dc6e14253bf3ad764f58c4c1e84bee31db4f243.lean/declarations/xi-centered-even--907b470d94f90cfc4cb29b8b.md) | 55 | `result-track:907b470d94f90cfc4cb29b8b6f637fdec9f6fa60e02e9ed75470660f0d0d0985` |
| 7 | `theorem` | [xi_eq_completed](../../../../mathematics/NumberTheory/XiToeplitz/Variant10596a4f49ca7a550a0e2f3b8dc6e14253bf3ad764f58c4c1e84bee31db4f243.lean/declarations/xi-eq-completed--0a1fbbf245462033fa662672.md) | 62 | `result-track:0a1fbbf245462033fa662672c100d31b53f3ad0653531f40d9ec29aace43e165` |
| 8 | `theorem` | [completed_recover](../../../../mathematics/NumberTheory/XiToeplitz/Variant10596a4f49ca7a550a0e2f3b8dc6e14253bf3ad764f58c4c1e84bee31db4f243.lean/declarations/completed-recover--3bc7813f5572ee1c9c178f17.md) | 70 | `result-track:3bc7813f5572ee1c9c178f171e3a406b4a4e927b69fe7064f6c953cb7157d8cc` |
| 9 | `theorem` | [zeta_recover](../../../../mathematics/NumberTheory/XiToeplitz/Variant10596a4f49ca7a550a0e2f3b8dc6e14253bf3ad764f58c4c1e84bee31db4f243.lean/declarations/zeta-recover--9ea0bacaddd5ba0cb1d1da5e.md) | 77 | `result-track:9ea0bacaddd5ba0cb1d1da5ea9bef164a738db1367f0db7743b5b36a0c4b7e31` |
| 10 | `theorem` | [actual_trivial_zero](../../../../mathematics/NumberTheory/XiToeplitz/Variant10596a4f49ca7a550a0e2f3b8dc6e14253bf3ad764f58c4c1e84bee31db4f243.lean/declarations/actual-trivial-zero--1b11707edd26b96328172619.md) | 82 | `result-track:1b11707edd26b9632817261931f985c21443eda33008660a7921675e0e732b96` |
| 11 | `def` | [coefficient](../../../../mathematics/NumberTheory/XiToeplitz/Variant10596a4f49ca7a550a0e2f3b8dc6e14253bf3ad764f58c4c1e84bee31db4f243.lean/declarations/coefficient--678e1a56b537fa1a5059c41f.md) | 86 | `declaration-track:678e1a56b537fa1a5059c41f057b7cfef8acaa958cda53dcaf4a41bdfce617e5` |
| 12 | `theorem` | [coefficient_zero](../../../../mathematics/NumberTheory/XiToeplitz/Variant10596a4f49ca7a550a0e2f3b8dc6e14253bf3ad764f58c4c1e84bee31db4f243.lean/declarations/coefficient-zero--8f429bf624b5f0c72cb29c4c.md) | 90 | `result-track:8f429bf624b5f0c72cb29c4cc5afda225a0ae889340f793a754b6db3392c3ab4` |
| 13 | `def` | [centeredSeries](../../../../mathematics/NumberTheory/XiToeplitz/Variant10596a4f49ca7a550a0e2f3b8dc6e14253bf3ad764f58c4c1e84bee31db4f243.lean/declarations/centeredseries--7f6bb98788e8c4f3b3deb3b1.md) | 94 | `declaration-track:7f6bb98788e8c4f3b3deb3b14da17473ace775978b28a934bf849fd7c995e071` |
| 14 | `def` | [TaylorDescent](../../../../mathematics/NumberTheory/XiToeplitz/Variant10596a4f49ca7a550a0e2f3b8dc6e14253bf3ad764f58c4c1e84bee31db4f243.lean/declarations/taylordescent--21cdaa0f18f0d4b14a3ff597.md) | 97 | `declaration-track:21cdaa0f18f0d4b14a3ff59716dd0c21efbd63d5ca90de367c57bc1b4e344d8d` |
| 15 | `def` | [PrimeLogDerivativeIdentity](../../../../mathematics/NumberTheory/XiToeplitz/Variant10596a4f49ca7a550a0e2f3b8dc6e14253bf3ad764f58c4c1e84bee31db4f243.lean/declarations/primelogderivativeidentity--d45feb90f83e04f87ddbf931.md) | 104 | `declaration-track:d45feb90f83e04f87ddbf931041377c4870dc719f4a9d2163841e8d47d6f561f` |
| 16 | `def` | [TrivialZeroCorrectionSeries](../../../../mathematics/NumberTheory/XiToeplitz/Variant10596a4f49ca7a550a0e2f3b8dc6e14253bf3ad764f58c4c1e84bee31db4f243.lean/declarations/trivialzerocorrectionseries--76628df961b0fadd8735a390.md) | 113 | `declaration-track:76628df961b0fadd8735a390082c72f86c2954fabcc523fc28d5d8a5fd93d8d2` |
| 17 | `def` | [XiToeplitzPositivity](../../../../mathematics/NumberTheory/XiToeplitz/Variant10596a4f49ca7a550a0e2f3b8dc6e14253bf3ad764f58c4c1e84bee31db4f243.lean/declarations/xitoeplitzpositivity--94bc8d45e8f5ae32298f2f64.md) | 119 | `declaration-track:94bc8d45e8f5ae32298f2f64c79e971f421df6808a5cffe00ddd8251369ed01d` |
| 18 | `def` | [XiPFCriterion](../../../../mathematics/NumberTheory/XiToeplitz/Variant10596a4f49ca7a550a0e2f3b8dc6e14253bf3ad764f58c4c1e84bee31db4f243.lean/declarations/xipfcriterion--2a27941849f76a7d3681de03.md) | 122 | `declaration-track:2a27941849f76a7d3681de03adc7b8175631f1bf34a5b388e25582fe7dd3e9a1` |
| 19 | `def` | [stage](../../../../mathematics/NumberTheory/XiToeplitz/Variant10596a4f49ca7a550a0e2f3b8dc6e14253bf3ad764f58c4c1e84bee31db4f243.lean/declarations/stage--1b0e03eabe7d6949b5da460f.md) | 125 | `declaration-track:1b0e03eabe7d6949b5da460fce9a65890fb5a107de089ad9b68b2c1a40a09c61` |
| 20 | `def` | [stagePlane](../../../../mathematics/NumberTheory/XiToeplitz/Variant10596a4f49ca7a550a0e2f3b8dc6e14253bf3ad764f58c4c1e84bee31db4f243.lean/declarations/stageplane--6ae0339e56a2e0b4be3c20cb.md) | 128 | `declaration-track:6ae0339e56a2e0b4be3c20cb3e6a201bcd7db0f435008592d4ba3e8020266b11` |
| 21 | `def` | [XiGrassmannianPositivity](../../../../mathematics/NumberTheory/XiToeplitz/Variant10596a4f49ca7a550a0e2f3b8dc6e14253bf3ad764f58c4c1e84bee31db4f243.lean/declarations/xigrassmannianpositivity--2086a7d95ab49762a9d96117.md) | 131 | `declaration-track:2086a7d95ab49762a9d96117695758b9436b3e8ab46b5883d057b7ad6350d7d9` |
| 22 | `theorem` | [xiToeplitz_iff_finite_stages](../../../../mathematics/NumberTheory/XiToeplitz/Variant10596a4f49ca7a550a0e2f3b8dc6e14253bf3ad764f58c4c1e84bee31db4f243.lean/declarations/xitoeplitz-iff-finite-stages--8865afe8c17e0951ec658eb1.md) | 135 | `result-track:8865afe8c17e0951ec658eb1532053452c2a2498a28ea4fbda121f151a974281` |
| 23 | `theorem` | [stage_restrict](../../../../mathematics/NumberTheory/XiToeplitz/Variant10596a4f49ca7a550a0e2f3b8dc6e14253bf3ad764f58c4c1e84bee31db4f243.lean/declarations/stage-restrict--02f44c00199b1276a65093cd.md) | 140 | `result-track:02f44c00199b1276a65093cd2554c1bdcd1906f76318c872a0c86d51801cf3b4` |
| 24 | `theorem` | [recover_stage](../../../../mathematics/NumberTheory/XiToeplitz/Variant10596a4f49ca7a550a0e2f3b8dc6e14253bf3ad764f58c4c1e84bee31db4f243.lean/declarations/recover-stage--b9f2efa8ef5e29bb0b597ec3.md) | 144 | `result-track:b9f2efa8ef5e29bb0b597ec3680fd6327a0d340e77cad0b3d5ca3df359c4ffd1` |
| 25 | `theorem` | [stage_two_minor_bridge](../../../../mathematics/NumberTheory/XiToeplitz/Variant10596a4f49ca7a550a0e2f3b8dc6e14253bf3ad764f58c4c1e84bee31db4f243.lean/declarations/stage-two-minor-bridge--d7a3db1fb1fa17452b498bbf.md) | 148 | `result-track:d7a3db1fb1fa17452b498bbf728ac65e570cca071043ac85afbb6d4379960427` |
| 26 | `theorem` | [phase_normalization_iff](../../../../mathematics/NumberTheory/XiToeplitz/Variant10596a4f49ca7a550a0e2f3b8dc6e14253bf3ad764f58c4c1e84bee31db4f243.lean/declarations/phase-normalization-iff--5ac68ebb237e6cbd86ae08a1.md) | 153 | `result-track:5ac68ebb237e6cbd86ae08a19d918bead56ab9c23ac37ebdec812e14e6e1aa55` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
