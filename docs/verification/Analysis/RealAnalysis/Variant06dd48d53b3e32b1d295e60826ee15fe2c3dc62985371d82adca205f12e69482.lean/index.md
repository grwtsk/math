# Verification target: GRWTSK.Analysis.Real.Variant06dd48d53b3e32b1d295e60826ee15fe2c3dc62985371d82adca205f12e69482

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0155859216ff619103bf919e03925ae386850a91",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Real/Variant06dd48d53b3e32b1d295e60826ee15fe2c3dc62985371d82adca205f12e69482.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/RealAnalysis/Variant06dd48d53b3e32b1d295e60826ee15fe2c3dc62985371d82adca205f12e69482.lean/index.md) · [Full source](../../../../mathematics/Analysis/RealAnalysis/Variant06dd48d53b3e32b1d295e60826ee15fe2c3dc62985371d82adca205f12e69482.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0155859216ff619103bf919e03925ae386850a91`.

Source path: `GRWTSK/Analysis/Real/Variant06dd48d53b3e32b1d295e60826ee15fe2c3dc62985371d82adca205f12e69482.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/real/Variant06dd48d53b3e32b1d295e60826ee15fe2c3dc62985371d82adca205f12e69482.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Normed.Module.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Basis.VectorSpace` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [Real.punctured_nhds_module_neBot](../../../../mathematics/Analysis/RealAnalysis/Variant06dd48d53b3e32b1d295e60826ee15fe2c3dc62985371d82adca205f12e69482.lean/declarations/real-punctured-nhds-module-nebot--0802cd41ccfaf1234751d1fb.md) | 37 | `declaration-track:0802cd41ccfaf1234751d1fbfd4ca42e2d2160f09f16c99e5c27dea0fc50927f` |
| 2 | `theorem` | [inv_norm_smul_mem_unitClosedBall](../../../../mathematics/Analysis/RealAnalysis/Variant06dd48d53b3e32b1d295e60826ee15fe2c3dc62985371d82adca205f12e69482.lean/declarations/inv-norm-smul-mem-unitclosedball--966b733589fbfdc10a7bf902.md) | 45 | `result-track:966b733589fbfdc10a7bf902819e60d51181411dfe715457560012989dae8436` |
| 3 | `theorem` | [norm_smul_of_nonneg](../../../../mathematics/Analysis/RealAnalysis/Variant06dd48d53b3e32b1d295e60826ee15fe2c3dc62985371d82adca205f12e69482.lean/declarations/norm-smul-of-nonneg--e0f76e77981f0b52b67fd924.md) | 53 | `result-track:e0f76e77981f0b52b67fd924532acb1508770b70716b3371aba6878c53eec528` |
| 4 | `theorem` | [dist_smul_add_one_sub_smul_le](../../../../mathematics/Analysis/RealAnalysis/Variant06dd48d53b3e32b1d295e60826ee15fe2c3dc62985371d82adca205f12e69482.lean/declarations/dist-smul-add-one-sub-smul-le--325505630fd7422c5935d706.md) | 56 | `result-track:325505630fd7422c5935d7062e4903364eabf024ec694350191b54c0b561029a` |
| 5 | `theorem` | [closure_ball](../../../../mathematics/Analysis/RealAnalysis/Variant06dd48d53b3e32b1d295e60826ee15fe2c3dc62985371d82adca205f12e69482.lean/declarations/closure-ball--5f9ede07d1e85df9778630a4.md) | 67 | `result-track:5f9ede07d1e85df9778630a4b05aafdffc203a930ed41c40759713df5d4f6a11` |
| 6 | `theorem` | [frontier_ball](../../../../mathematics/Analysis/RealAnalysis/Variant06dd48d53b3e32b1d295e60826ee15fe2c3dc62985371d82adca205f12e69482.lean/declarations/frontier-ball--0e3a3847a9c45cf114cf614c.md) | 81 | `result-track:0e3a3847a9c45cf114cf614c5cfa030c124c10ecd1b5332022a1257eded0d158` |
| 7 | `theorem` | [interior_closedBall](../../../../mathematics/Analysis/RealAnalysis/Variant06dd48d53b3e32b1d295e60826ee15fe2c3dc62985371d82adca205f12e69482.lean/declarations/interior-closedball--5cafbbf701863120a05b366e.md) | 85 | `result-track:5cafbbf701863120a05b366ebdeb493ffbea8eeaf6ab0704ebd94189ac5f02d8` |
| 8 | `theorem` | [frontier_closedBall](../../../../mathematics/Analysis/RealAnalysis/Variant06dd48d53b3e32b1d295e60826ee15fe2c3dc62985371d82adca205f12e69482.lean/declarations/frontier-closedball--f869f1b62ea43b49552dd897.md) | 104 | `result-track:f869f1b62ea43b49552dd89768ee2bbdb14fbc8a583e92455d9330fed565f10d` |
| 9 | `theorem` | [interior_sphere](../../../../mathematics/Analysis/RealAnalysis/Variant06dd48d53b3e32b1d295e60826ee15fe2c3dc62985371d82adca205f12e69482.lean/declarations/interior-sphere--0ed42c0389f314f48a4cb0dd.md) | 108 | `result-track:0ed42c0389f314f48a4cb0dd0db1f4852d11d908d751688fecfb30c6c62f8d67` |
| 10 | `theorem` | [frontier_sphere](../../../../mathematics/Analysis/RealAnalysis/Variant06dd48d53b3e32b1d295e60826ee15fe2c3dc62985371d82adca205f12e69482.lean/declarations/frontier-sphere--0e856ec150fcc4634d3b2418.md) | 111 | `result-track:0e856ec150fcc4634d3b2418fb0c57798eeb9c8ba86fa6bac6985bd1bc3d6f80` |
| 11 | `theorem` | [exists_norm_eq](../../../../mathematics/Analysis/RealAnalysis/Variant06dd48d53b3e32b1d295e60826ee15fe2c3dc62985371d82adca205f12e69482.lean/declarations/exists-norm-eq--bc22a4311a79379c12acd5d9.md) | 124 | `result-track:bc22a4311a79379c12acd5d9ed7834dc214b5ea7ead4bd268787b78e55c38237` |
| 12 | `theorem` | [range_norm](../../../../mathematics/Analysis/RealAnalysis/Variant06dd48d53b3e32b1d295e60826ee15fe2c3dc62985371d82adca205f12e69482.lean/declarations/range-norm--701d9b0b1ff6f8935f79b083.md) | 131 | `result-track:701d9b0b1ff6f8935f79b08324f78982f8604aa504fda5243fd2af8ef147fe95` |
| 13 | `theorem` | [nnnorm_surjective](../../../../mathematics/Analysis/RealAnalysis/Variant06dd48d53b3e32b1d295e60826ee15fe2c3dc62985371d82adca205f12e69482.lean/declarations/nnnorm-surjective--18e1edf10e7362cb1213d947.md) | 134 | `result-track:18e1edf10e7362cb1213d9475618575fef624efcbecb5c93b6eb927f620e722b` |
| 14 | `theorem` | [range_nnnorm](../../../../mathematics/Analysis/RealAnalysis/Variant06dd48d53b3e32b1d295e60826ee15fe2c3dc62985371d82adca205f12e69482.lean/declarations/range-nnnorm--4590c93a3f4cc9a094c9649c.md) | 138 | `result-track:4590c93a3f4cc9a094c9649c33edf32416c77ddf71873cf3578dd758200fe31d` |
| 15 | `theorem` | [interior_closedBall'](../../../../mathematics/Analysis/RealAnalysis/Variant06dd48d53b3e32b1d295e60826ee15fe2c3dc62985371d82adca205f12e69482.lean/declarations/interior-closedball--5d61a3c8dda1ec1d0475f1ff.md) | 143 | `result-track:5d61a3c8dda1ec1d0475f1ff2df2aff7252a0e4d1a731f92bba09c981fd54542` |
| 16 | `theorem` | [frontier_closedBall'](../../../../mathematics/Analysis/RealAnalysis/Variant06dd48d53b3e32b1d295e60826ee15fe2c3dc62985371d82adca205f12e69482.lean/declarations/frontier-closedball--e4130dd29d3b8d5ade222096.md) | 148 | `result-track:e4130dd29d3b8d5ade2220969d0a9f26cbd962e7c9d514e835dd9552f5241837` |
| 17 | `theorem` | [interior_sphere'](../../../../mathematics/Analysis/RealAnalysis/Variant06dd48d53b3e32b1d295e60826ee15fe2c3dc62985371d82adca205f12e69482.lean/declarations/interior-sphere--c2b23004e3d79d88af307363.md) | 152 | `result-track:c2b23004e3d79d88af307363e639c58c25e1536d355bb5dbf3ac01afb7218f7a` |
| 18 | `theorem` | [frontier_sphere'](../../../../mathematics/Analysis/RealAnalysis/Variant06dd48d53b3e32b1d295e60826ee15fe2c3dc62985371d82adca205f12e69482.lean/declarations/frontier-sphere--e419c87274d74584103d987f.md) | 156 | `result-track:e419c87274d74584103d987f26ec794c4c39dbe1b2f1ea7ed75fd03b8ec019b3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
