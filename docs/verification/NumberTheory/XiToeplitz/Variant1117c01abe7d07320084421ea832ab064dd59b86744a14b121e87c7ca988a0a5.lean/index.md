# Verification target: GRWTSK.NumberTheory.XiToeplitz.Variant1117c01abe7d07320084421ea832ab064dd59b86744a14b121e87c7ca988a0a5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e80f1381d7e59f8cdbcbcb0062e0d1a209a29bbb",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/XiToeplitz/Variant1117c01abe7d07320084421ea832ab064dd59b86744a14b121e87c7ca988a0a5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/XiToeplitz/Variant1117c01abe7d07320084421ea832ab064dd59b86744a14b121e87c7ca988a0a5.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/XiToeplitz/Variant1117c01abe7d07320084421ea832ab064dd59b86744a14b121e87c7ca988a0a5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e80f1381d7e59f8cdbcbcb0062e0d1a209a29bbb`.

Source path: `GRWTSK/NumberTheory/XiToeplitz/Variant1117c01abe7d07320084421ea832ab064dd59b86744a14b121e87c7ca988a0a5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/XiToeplitz/Variant1117c01abe7d07320084421ea832ab064dd59b86744a14b121e87c7ca988a0a5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.PositiveAtlas.Grassmannian.ToeplitzChart24` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.PositiveAtlas.Grassmannian.Transverse` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.LSeries.RiemannZeta` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.IteratedDeriv.Defs` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [xi](../../../../mathematics/NumberTheory/XiToeplitz/Variant1117c01abe7d07320084421ea832ab064dd59b86744a14b121e87c7ca988a0a5.lean/declarations/xi--135d0a0ffb0157500a98690a.md) | 26 | `declaration-track:135d0a0ffb0157500a98690aae5771fd383706378e2da3ea0bf3a0931f45bc03` |
| 2 | `theorem` | [xi_zero](../../../../mathematics/NumberTheory/XiToeplitz/Variant1117c01abe7d07320084421ea832ab064dd59b86744a14b121e87c7ca988a0a5.lean/declarations/xi-zero--392021a24ef81fa04500198d.md) | 29 | `result-track:392021a24ef81fa04500198d36430ddc43465c3d096ba77545ea5d8aeee153cd` |
| 3 | `theorem` | [xi_one](../../../../mathematics/NumberTheory/XiToeplitz/Variant1117c01abe7d07320084421ea832ab064dd59b86744a14b121e87c7ca988a0a5.lean/declarations/xi-one--31436e0313d323b05c78a990.md) | 32 | `result-track:31436e0313d323b05c78a990f1be41ea783dc660552d6e3bd54955ac8124ea54` |
| 4 | `theorem` | [differentiable_xi](../../../../mathematics/NumberTheory/XiToeplitz/Variant1117c01abe7d07320084421ea832ab064dd59b86744a14b121e87c7ca988a0a5.lean/declarations/differentiable-xi--bd746ad9369925bacd788932.md) | 35 | `result-track:bd746ad9369925bacd788932731cff1272ae0c2951b1b59c2d290d508583600e` |
| 5 | `theorem` | [xi_one_sub](../../../../mathematics/NumberTheory/XiToeplitz/Variant1117c01abe7d07320084421ea832ab064dd59b86744a14b121e87c7ca988a0a5.lean/declarations/xi-one-sub--4404196969e04a06b16df0bc.md) | 42 | `result-track:4404196969e04a06b16df0bcfc634b43895b4032e1fe65509f9a282eff6e4d86` |
| 6 | `theorem` | [xi_centered_even](../../../../mathematics/NumberTheory/XiToeplitz/Variant1117c01abe7d07320084421ea832ab064dd59b86744a14b121e87c7ca988a0a5.lean/declarations/xi-centered-even--a95d67bca8a93122133128b9.md) | 47 | `result-track:a95d67bca8a93122133128b9a9237e40d87ca984ebd748ab0cdd16a3c91f6261` |
| 7 | `theorem` | [xi_eq_completed](../../../../mathematics/NumberTheory/XiToeplitz/Variant1117c01abe7d07320084421ea832ab064dd59b86744a14b121e87c7ca988a0a5.lean/declarations/xi-eq-completed--477e76a78225e5449e3c71f4.md) | 54 | `result-track:477e76a78225e5449e3c71f47f1299437083743ef5abf749ee1cd0021b880514` |
| 8 | `theorem` | [completed_recover](../../../../mathematics/NumberTheory/XiToeplitz/Variant1117c01abe7d07320084421ea832ab064dd59b86744a14b121e87c7ca988a0a5.lean/declarations/completed-recover--bce6d615d298399126603834.md) | 62 | `result-track:bce6d615d29839912660383423be5aeb8f3ead69b0c3fb2f368c11ebae159869` |
| 9 | `theorem` | [zeta_recover](../../../../mathematics/NumberTheory/XiToeplitz/Variant1117c01abe7d07320084421ea832ab064dd59b86744a14b121e87c7ca988a0a5.lean/declarations/zeta-recover--d35557cae70079b0b618e6ca.md) | 69 | `result-track:d35557cae70079b0b618e6ca22600159d6428ca85922f9cea679e9d88e82c910` |
| 10 | `theorem` | [actual_trivial_zero](../../../../mathematics/NumberTheory/XiToeplitz/Variant1117c01abe7d07320084421ea832ab064dd59b86744a14b121e87c7ca988a0a5.lean/declarations/actual-trivial-zero--930f14f29f73b963115902cf.md) | 74 | `result-track:930f14f29f73b963115902cf3e036d4665c486daa364ffcff6cd60ae3accc88b` |
| 11 | `def` | [coefficient](../../../../mathematics/NumberTheory/XiToeplitz/Variant1117c01abe7d07320084421ea832ab064dd59b86744a14b121e87c7ca988a0a5.lean/declarations/coefficient--6ceaa4358ee7bc0e32bcfedc.md) | 78 | `declaration-track:6ceaa4358ee7bc0e32bcfedc28e8cb097b45e7bf18638e9a298db6bbb1ab5bad` |
| 12 | `theorem` | [coefficient_zero](../../../../mathematics/NumberTheory/XiToeplitz/Variant1117c01abe7d07320084421ea832ab064dd59b86744a14b121e87c7ca988a0a5.lean/declarations/coefficient-zero--3e09cda409d03716b9176cb1.md) | 82 | `result-track:3e09cda409d03716b9176cb12975db19331e9414ac3494a4cc874d15c862e945` |
| 13 | `def` | [centeredSeries](../../../../mathematics/NumberTheory/XiToeplitz/Variant1117c01abe7d07320084421ea832ab064dd59b86744a14b121e87c7ca988a0a5.lean/declarations/centeredseries--a5adaf748f553e268d31408a.md) | 86 | `declaration-track:a5adaf748f553e268d31408ab25f6dd41aa9dafccc857cdcd30dc5ac95561437` |
| 14 | `def` | [TaylorDescent](../../../../mathematics/NumberTheory/XiToeplitz/Variant1117c01abe7d07320084421ea832ab064dd59b86744a14b121e87c7ca988a0a5.lean/declarations/taylordescent--1d78fe7a7440c8490a627557.md) | 89 | `declaration-track:1d78fe7a7440c8490a627557fc6e026ed6a324c4ec964b3e9f4e80b756105fed` |
| 15 | `def` | [PrimeLogDerivativeIdentity](../../../../mathematics/NumberTheory/XiToeplitz/Variant1117c01abe7d07320084421ea832ab064dd59b86744a14b121e87c7ca988a0a5.lean/declarations/primelogderivativeidentity--a549a59c7b9e9cc7077456e0.md) | 96 | `declaration-track:a549a59c7b9e9cc7077456e0bcb1b70279aeaeb2e94aef5b5fbc2784fe414bb3` |
| 16 | `def` | [TrivialZeroCorrectionSeries](../../../../mathematics/NumberTheory/XiToeplitz/Variant1117c01abe7d07320084421ea832ab064dd59b86744a14b121e87c7ca988a0a5.lean/declarations/trivialzerocorrectionseries--23c975dbaa2759dcd54aab9e.md) | 105 | `declaration-track:23c975dbaa2759dcd54aab9e37fd7d34b8a820f18c345f73ed6d753a301587bb` |
| 17 | `def` | [XiToeplitzPositivity](../../../../mathematics/NumberTheory/XiToeplitz/Variant1117c01abe7d07320084421ea832ab064dd59b86744a14b121e87c7ca988a0a5.lean/declarations/xitoeplitzpositivity--92853b1a26b42c13c8bc8694.md) | 111 | `declaration-track:92853b1a26b42c13c8bc8694d12a956248e00db2ea07933673bdf4de0d8666fc` |
| 18 | `def` | [XiPFCriterion](../../../../mathematics/NumberTheory/XiToeplitz/Variant1117c01abe7d07320084421ea832ab064dd59b86744a14b121e87c7ca988a0a5.lean/declarations/xipfcriterion--a42a77be8cda58e2b1a08e45.md) | 114 | `declaration-track:a42a77be8cda58e2b1a08e45c612c99ccd28fa85954e021961dc4315b1b98c60` |
| 19 | `def` | [stage](../../../../mathematics/NumberTheory/XiToeplitz/Variant1117c01abe7d07320084421ea832ab064dd59b86744a14b121e87c7ca988a0a5.lean/declarations/stage--d43d69e242ddaf1908f33455.md) | 117 | `declaration-track:d43d69e242ddaf1908f334559ffb5bc2cfdddb77f426e6196160c004dd6c68c2` |
| 20 | `def` | [stagePlane](../../../../mathematics/NumberTheory/XiToeplitz/Variant1117c01abe7d07320084421ea832ab064dd59b86744a14b121e87c7ca988a0a5.lean/declarations/stageplane--0b47b1c0e7ea6454af211df5.md) | 120 | `declaration-track:0b47b1c0e7ea6454af211df5d9cc664d217a5d4fd12c87942edaa06bc3fb8dbe` |
| 21 | `def` | [XiGrassmannianPositivity](../../../../mathematics/NumberTheory/XiToeplitz/Variant1117c01abe7d07320084421ea832ab064dd59b86744a14b121e87c7ca988a0a5.lean/declarations/xigrassmannianpositivity--7506c84b2ce30ed9be1332c0.md) | 123 | `declaration-track:7506c84b2ce30ed9be1332c00c2ef13d55db1e3443b3d5b0ab1dedaf6a098afe` |
| 22 | `theorem` | [xiToeplitz_iff_finite_stages](../../../../mathematics/NumberTheory/XiToeplitz/Variant1117c01abe7d07320084421ea832ab064dd59b86744a14b121e87c7ca988a0a5.lean/declarations/xitoeplitz-iff-finite-stages--cddada0f51d6a23ef73aa013.md) | 127 | `result-track:cddada0f51d6a23ef73aa0137e82a2a69c1b73799c09d18208a5dc0a5c6ef66d` |
| 23 | `theorem` | [stage_restrict](../../../../mathematics/NumberTheory/XiToeplitz/Variant1117c01abe7d07320084421ea832ab064dd59b86744a14b121e87c7ca988a0a5.lean/declarations/stage-restrict--75bea70f07977d54ea6735d3.md) | 132 | `result-track:75bea70f07977d54ea6735d3094d655cfbf241acbfb8e713a0e6fe73b62fd54f` |
| 24 | `theorem` | [recover_stage](../../../../mathematics/NumberTheory/XiToeplitz/Variant1117c01abe7d07320084421ea832ab064dd59b86744a14b121e87c7ca988a0a5.lean/declarations/recover-stage--bbc4742ed6bf8af9d8708148.md) | 136 | `result-track:bbc4742ed6bf8af9d8708148a48a86f8322523b2324ed073b41592432fc99612` |
| 25 | `theorem` | [stage_two_minor_bridge](../../../../mathematics/NumberTheory/XiToeplitz/Variant1117c01abe7d07320084421ea832ab064dd59b86744a14b121e87c7ca988a0a5.lean/declarations/stage-two-minor-bridge--71b28484dec3ef851a06ee22.md) | 140 | `result-track:71b28484dec3ef851a06ee227ce0fe8b58096d51e6565abf39ddeaeedf225232` |
| 26 | `theorem` | [phase_normalization_iff](../../../../mathematics/NumberTheory/XiToeplitz/Variant1117c01abe7d07320084421ea832ab064dd59b86744a14b121e87c7ca988a0a5.lean/declarations/phase-normalization-iff--15699e647ff4ad4f6260f5f7.md) | 145 | `result-track:15699e647ff4ad4f6260f5f745bb8932471b482094003bf3ba334fcda9a2ca03` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
