# Verification target: GRWTSK.Analysis.Real.Varianteab1a01f120b7bc14c7a90081d5a2be3693b476bed36f7ec33eefa0b27362f95

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7f2d4eaa43bf3bcb91e9b8b4c05ccaf7f4a1fe48",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Real/Varianteab1a01f120b7bc14c7a90081d5a2be3693b476bed36f7ec33eefa0b27362f95.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/RealAnalysis/Varianteab1a01f120b7bc14c7a90081d5a2be3693b476bed36f7ec33eefa0b27362f95.lean/index.md) · [Full source](../../../../mathematics/Analysis/RealAnalysis/Varianteab1a01f120b7bc14c7a90081d5a2be3693b476bed36f7ec33eefa0b27362f95.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7f2d4eaa43bf3bcb91e9b8b4c05ccaf7f4a1fe48`.

Source path: `GRWTSK/Analysis/Real/Varianteab1a01f120b7bc14c7a90081d5a2be3693b476bed36f7ec33eefa0b27362f95.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/real/Varianteab1a01f120b7bc14c7a90081d5a2be3693b476bed36f7ec33eefa0b27362f95.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Normed.Module.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Basis.VectorSpace` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [Real.punctured_nhds_module_neBot](../../../../mathematics/Analysis/RealAnalysis/Varianteab1a01f120b7bc14c7a90081d5a2be3693b476bed36f7ec33eefa0b27362f95.lean/declarations/real-punctured-nhds-module-nebot--d097448cc8e478f50b28af2c.md) | 29 | `declaration-track:d097448cc8e478f50b28af2c85debd91736f63dfc53c33b3933bdf14d2c6b4d2` |
| 2 | `theorem` | [inv_norm_smul_mem_unitClosedBall](../../../../mathematics/Analysis/RealAnalysis/Varianteab1a01f120b7bc14c7a90081d5a2be3693b476bed36f7ec33eefa0b27362f95.lean/declarations/inv-norm-smul-mem-unitclosedball--b4325fbcafc271d03f4232d5.md) | 37 | `result-track:b4325fbcafc271d03f4232d597d0bfa8d5db78e21f760374b8d581fe3cbd56fd` |
| 3 | `theorem` | [norm_smul_of_nonneg](../../../../mathematics/Analysis/RealAnalysis/Varianteab1a01f120b7bc14c7a90081d5a2be3693b476bed36f7ec33eefa0b27362f95.lean/declarations/norm-smul-of-nonneg--da9e5d05cc9e3d815c1d0aee.md) | 45 | `result-track:da9e5d05cc9e3d815c1d0aee0a65a73f91a75b191b9e76eb17ab50a8815e5463` |
| 4 | `theorem` | [dist_smul_add_one_sub_smul_le](../../../../mathematics/Analysis/RealAnalysis/Varianteab1a01f120b7bc14c7a90081d5a2be3693b476bed36f7ec33eefa0b27362f95.lean/declarations/dist-smul-add-one-sub-smul-le--c4a51c82d1e23cff3e95d4b4.md) | 48 | `result-track:c4a51c82d1e23cff3e95d4b4c52992326358195abcc663d364a2d74a64f4fbed` |
| 5 | `theorem` | [closure_ball](../../../../mathematics/Analysis/RealAnalysis/Varianteab1a01f120b7bc14c7a90081d5a2be3693b476bed36f7ec33eefa0b27362f95.lean/declarations/closure-ball--2295ed39f1fd8f974d99eee6.md) | 59 | `result-track:2295ed39f1fd8f974d99eee6bb20ef6e3fbff5bcf6c9264c26a69a992fe2b85a` |
| 6 | `theorem` | [frontier_ball](../../../../mathematics/Analysis/RealAnalysis/Varianteab1a01f120b7bc14c7a90081d5a2be3693b476bed36f7ec33eefa0b27362f95.lean/declarations/frontier-ball--57d7bf5922ef285d2273f36f.md) | 73 | `result-track:57d7bf5922ef285d2273f36fb84149a43d5fcffeeea38a22400fa287b51c9cb6` |
| 7 | `theorem` | [interior_closedBall](../../../../mathematics/Analysis/RealAnalysis/Varianteab1a01f120b7bc14c7a90081d5a2be3693b476bed36f7ec33eefa0b27362f95.lean/declarations/interior-closedball--b5206292f2635bc8b53acc72.md) | 77 | `result-track:b5206292f2635bc8b53acc7252cadd87c304becc59b7ac5dfd24dc0f4ca8e481` |
| 8 | `theorem` | [frontier_closedBall](../../../../mathematics/Analysis/RealAnalysis/Varianteab1a01f120b7bc14c7a90081d5a2be3693b476bed36f7ec33eefa0b27362f95.lean/declarations/frontier-closedball--2b909d0a1d5cc11c7c3f49b1.md) | 96 | `result-track:2b909d0a1d5cc11c7c3f49b14f0e2fb456b51682fb1d9e14030ea3c40c80cdb6` |
| 9 | `theorem` | [interior_sphere](../../../../mathematics/Analysis/RealAnalysis/Varianteab1a01f120b7bc14c7a90081d5a2be3693b476bed36f7ec33eefa0b27362f95.lean/declarations/interior-sphere--c7f91bef1799ee8384cc1efa.md) | 100 | `result-track:c7f91bef1799ee8384cc1efa397249529d71ed92a9c67c730f2a0a5366149775` |
| 10 | `theorem` | [frontier_sphere](../../../../mathematics/Analysis/RealAnalysis/Varianteab1a01f120b7bc14c7a90081d5a2be3693b476bed36f7ec33eefa0b27362f95.lean/declarations/frontier-sphere--1f1d5f5e37e114b537ac23f3.md) | 103 | `result-track:1f1d5f5e37e114b537ac23f3d4999dfd157fd6f0db20a6c86569f1e4d2735d2a` |
| 11 | `theorem` | [exists_norm_eq](../../../../mathematics/Analysis/RealAnalysis/Varianteab1a01f120b7bc14c7a90081d5a2be3693b476bed36f7ec33eefa0b27362f95.lean/declarations/exists-norm-eq--2a805844c8ee543b11376753.md) | 116 | `result-track:2a805844c8ee543b113767530ba8374f043730877e093214b08c264133cf9c8a` |
| 12 | `theorem` | [range_norm](../../../../mathematics/Analysis/RealAnalysis/Varianteab1a01f120b7bc14c7a90081d5a2be3693b476bed36f7ec33eefa0b27362f95.lean/declarations/range-norm--b10498cc0a57881935a36a34.md) | 123 | `result-track:b10498cc0a57881935a36a34c079676a34b11453eab6f06d371f8fda161d2454` |
| 13 | `theorem` | [nnnorm_surjective](../../../../mathematics/Analysis/RealAnalysis/Varianteab1a01f120b7bc14c7a90081d5a2be3693b476bed36f7ec33eefa0b27362f95.lean/declarations/nnnorm-surjective--024b8e3f773802167b103599.md) | 126 | `result-track:024b8e3f773802167b1035998359e74f12acbd10bc62ff9d41ab216b49c321ab` |
| 14 | `theorem` | [range_nnnorm](../../../../mathematics/Analysis/RealAnalysis/Varianteab1a01f120b7bc14c7a90081d5a2be3693b476bed36f7ec33eefa0b27362f95.lean/declarations/range-nnnorm--954b5925b3522359b64324aa.md) | 130 | `result-track:954b5925b3522359b64324aa44a57d7a12a95fe621c3051b62fea8842957ad77` |
| 15 | `theorem` | [interior_closedBall'](../../../../mathematics/Analysis/RealAnalysis/Varianteab1a01f120b7bc14c7a90081d5a2be3693b476bed36f7ec33eefa0b27362f95.lean/declarations/interior-closedball--15c2b2f52bff350daf259529.md) | 135 | `result-track:15c2b2f52bff350daf2595293c80dc756c45ae9d8bd3df2f884a00e77002394d` |
| 16 | `theorem` | [frontier_closedBall'](../../../../mathematics/Analysis/RealAnalysis/Varianteab1a01f120b7bc14c7a90081d5a2be3693b476bed36f7ec33eefa0b27362f95.lean/declarations/frontier-closedball--7f41814184fdb2fe1aef3ef0.md) | 140 | `result-track:7f41814184fdb2fe1aef3ef052ae95e0e81dc56bb4d071aae22e06d6df041aef` |
| 17 | `theorem` | [interior_sphere'](../../../../mathematics/Analysis/RealAnalysis/Varianteab1a01f120b7bc14c7a90081d5a2be3693b476bed36f7ec33eefa0b27362f95.lean/declarations/interior-sphere--1f828dfb510d1d94c4662a8f.md) | 144 | `result-track:1f828dfb510d1d94c4662a8fc5318e2ee7ad07d09f6599420ba5ac6cebf8eb44` |
| 18 | `theorem` | [frontier_sphere'](../../../../mathematics/Analysis/RealAnalysis/Varianteab1a01f120b7bc14c7a90081d5a2be3693b476bed36f7ec33eefa0b27362f95.lean/declarations/frontier-sphere--fe94395a65dad27e0a691f0e.md) | 148 | `result-track:fe94395a65dad27e0a691f0eaea779663745f05f2c67b3079660baefd509310d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
