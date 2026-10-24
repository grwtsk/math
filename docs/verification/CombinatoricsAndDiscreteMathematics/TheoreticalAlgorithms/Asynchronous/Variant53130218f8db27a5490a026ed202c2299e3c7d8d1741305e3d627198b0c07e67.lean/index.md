# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Asynchronous.Variant53130218f8db27a5490a026ed202c2299e3c7d8d1741305e3d627198b0c07e67

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "88c77aa147a9ee827081c807a06d77050d116eb6",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Asynchronous/Variant53130218f8db27a5490a026ed202c2299e3c7d8d1741305e3d627198b0c07e67.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Asynchronous/Variant53130218f8db27a5490a026ed202c2299e3c7d8d1741305e3d627198b0c07e67.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Asynchronous/Variant53130218f8db27a5490a026ed202c2299e3c7d8d1741305e3d627198b0c07e67.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `88c77aa147a9ee827081c807a06d77050d116eb6`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Asynchronous/Variant53130218f8db27a5490a026ed202c2299e3c7d8d1741305e3d627198b0c07e67.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Asynchronous/Variant53130218f8db27a5490a026ed202c2299e3c7d8d1741305e3d627198b0c07e67.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Boolean.Cube.BooleanNetwork` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [BooleanNetwork.AsynchronousNetwork](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Asynchronous/Variant53130218f8db27a5490a026ed202c2299e3c7d8d1741305e3d627198b0c07e67.lean/declarations/booleannetwork-asynchronousnetwork--04c59c86ee4d0ad412f1a147.md) | 14 | `declaration-track:04c59c86ee4d0ad412f1a1479b6f19f0e9a5e1ed2f2d12a2855c9b2689df33ef` |
| 2 | `def` | [BooleanNetwork.AsynchronousNetwork.updateAt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Asynchronous/Variant53130218f8db27a5490a026ed202c2299e3c7d8d1741305e3d627198b0c07e67.lean/declarations/booleannetwork-asynchronousnetwork-updateat--99eaa7021dcb64c93a48b3d8.md) | 18 | `declaration-track:99eaa7021dcb64c93a48b3d81c4dc1198a3be03115d56ac5bd200785b17f171f` |
| 3 | `def` | [BooleanNetwork.AsynchronousNetwork.Step](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Asynchronous/Variant53130218f8db27a5490a026ed202c2299e3c7d8d1741305e3d627198b0c07e67.lean/declarations/booleannetwork-asynchronousnetwork-step--3c8437229ce68f67139277aa.md) | 30 | `declaration-track:3c8437229ce68f67139277aa21a4b219839a4f4d32d8ac159bfa972df4de7c95` |
| 4 | `theorem` | [BooleanNetwork.AsynchronousNetwork.updateAt_same](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Asynchronous/Variant53130218f8db27a5490a026ed202c2299e3c7d8d1741305e3d627198b0c07e67.lean/declarations/booleannetwork-asynchronousnetwork-updateat-same--cd06128843ab40c778d03458.md) | 36 | `result-track:cd06128843ab40c778d034587c8d5ccdeca6b898f9326754a9adbc9ddeb55dae` |
| 5 | `theorem` | [BooleanNetwork.AsynchronousNetwork.updateAt_other](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Asynchronous/Variant53130218f8db27a5490a026ed202c2299e3c7d8d1741305e3d627198b0c07e67.lean/declarations/booleannetwork-asynchronousnetwork-updateat-other--eff855a04370ab36943d7594.md) | 43 | `result-track:eff855a04370ab36943d7594b7d782419aebbb4a58ad5129f6513c5475497fab` |
| 6 | `def` | [BooleanNetwork.AsynchronousNetwork.run](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Asynchronous/Variant53130218f8db27a5490a026ed202c2299e3c7d8d1741305e3d627198b0c07e67.lean/declarations/booleannetwork-asynchronousnetwork-run--c363079fa67415fed4344470.md) | 52 | `declaration-track:c363079fa67415fed4344470887f9c83e2030dd71f1c75a14d69c0feaf98a541` |
| 7 | `def` | [BooleanNetwork.AsynchronousNetwork.trajectory](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Asynchronous/Variant53130218f8db27a5490a026ed202c2299e3c7d8d1741305e3d627198b0c07e67.lean/declarations/booleannetwork-asynchronousnetwork-trajectory--a11126b95bac5c518df1f8f4.md) | 60 | `declaration-track:a11126b95bac5c518df1f8f449325474e3cea5bb738fce4984a9084d5434f87b` |
| 8 | `def` | [BooleanNetwork.AsynchronousNetwork.FollowsSchedule](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Asynchronous/Variant53130218f8db27a5490a026ed202c2299e3c7d8d1741305e3d627198b0c07e67.lean/declarations/booleannetwork-asynchronousnetwork-followsschedule--027e3e35e890ba683a6a78a8.md) | 71 | `declaration-track:027e3e35e890ba683a6a78a8c066fe74277983effb7c4def857d427c9041f048` |
| 9 | `def` | [BooleanNetwork.AsynchronousNetwork.Reachable](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Asynchronous/Variant53130218f8db27a5490a026ed202c2299e3c7d8d1741305e3d627198b0c07e67.lean/declarations/booleannetwork-asynchronousnetwork-reachable--60a109982f0a17bd15cd1320.md) | 79 | `declaration-track:60a109982f0a17bd15cd13205ee1f5f35187e3a467a9a2fb07323b29c45acb7d` |
| 10 | `def` | [BooleanNetwork.AsynchronousNetwork.StableCoordinate](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Asynchronous/Variant53130218f8db27a5490a026ed202c2299e3c7d8d1741305e3d627198b0c07e67.lean/declarations/booleannetwork-asynchronousnetwork-stablecoordinate--2df5c9aef2cb8bca268d9f95.md) | 87 | `declaration-track:2df5c9aef2cb8bca268d9f95fdf1b3a576bbbca2a6005d4b677a15c77dafd4bf` |
| 11 | `def` | [BooleanNetwork.AsynchronousNetwork.StableState](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Asynchronous/Variant53130218f8db27a5490a026ed202c2299e3c7d8d1741305e3d627198b0c07e67.lean/declarations/booleannetwork-asynchronousnetwork-stablestate--b8286f52683fb8ba5465f4db.md) | 95 | `declaration-track:b8286f52683fb8ba5465f4db14071024ca9221847224263c18cf9b0cee237333` |
| 12 | `def` | [BooleanNetwork.AsynchronousNetwork.FixedPoint](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Asynchronous/Variant53130218f8db27a5490a026ed202c2299e3c7d8d1741305e3d627198b0c07e67.lean/declarations/booleannetwork-asynchronousnetwork-fixedpoint--95525564a18e99328544871f.md) | 103 | `declaration-track:95525564a18e99328544871f39b1923466cb66fa32372de11ae98c7c2f2ac4e6` |
| 13 | `theorem` | [BooleanNetwork.AsynchronousNetwork.run_nil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Asynchronous/Variant53130218f8db27a5490a026ed202c2299e3c7d8d1741305e3d627198b0c07e67.lean/declarations/booleannetwork-asynchronousnetwork-run-nil--6f3ad62b940321ebf1db7d4a.md) | 109 | `result-track:6f3ad62b940321ebf1db7d4a0604e17939abbbd224621979821215f32f4eeb6a` |
| 14 | `theorem` | [BooleanNetwork.AsynchronousNetwork.run_cons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Asynchronous/Variant53130218f8db27a5490a026ed202c2299e3c7d8d1741305e3d627198b0c07e67.lean/declarations/booleannetwork-asynchronousnetwork-run-cons--e3fd622bd342186f973604d2.md) | 114 | `result-track:e3fd622bd342186f973604d220ba7f905cda3e71dd1139025b820b28b19d9efe` |
| 15 | `theorem` | [BooleanNetwork.AsynchronousNetwork.trajectory_nil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Asynchronous/Variant53130218f8db27a5490a026ed202c2299e3c7d8d1741305e3d627198b0c07e67.lean/declarations/booleannetwork-asynchronousnetwork-trajectory-nil--870eb6b2c9f574c3f2c54c79.md) | 122 | `result-track:870eb6b2c9f574c3f2c54c79d2bd953460d40ac8c0facd6a70357e29e48237b2` |
| 16 | `theorem` | [BooleanNetwork.AsynchronousNetwork.trajectory_cons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Asynchronous/Variant53130218f8db27a5490a026ed202c2299e3c7d8d1741305e3d627198b0c07e67.lean/declarations/booleannetwork-asynchronousnetwork-trajectory-cons--16443137f3301839391d1b41.md) | 127 | `result-track:16443137f3301839391d1b4103d729ef482ba44f358115e3cc8c3d0c1598fd33` |
| 17 | `theorem` | [BooleanNetwork.AsynchronousNetwork.run_append](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Asynchronous/Variant53130218f8db27a5490a026ed202c2299e3c7d8d1741305e3d627198b0c07e67.lean/declarations/booleannetwork-asynchronousnetwork-run-append--00c45a5543a1b4d9d69e45aa.md) | 135 | `result-track:00c45a5543a1b4d9d69e45aa640e097ed8697d73a3850bb69ff06b1757bf1b37` |
| 18 | `theorem` | [BooleanNetwork.AsynchronousNetwork.reachable_refl](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Asynchronous/Variant53130218f8db27a5490a026ed202c2299e3c7d8d1741305e3d627198b0c07e67.lean/declarations/booleannetwork-asynchronousnetwork-reachable-refl--e2436af39ecc6aec90f9dcf2.md) | 145 | `result-track:e2436af39ecc6aec90f9dcf2b8e8227e5f91a684cb50bc2cc3f00f58b538c271` |
| 19 | `theorem` | [BooleanNetwork.AsynchronousNetwork.reachable_step](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Asynchronous/Variant53130218f8db27a5490a026ed202c2299e3c7d8d1741305e3d627198b0c07e67.lean/declarations/booleannetwork-asynchronousnetwork-reachable-step--266c10066f5d5fdc9ce45e2a.md) | 151 | `result-track:266c10066f5d5fdc9ce45e2aa35198eed6cc635897216f668f957e237a01f0f0` |
| 20 | `theorem` | [BooleanNetwork.AsynchronousNetwork.reachable_trans](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Asynchronous/Variant53130218f8db27a5490a026ed202c2299e3c7d8d1741305e3d627198b0c07e67.lean/declarations/booleannetwork-asynchronousnetwork-reachable-trans--d3e61117be973930d0d8dc16.md) | 158 | `result-track:d3e61117be973930d0d8dc163547fb441a09abdd08f0dbbd91ab684729314533` |
| 21 | `theorem` | [BooleanNetwork.AsynchronousNetwork.updateAt_eq_self_of_stable](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Asynchronous/Variant53130218f8db27a5490a026ed202c2299e3c7d8d1741305e3d627198b0c07e67.lean/declarations/booleannetwork-asynchronousnetwork-updateat-eq-self-of-stable--432e4640debce53d77934eac.md) | 170 | `result-track:432e4640debce53d77934eacbb448b2484ddf797ce34ccfdec9b99d9e3534b5b` |
| 22 | `theorem` | [BooleanNetwork.AsynchronousNetwork.fixedPoint_of_stable](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Asynchronous/Variant53130218f8db27a5490a026ed202c2299e3c7d8d1741305e3d627198b0c07e67.lean/declarations/booleannetwork-asynchronousnetwork-fixedpoint-of-stable--085619df1e42bfac478e0dc9.md) | 183 | `result-track:085619df1e42bfac478e0dc931cee7c066143bfa965afcd99d12bbf3d2472b89` |
| 23 | `theorem` | [BooleanNetwork.AsynchronousNetwork.stable_of_fixedPoint](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Asynchronous/Variant53130218f8db27a5490a026ed202c2299e3c7d8d1741305e3d627198b0c07e67.lean/declarations/booleannetwork-asynchronousnetwork-stable-of-fixedpoint--660e7fee9d2a81b2d0fa1717.md) | 191 | `result-track:660e7fee9d2a81b2d0fa1717d68b4b5d9e6906a29494403946a1df27d6edc8bd` |
| 24 | `theorem` | [BooleanNetwork.AsynchronousNetwork.run_of_fixedPoint](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Asynchronous/Variant53130218f8db27a5490a026ed202c2299e3c7d8d1741305e3d627198b0c07e67.lean/declarations/booleannetwork-asynchronousnetwork-run-of-fixedpoint--7f962cf6fca3dd0d71101c0a.md) | 201 | `result-track:7f962cf6fca3dd0d71101c0af67fe9293b50257feaf013cbd019c7560d382cf5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
