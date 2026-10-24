# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.DirichletDampedPrimePowerPacking

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8e294b9e792efd7f967b31fec557175bd4c5d4c9",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/DirichletDampedPrimePowerPacking.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/DirichletDampedPrimePowerPacking.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/DirichletDampedPrimePowerPacking.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8e294b9e792efd7f967b31fec557175bd4c5d4c9`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/DirichletDampedPrimePowerPacking.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/DirichletDampedPrimePowerPacking.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.CanonicalPrimePowerSelector`](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalPrimePowerSelector.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.PinnedVonMangoldtCoefficientSource`](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedVonMangoldtCoefficientSource.lean/index.md) — import line 5; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.SequentialThreePointVolumePacking`](../../../../../mathematics/NumberTheory/Zeta/Riemann/SequentialThreePointVolumePacking.lean/index.md) — import line 6; pinned internal source present.
- `Mathlib.Analysis.SpecialFunctions.Pow.Asymptotics` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [logScale_eq_log_natValue](../../../../../mathematics/NumberTheory/Zeta/Riemann/DirichletDampedPrimePowerPacking.lean/declarations/logscale-eq-log-natvalue--dc4b275051a69fc7de53f5a9.md) | 44 | `result-track:dc4b275051a69fc7de53f5a93b333945cd4bdef2f5e3f946fea89a01a3b51ddc` |
| 2 | `theorem` | [mangoldtScale_le_logScale](../../../../../mathematics/NumberTheory/Zeta/Riemann/DirichletDampedPrimePowerPacking.lean/declarations/mangoldtscale-le-logscale--f2bb188e308f33d79d7408f2.md) | 49 | `result-track:f2bb188e308f33d79d7408f22db4a5ad2af96c2d20cb3b11f38f2eef635985b2` |
| 3 | `theorem` | [canonicalPrimePowerValueSequence_strictMono](../../../../../mathematics/NumberTheory/Zeta/Riemann/DirichletDampedPrimePowerPacking.lean/declarations/canonicalprimepowervaluesequence-strictmono--cd50731c4584e99068296b42.md) | 64 | `result-track:cd50731c4584e99068296b42e6d23b89e4e190ecc6c320fce0558b289612d149` |
| 4 | `theorem` | [canonicalPrimePowerValueSequence_real_tendsto_atTop](../../../../../mathematics/NumberTheory/Zeta/Riemann/DirichletDampedPrimePowerPacking.lean/declarations/canonicalprimepowervaluesequence-real-tendsto-attop--97d2cf4a30b4740e966de503.md) | 69 | `result-track:97d2cf4a30b4740e966de503c9cce414af8839288b9f4b570d927c978ec46264` |
| 5 | `def` | [dirichletTwoX](../../../../../mathematics/NumberTheory/Zeta/Riemann/DirichletDampedPrimePowerPacking.lean/declarations/dirichlettwox--1b5d29eeb6727ab6a7c7a6c1.md) | 77 | `declaration-track:1b5d29eeb6727ab6a7c7a6c1028648e0232ceab6b26e39db26ef73d3bc3cce41` |
| 6 | `def` | [dirichletTwoY](../../../../../mathematics/NumberTheory/Zeta/Riemann/DirichletDampedPrimePowerPacking.lean/declarations/dirichlettwoy--12b3e23cee73ac0da63ec870.md) | 82 | `declaration-track:12b3e23cee73ac0da63ec87061bf6fc2f668311dcb33a81482a8d9cdb71de4dd` |
| 7 | `def` | [dirichletTwoPoint](../../../../../mathematics/NumberTheory/Zeta/Riemann/DirichletDampedPrimePowerPacking.lean/declarations/dirichlettwopoint--b957f5cfd7706c816c7ac47e.md) | 88 | `declaration-track:b957f5cfd7706c816c7ac47e7feacbf3d29aeadadbb3e8300aa056e37d301f1e` |
| 8 | `theorem` | [dirichletTwoX_tendsto_zero](../../../../../mathematics/NumberTheory/Zeta/Riemann/DirichletDampedPrimePowerPacking.lean/declarations/dirichlettwox-tendsto-zero--691b5f60f4846fd37d78e7be.md) | 92 | `result-track:691b5f60f4846fd37d78e7beb09525f312066fc94892f2d6abc913ad8df20604` |
| 9 | `theorem` | [dirichletTwoY_nonnegative](../../../../../mathematics/NumberTheory/Zeta/Riemann/DirichletDampedPrimePowerPacking.lean/declarations/dirichlettwoy-nonnegative--82c3603755376250b13984a7.md) | 103 | `result-track:82c3603755376250b13984a7ae0825e4ff9387f8e2dfecde9ca4bb7b8ef09261` |
| 10 | `theorem` | [dirichletTwoY_le_X](../../../../../mathematics/NumberTheory/Zeta/Riemann/DirichletDampedPrimePowerPacking.lean/declarations/dirichlettwoy-le-x--7a28edcb6061c8f26f39b4fa.md) | 108 | `result-track:7a28edcb6061c8f26f39b4fa3617351c27cab7da7ba4cabd03661a2579e3cc73` |
| 11 | `theorem` | [dirichletTwoY_tendsto_zero](../../../../../mathematics/NumberTheory/Zeta/Riemann/DirichletDampedPrimePowerPacking.lean/declarations/dirichlettwoy-tendsto-zero--cfd6ff03b3e053be2462d18d.md) | 122 | `result-track:cfd6ff03b3e053be2462d18dc774bd76f66210849d21815f1837f14a86aee07b` |
| 12 | `def` | [dirichletTwoPackingSequence](../../../../../mathematics/NumberTheory/Zeta/Riemann/DirichletDampedPrimePowerPacking.lean/declarations/dirichlettwopackingsequence--ae66b95448ade1767e1c2e55.md) | 128 | `declaration-track:ae66b95448ade1767e1c2e55b8dea5d54bb106772d0f7ca23acc8028b2fcbf2c` |
| 13 | `def` | [dirichletTwoOrientedVolume](../../../../../mathematics/NumberTheory/Zeta/Riemann/DirichletDampedPrimePowerPacking.lean/declarations/dirichlettwoorientedvolume--40ecb97385221b3d46591c02.md) | 135 | `declaration-track:40ecb97385221b3d46591c02fa29088e7d39a29e413cb8f8dc1ecb3e15fe3fe6` |
| 14 | `theorem` | [dirichletTwoOrientedVolume_eq_packing](../../../../../mathematics/NumberTheory/Zeta/Riemann/DirichletDampedPrimePowerPacking.lean/declarations/dirichlettwoorientedvolume-eq-packing--8f1f2037d290c55e82f60a46.md) | 141 | `result-track:8f1f2037d290c55e82f60a466e7fa8bdcb52972755c0dc876eba8305c216ecb7` |
| 15 | `theorem` | [dirichletTwoX_shift_tendsto_zero](../../../../../mathematics/NumberTheory/Zeta/Riemann/DirichletDampedPrimePowerPacking.lean/declarations/dirichlettwox-shift-tendsto-zero--8814200c38d20ed3aaae4790.md) | 147 | `result-track:8814200c38d20ed3aaae4790957c575dc18943cc5b8c0905efddfb993ca4365c` |
| 16 | `theorem` | [dirichletTwoY_shift_tendsto_zero](../../../../../mathematics/NumberTheory/Zeta/Riemann/DirichletDampedPrimePowerPacking.lean/declarations/dirichlettwoy-shift-tendsto-zero--603bb6f01c3a08c367082f5c.md) | 151 | `result-track:603bb6f01c3a08c367082f5c9ad813611f91ee58e35bc646a108deb6a529b803` |
| 17 | `theorem` | [dirichletTwoOrientedVolume_tendsto_zero](../../../../../mathematics/NumberTheory/Zeta/Riemann/DirichletDampedPrimePowerPacking.lean/declarations/dirichlettwoorientedvolume-tendsto-zero--95d7e0b37234b5b405b017ec.md) | 156 | `result-track:95d7e0b37234b5b405b017ec5fea4a0ee20ee1a42ffb1992000339154cb8aca5` |
| 18 | `theorem` | [dirichletTwoPacking_valueAt_tendsto_zero](../../../../../mathematics/NumberTheory/Zeta/Riemann/DirichletDampedPrimePowerPacking.lean/declarations/dirichlettwopacking-valueat-tendsto-zero--8da44ebcc26eaebaea4bf0ea.md) | 186 | `result-track:8da44ebcc26eaebaea4bf0eae51d1077aa86c5db60f8d71124c228034de2d091` |
| 19 | `theorem` | [dirichletTwoPacking_valueAt_nonnegative](../../../../../mathematics/NumberTheory/Zeta/Riemann/DirichletDampedPrimePowerPacking.lean/declarations/dirichlettwopacking-valueat-nonnegative--90ed2bcfad0e649dfe71c005.md) | 199 | `result-track:90ed2bcfad0e649dfe71c005d1e5a49ebf6f9839be6530a528075e23689d6ef3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
