# Verification target: GRWTSK.Topology.AlgebraicTopology.ExtraDegeneracy.Variant1a5c0836fb43e4f0845b9a20d38c388a1a3722cdd631f750a00597bc9d951a97

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9e96519b8a2ff1d219d1c723378e51e881efe884",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/AlgebraicTopology/ExtraDegeneracy/Variant1a5c0836fb43e4f0845b9a20d38c388a1a3722cdd631f750a00597bc9d951a97.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/AlgebraicTopology/ExtraDegeneracy/Variant1a5c0836fb43e4f0845b9a20d38c388a1a3722cdd631f750a00597bc9d951a97.lean/index.md) · [Full source](../../../../../mathematics/Topology/AlgebraicTopology/ExtraDegeneracy/Variant1a5c0836fb43e4f0845b9a20d38c388a1a3722cdd631f750a00597bc9d951a97.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9e96519b8a2ff1d219d1c723378e51e881efe884`.

Source path: `GRWTSK/Topology/AlgebraicTopology/ExtraDegeneracy/Variant1a5c0836fb43e4f0845b9a20d38c388a1a3722cdd631f750a00597bc9d951a97.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/AlgebraicTopology/ExtraDegeneracy/Variant1a5c0836fb43e4f0845b9a20d38c388a1a3722cdd631f750a00597bc9d951a97.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.AlgebraicTopology.AlternatingFaceMapComplex` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.AlgebraicTopology.SimplicialSet.StdSimplex` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.AlgebraicTopology.CechNerve` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Homology.Homotopy` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FinCases` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ExtraDegeneracy](../../../../../mathematics/Topology/AlgebraicTopology/ExtraDegeneracy/Variant1a5c0836fb43e4f0845b9a20d38c388a1a3722cdd631f750a00597bc9d951a97.lean/declarations/extradegeneracy--7c29a32f1eac32b9f4b7f705.md) | 60 | `declaration-track:7c29a32f1eac32b9f4b7f7052e676c301185b223861306ac4b8f2f0e7946477c` |
| 2 | `def` | [map](../../../../../mathematics/Topology/AlgebraicTopology/ExtraDegeneracy/Variant1a5c0836fb43e4f0845b9a20d38c388a1a3722cdd631f750a00597bc9d951a97.lean/declarations/map--7b12fa8180795bdd464c4a1d.md) | 81 | `declaration-track:7b12fa8180795bdd464c4a1dc7e30e72d3d68e04d43f935b5486b8fc6f19e4bf` |
| 3 | `def` | [ofIso](../../../../../mathematics/Topology/AlgebraicTopology/ExtraDegeneracy/Variant1a5c0836fb43e4f0845b9a20d38c388a1a3722cdd631f750a00597bc9d951a97.lean/declarations/ofiso--4b2d1a842ccc546885165fcd.md) | 115 | `declaration-track:4b2d1a842ccc546885165fcda96fddf48be0ee4dd877fe7f3a03534db9cecf33` |
| 4 | `def` | [shiftFun](../../../../../mathematics/Topology/AlgebraicTopology/ExtraDegeneracy/Variant1a5c0836fb43e4f0845b9a20d38c388a1a3722cdd631f750a00597bc9d951a97.lean/declarations/shiftfun--b47b59257e29412b2193dcda.md) | 157 | `declaration-track:b47b59257e29412b2193dcda0700d96fa39aa7ce995cb51f4815a9c59fba4cfd` |
| 5 | `theorem` | [shiftFun_zero](../../../../../mathematics/Topology/AlgebraicTopology/ExtraDegeneracy/Variant1a5c0836fb43e4f0845b9a20d38c388a1a3722cdd631f750a00597bc9d951a97.lean/declarations/shiftfun-zero--98bed3e0fea2733101d0f891.md) | 161 | `result-track:98bed3e0fea2733101d0f891e0df4d1660ec9d9f521e68b712d71b95dad33d41` |
| 6 | `theorem` | [shiftFun_succ](../../../../../mathematics/Topology/AlgebraicTopology/ExtraDegeneracy/Variant1a5c0836fb43e4f0845b9a20d38c388a1a3722cdd631f750a00597bc9d951a97.lean/declarations/shiftfun-succ--ffc9f27b3009d509a3a9ee8e.md) | 168 | `result-track:ffc9f27b3009d509a3a9ee8eadcb017016770cfae4146a8a1cd8c2aeaba1641f` |
| 7 | `def` | [shift](../../../../../mathematics/Topology/AlgebraicTopology/ExtraDegeneracy/Variant1a5c0836fb43e4f0845b9a20d38c388a1a3722cdd631f750a00597bc9d951a97.lean/declarations/shift--0bb6fe444eef2b81a2bfb6ae.md) | 175 | `declaration-track:0bb6fe444eef2b81a2bfb6ae467ce9a7482fc0534453a90951e43c2b33a481c1` |
| 8 | `def` | [extraDegeneracy](../../../../../mathematics/Topology/AlgebraicTopology/ExtraDegeneracy/Variant1a5c0836fb43e4f0845b9a20d38c388a1a3722cdd631f750a00597bc9d951a97.lean/declarations/extradegeneracy--c0a3b7d1fa9e5f111dc57213.md) | 193 | `declaration-track:c0a3b7d1fa9e5f111dc57213c5aec60e082df02dc23f5d8960ce0595f377066e` |
| 9 | `instance` | [nonempty_extraDegeneracy_stdSimplex](../../../../../mathematics/Topology/AlgebraicTopology/ExtraDegeneracy/Variant1a5c0836fb43e4f0845b9a20d38c388a1a3722cdd631f750a00597bc9d951a97.lean/declarations/nonempty-extradegeneracy-stdsimplex--8f6f5bb6430c489c491c1699.md) | 231 | `declaration-track:8f6f5bb6430c489c491c1699564fa2b74aaa150c0e93ef6be6cc55a764a3c0a3` |
| 10 | `def` | [ExtraDegeneracy.s](../../../../../mathematics/Topology/AlgebraicTopology/ExtraDegeneracy/Variant1a5c0836fb43e4f0845b9a20d38c388a1a3722cdd631f750a00597bc9d951a97.lean/declarations/extradegeneracy-s--84914399f707f65acb175388.md) | 256 | `declaration-track:84914399f707f65acb1753889d1183a9e3c1e79b1560b9408c05959da99dae5a` |
| 11 | `theorem` | [ExtraDegeneracy.s_comp_π_0](../../../../../mathematics/Topology/AlgebraicTopology/ExtraDegeneracy/Variant1a5c0836fb43e4f0845b9a20d38c388a1a3722cdd631f750a00597bc9d951a97.lean/declarations/extradegeneracy-s-comp-0--aec2870ff7aea5d7ec9c3697.md) | 266 | `result-track:aec2870ff7aea5d7ec9c36976035e04019e0a2f7ddf77c0696766aecd2f7d815` |
| 12 | `theorem` | [ExtraDegeneracy.s_comp_π_succ](../../../../../mathematics/Topology/AlgebraicTopology/ExtraDegeneracy/Variant1a5c0836fb43e4f0845b9a20d38c388a1a3722cdd631f750a00597bc9d951a97.lean/declarations/extradegeneracy-s-comp-succ--78a2061cce971ea682605b02.md) | 274 | `result-track:78a2061cce971ea682605b02771331b874017498cbc505bcf9a823d593c29199` |
| 13 | `theorem` | [ExtraDegeneracy.s_comp_base](../../../../../mathematics/Topology/AlgebraicTopology/ExtraDegeneracy/Variant1a5c0836fb43e4f0845b9a20d38c388a1a3722cdd631f750a00597bc9d951a97.lean/declarations/extradegeneracy-s-comp-base--118f3b9d3667558477fa0fe5.md) | 280 | `result-track:118f3b9d3667558477fa0fe5dffa28bb178883acdd4a31d753285eca7ea4e0a6` |
| 14 | `def` | [extraDegeneracy](../../../../../mathematics/Topology/AlgebraicTopology/ExtraDegeneracy/Variant1a5c0836fb43e4f0845b9a20d38c388a1a3722cdd631f750a00597bc9d951a97.lean/declarations/extradegeneracy--57c73aa1082dd16fcdb341d4.md) | 285 | `declaration-track:57c73aa1082dd16fcdb341d4718dcaef575906598005b588bb79f50ea6004973` |
| 15 | `def` | [const](../../../../../mathematics/Topology/AlgebraicTopology/ExtraDegeneracy/Variant1a5c0836fb43e4f0845b9a20d38c388a1a3722cdd631f750a00597bc9d951a97.lean/declarations/const--2ccc6048a998f54c10ef5787.md) | 355 | `declaration-track:2ccc6048a998f54c10ef578788d48deb7fa49b6c2ae20d8e951dd65e7221b8bd` |
| 16 | `def` | [homotopyEquiv](../../../../../mathematics/Topology/AlgebraicTopology/ExtraDegeneracy/Variant1a5c0836fb43e4f0845b9a20d38c388a1a3722cdd631f750a00597bc9d951a97.lean/declarations/homotopyequiv--04e2f65540043b71a4ddda8b.md) | 362 | `declaration-track:04e2f65540043b71a4ddda8bf0530c7118a76fbd0023d87a547ef85f7b0762d5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
