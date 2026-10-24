# Verification target: GRWTSK.Analysis.MeasureTheory.VolumeOfBalls.Variant4848684318c64a2bbc79cf531f16eaa9e4f379c9550bda61a5eaf76c414c3a7a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b4cd6cee17c8bd8652ef6121aeb029670ee9627a",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/VolumeOfBalls/Variant4848684318c64a2bbc79cf531f16eaa9e4f379c9550bda61a5eaf76c414c3a7a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/VolumeOfBalls/Variant4848684318c64a2bbc79cf531f16eaa9e4f379c9550bda61a5eaf76c414c3a7a.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/VolumeOfBalls/Variant4848684318c64a2bbc79cf531f16eaa9e4f379c9550bda61a5eaf76c414c3a7a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b4cd6cee17c8bd8652ef6121aeb029670ee9627a`.

Source path: `GRWTSK/Analysis/MeasureTheory/VolumeOfBalls/Variant4848684318c64a2bbc79cf531f16eaa9e4f379c9550bda61a5eaf76c414c3a7a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/VolumeOfBalls/Variant4848684318c64a2bbc79cf531f16eaa9e4f379c9550bda61a5eaf76c414c3a7a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Complex.FiniteDimensional` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Constructions.HaarToSphere` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Gamma` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Pi` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Gaussian.GaussianIntegral` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [MeasureTheory.measure_unitBall_eq_integral_div_gamma](../../../../../mathematics/Analysis/MeasureTheory/VolumeOfBalls/Variant4848684318c64a2bbc79cf531f16eaa9e4f379c9550bda61a5eaf76c414c3a7a.lean/declarations/measuretheory-measure-unitball-eq-integral-div-gamma--6b655a8f7f8be5dd75c3a114.md) | 54 | `result-track:6b655a8f7f8be5dd75c3a1147685458432ddba436ec191a61865fb602c094d96` |
| 2 | `theorem` | [MeasureTheory.measure_lt_one_eq_integral_div_gamma](../../../../../mathematics/Analysis/MeasureTheory/VolumeOfBalls/Variant4848684318c64a2bbc79cf531f16eaa9e4f379c9550bda61a5eaf76c414c3a7a.lean/declarations/measuretheory-measure-lt-one-eq-integral-div-gamma--897c9afc5e600274394a0afd.md) | 83 | `result-track:897c9afc5e600274394a0afd6cf3bc75233dafd7c9b3e1307b23e460a7e1f564` |
| 3 | `theorem` | [MeasureTheory.measure_le_eq_lt](../../../../../mathematics/Analysis/MeasureTheory/VolumeOfBalls/Variant4848684318c64a2bbc79cf531f16eaa9e4f379c9550bda61a5eaf76c414c3a7a.lean/declarations/measuretheory-measure-le-eq-lt--cc9caf4d5d87ee2f4592f007.md) | 127 | `result-track:cc9caf4d5d87ee2f4592f007bf175a7ea9e2a1086394ed077b72562394e5ec73` |
| 4 | `theorem` | [MeasureTheory.volume_sum_rpow_lt_one](../../../../../mathematics/Analysis/MeasureTheory/VolumeOfBalls/Variant4848684318c64a2bbc79cf531f16eaa9e4f379c9550bda61a5eaf76c414c3a7a.lean/declarations/measuretheory-volume-sum-rpow-lt-one--673039d991e43e8616c8ec7d.md) | 176 | `result-track:673039d991e43e8616c8ec7d40c6d118ca2132b4ab237e388031407b2aa03445` |
| 5 | `theorem` | [MeasureTheory.volume_sum_rpow_lt](../../../../../mathematics/Analysis/MeasureTheory/VolumeOfBalls/Variant4848684318c64a2bbc79cf531f16eaa9e4f379c9550bda61a5eaf76c414c3a7a.lean/declarations/measuretheory-volume-sum-rpow-lt--fcaaa8351ba47df26b6e7354.md) | 208 | `result-track:fcaaa8351ba47df26b6e7354ff29c0d28aa6e527ced681ad6876d731a83ba7b3` |
| 6 | `theorem` | [MeasureTheory.volume_sum_rpow_le](../../../../../mathematics/Analysis/MeasureTheory/VolumeOfBalls/Variant4848684318c64a2bbc79cf531f16eaa9e4f379c9550bda61a5eaf76c414c3a7a.lean/declarations/measuretheory-volume-sum-rpow-le--3fbf72f5815476a0f4b40fc4.md) | 228 | `result-track:3fbf72f5815476a0f4b40fc49269c449cc3781aa57ed5057d2ecdb9c482b3667` |
| 7 | `theorem` | [Complex.volume_sum_rpow_lt_one](../../../../../mathematics/Analysis/MeasureTheory/VolumeOfBalls/Variant4848684318c64a2bbc79cf531f16eaa9e4f379c9550bda61a5eaf76c414c3a7a.lean/declarations/complex-volume-sum-rpow-lt-one--55f5475b587502b1577f3841.md) | 248 | `result-track:55f5475b587502b1577f38414f28bba386d504ae36e7ededb9f9e8a54ba00b37` |
| 8 | `theorem` | [Complex.volume_sum_rpow_lt](../../../../../mathematics/Analysis/MeasureTheory/VolumeOfBalls/Variant4848684318c64a2bbc79cf531f16eaa9e4f379c9550bda61a5eaf76c414c3a7a.lean/declarations/complex-volume-sum-rpow-lt--59130e991e7430c8ae8f85f0.md) | 281 | `result-track:59130e991e7430c8ae8f85f0885614c3e6c3852f2835135a531a3ff004c6eef7` |
| 9 | `theorem` | [Complex.volume_sum_rpow_le](../../../../../mathematics/Analysis/MeasureTheory/VolumeOfBalls/Variant4848684318c64a2bbc79cf531f16eaa9e4f379c9550bda61a5eaf76c414c3a7a.lean/declarations/complex-volume-sum-rpow-le--1f1c0f7a9474ad6b08a1859f.md) | 303 | `result-track:1f1c0f7a9474ad6b08a1859f13a7649f44324485561b9f517c1998eba74e6991` |
| 10 | `theorem` | [volume_ball](../../../../../mathematics/Analysis/MeasureTheory/VolumeOfBalls/Variant4848684318c64a2bbc79cf531f16eaa9e4f379c9550bda61a5eaf76c414c3a7a.lean/declarations/volume-ball--43bf75068db854f0ecb1b428.md) | 331 | `result-track:43bf75068db854f0ecb1b428d4a470ad25b457ab7f11b7e421aa2413f76adf98` |
| 11 | `theorem` | [volume_closedBall](../../../../../mathematics/Analysis/MeasureTheory/VolumeOfBalls/Variant4848684318c64a2bbc79cf531f16eaa9e4f379c9550bda61a5eaf76c414c3a7a.lean/declarations/volume-closedball--fb21c2db51cff4ad063d6d1c.md) | 348 | `result-track:fb21c2db51cff4ad063d6d1ce8505b508ab5a1dbabcb3f67f3a1819414a7b67f` |
| 12 | `theorem` | [volume_ball](../../../../../mathematics/Analysis/MeasureTheory/VolumeOfBalls/Variant4848684318c64a2bbc79cf531f16eaa9e4f379c9550bda61a5eaf76c414c3a7a.lean/declarations/volume-ball--b708b43f44a26c4e9b1fd5a7.md) | 367 | `result-track:b708b43f44a26c4e9b1fd5a72afa3f14010b5a54bc4d96922eda24993bad334d` |
| 13 | `theorem` | [volume_closedBall](../../../../../mathematics/Analysis/MeasureTheory/VolumeOfBalls/Variant4848684318c64a2bbc79cf531f16eaa9e4f379c9550bda61a5eaf76c414c3a7a.lean/declarations/volume-closedball--403104f502863a117260b2f8.md) | 378 | `result-track:403104f502863a117260b2f8c1f0d9703d650335414f600b09907feec6d8b2c8` |
| 14 | `lemma` | [volume_ball_of_dim_even](../../../../../mathematics/Analysis/MeasureTheory/VolumeOfBalls/Variant4848684318c64a2bbc79cf531f16eaa9e4f379c9550bda61a5eaf76c414c3a7a.lean/declarations/volume-ball-of-dim-even--9f97c97ff9c181aae78ba007.md) | 383 | `result-track:9f97c97ff9c181aae78ba007d1bdabf5df973b442f64a75ca0cf540eb1184fdc` |
| 15 | `lemma` | [volume_closedBall_of_dim_even](../../../../../mathematics/Analysis/MeasureTheory/VolumeOfBalls/Variant4848684318c64a2bbc79cf531f16eaa9e4f379c9550bda61a5eaf76c414c3a7a.lean/declarations/volume-closedball-of-dim-even--f61d9d20f33adde32dea450a.md) | 389 | `result-track:f61d9d20f33adde32dea450af4045ffcb89f17974b29d6c6acb7796e61e5e8fb` |
| 16 | `lemma` | [volume_ball_of_dim_odd](../../../../../mathematics/Analysis/MeasureTheory/VolumeOfBalls/Variant4848684318c64a2bbc79cf531f16eaa9e4f379c9550bda61a5eaf76c414c3a7a.lean/declarations/volume-ball-of-dim-odd--60003eee45cf2ac22a65dbea.md) | 395 | `result-track:60003eee45cf2ac22a65dbea0e18c4f23be15a47a2d762b9b9a7d9691c420dd4` |
| 17 | `lemma` | [volume_closedBall_of_dim_odd](../../../../../mathematics/Analysis/MeasureTheory/VolumeOfBalls/Variant4848684318c64a2bbc79cf531f16eaa9e4f379c9550bda61a5eaf76c414c3a7a.lean/declarations/volume-closedball-of-dim-odd--946d5cddcbde4088cfd628d9.md) | 408 | `result-track:946d5cddcbde4088cfd628d927eb5e2a217534ba2cf44ce9125c9ac889c56683` |
| 18 | `lemma` | [volume_ball_fin_two](../../../../../mathematics/Analysis/MeasureTheory/VolumeOfBalls/Variant4848684318c64a2bbc79cf531f16eaa9e4f379c9550bda61a5eaf76c414c3a7a.lean/declarations/volume-ball-fin-two--4eef15559e8988325dfe0745.md) | 421 | `result-track:4eef15559e8988325dfe07459b24763512abbd561412c321dc095e2b9a1a3d8f` |
| 19 | `lemma` | [volume_closedBall_fin_two](../../../../../mathematics/Analysis/MeasureTheory/VolumeOfBalls/Variant4848684318c64a2bbc79cf531f16eaa9e4f379c9550bda61a5eaf76c414c3a7a.lean/declarations/volume-closedball-fin-two--0792bf382bd1f56d2ee538eb.md) | 426 | `result-track:0792bf382bd1f56d2ee538eb5c8404e3a335afd378fa6d33ee4df2fa6a9c28f6` |
| 20 | `lemma` | [volume_ball_fin_three](../../../../../mathematics/Analysis/MeasureTheory/VolumeOfBalls/Variant4848684318c64a2bbc79cf531f16eaa9e4f379c9550bda61a5eaf76c414c3a7a.lean/declarations/volume-ball-fin-three--c35a76087aad514b4e83722a.md) | 431 | `result-track:c35a76087aad514b4e83722a925cb08d93a725d4a53f4fbd7bb9e2996da8b6f5` |
| 21 | `lemma` | [volume_closedBall_fin_three](../../../../../mathematics/Analysis/MeasureTheory/VolumeOfBalls/Variant4848684318c64a2bbc79cf531f16eaa9e4f379c9550bda61a5eaf76c414c3a7a.lean/declarations/volume-closedball-fin-three--7ce0169e703f9382169c74eb.md) | 436 | `result-track:7ce0169e703f9382169c74eb82a0f0be1f9fedfc541574a4ed1c89c778899ed7` |
| 22 | `theorem` | [Complex.volume_ball](../../../../../mathematics/Analysis/MeasureTheory/VolumeOfBalls/Variant4848684318c64a2bbc79cf531f16eaa9e4f379c9550bda61a5eaf76c414c3a7a.lean/declarations/complex-volume-ball--2b39ac58c7424390cbbedfbd.md) | 447 | `result-track:2b39ac58c7424390cbbedfbd47b14757cb25c3db92d33bb6030d3e3156b0172d` |
| 23 | `theorem` | [Complex.volume_closedBall](../../../../../mathematics/Analysis/MeasureTheory/VolumeOfBalls/Variant4848684318c64a2bbc79cf531f16eaa9e4f379c9550bda61a5eaf76c414c3a7a.lean/declarations/complex-volume-closedball--76b4106fb57d418005361d47.md) | 453 | `result-track:76b4106fb57d418005361d475064a26671b03d383198f19d8204f1e09cfe1c08` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
