# Verification target: GRWTSK.Analysis.HodgeGaugeBounds.Variant177e5c1d021acade995db2390b67283d3f7b3cebbfb79eaad16a484cd8f6bf49

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5eca89497c2bd31b653bf4cdc79026581b676288",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/HodgeGaugeBounds/Variant177e5c1d021acade995db2390b67283d3f7b3cebbfb79eaad16a484cd8f6bf49.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/HodgeGaugeBounds/Variant177e5c1d021acade995db2390b67283d3f7b3cebbfb79eaad16a484cd8f6bf49.lean/index.md) · [Full source](../../../../mathematics/Analysis/HodgeGaugeBounds/Variant177e5c1d021acade995db2390b67283d3f7b3cebbfb79eaad16a484cd8f6bf49.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5eca89497c2bd31b653bf4cdc79026581b676288`.

Source path: `GRWTSK/Analysis/HodgeGaugeBounds/Variant177e5c1d021acade995db2390b67283d3f7b3cebbfb79eaad16a484cd8f6bf49.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/HodgeGaugeBounds/Variant177e5c1d021acade995db2390b67283d3f7b3cebbfb79eaad16a484cd8f6bf49.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.InnerProductSpace.PiL2` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Real.Sqrt` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FinCases` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Linarith` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [C0](../../../../mathematics/Analysis/HodgeGaugeBounds/Variant177e5c1d021acade995db2390b67283d3f7b3cebbfb79eaad16a484cd8f6bf49.lean/declarations/c0--17d24edb8dbfa27d762019b7.md) | 33 | `declaration-track:17d24edb8dbfa27d762019b7ecd758f817c6c6cb9baac4adcc0ab5a4ffb0ed2c` |
| 2 | `abbrev` | [C1](../../../../mathematics/Analysis/HodgeGaugeBounds/Variant177e5c1d021acade995db2390b67283d3f7b3cebbfb79eaad16a484cd8f6bf49.lean/declarations/c1--9ac4665820db2b9f0460df67.md) | 34 | `declaration-track:9ac4665820db2b9f0460df675d1c57b1a96bf4e3fc3a42e86664ecb39da39b9b` |
| 3 | `def` | [differential](../../../../mathematics/Analysis/HodgeGaugeBounds/Variant177e5c1d021acade995db2390b67283d3f7b3cebbfb79eaad16a484cd8f6bf49.lean/declarations/differential--f8082b7aad58c51a82cb7996.md) | 37 | `declaration-track:f8082b7aad58c51a82cb7996bf78a38fd214ce8b93bf3b8f0b45eeec7a2560dd` |
| 4 | `def` | [adjoint](../../../../mathematics/Analysis/HodgeGaugeBounds/Variant177e5c1d021acade995db2390b67283d3f7b3cebbfb79eaad16a484cd8f6bf49.lean/declarations/adjoint--209ce4918351514c3485f3e4.md) | 40 | `declaration-track:209ce4918351514c3485f3e4c18817f3fa330f3e8ca1fcac887a43aef1c5e682` |
| 5 | `theorem` | [adjoint_identity](../../../../mathematics/Analysis/HodgeGaugeBounds/Variant177e5c1d021acade995db2390b67283d3f7b3cebbfb79eaad16a484cd8f6bf49.lean/declarations/adjoint-identity--1dc9a62f76ae2a23dee2c126.md) | 42 | `result-track:1dc9a62f76ae2a23dee2c126219898d1f680881f6f339e57fc39dad2cd9d1bb5` |
| 6 | `theorem` | [differential_kernel](../../../../mathematics/Analysis/HodgeGaugeBounds/Variant177e5c1d021acade995db2390b67283d3f7b3cebbfb79eaad16a484cd8f6bf49.lean/declarations/differential-kernel--a599cca0a2d6f9c7b36175d2.md) | 48 | `result-track:a599cca0a2d6f9c7b36175d27c3f0431a98d181538c4aa6f3767d49445fd1d18` |
| 7 | `theorem` | [adjoint_kernel](../../../../mathematics/Analysis/HodgeGaugeBounds/Variant177e5c1d021acade995db2390b67283d3f7b3cebbfb79eaad16a484cd8f6bf49.lean/declarations/adjoint-kernel--163f824d824beae8a5aecd1b.md) | 58 | `result-track:163f824d824beae8a5aecd1b26f32e52874f4cc19985fc60c3a135f100c5d1e3` |
| 8 | `def` | [gauge](../../../../mathematics/Analysis/HodgeGaugeBounds/Variant177e5c1d021acade995db2390b67283d3f7b3cebbfb79eaad16a484cd8f6bf49.lean/declarations/gauge--027fc3d37651a9801b33fc7f.md) | 68 | `declaration-track:027fc3d37651a9801b33fc7fec1bcf5491ecba345d04aa037694cee839a4dbe9` |
| 9 | `def` | [harmonicPart](../../../../mathematics/Analysis/HodgeGaugeBounds/Variant177e5c1d021acade995db2390b67283d3f7b3cebbfb79eaad16a484cd8f6bf49.lean/declarations/harmonicpart--a28cdcb05b34dbb10b101feb.md) | 70 | `declaration-track:a28cdcb05b34dbb10b101feb896126911e469a0aac510c50019a850ea835472f` |
| 10 | `theorem` | [hodge_decomposition](../../../../mathematics/Analysis/HodgeGaugeBounds/Variant177e5c1d021acade995db2390b67283d3f7b3cebbfb79eaad16a484cd8f6bf49.lean/declarations/hodge-decomposition--09ed35d6e2628b6c48726fb8.md) | 73 | `result-track:09ed35d6e2628b6c48726fb87c4972d3058a81fefca184a84c0411442fb449dd` |
| 11 | `theorem` | [harmonicPart_in_kernel](../../../../mathematics/Analysis/HodgeGaugeBounds/Variant177e5c1d021acade995db2390b67283d3f7b3cebbfb79eaad16a484cd8f6bf49.lean/declarations/harmonicpart-in-kernel--f79b5b4e9bcac720d7b6a0c9.md) | 77 | `result-track:f79b5b4e9bcac720d7b6a0c9286c4f16632c829b2e068b066e3074b4b5abb45a` |
| 12 | `theorem` | [gauge_kernel_complement](../../../../mathematics/Analysis/HodgeGaugeBounds/Variant177e5c1d021acade995db2390b67283d3f7b3cebbfb79eaad16a484cd8f6bf49.lean/declarations/gauge-kernel-complement--736f71b916c85c5e979cdec4.md) | 82 | `result-track:736f71b916c85c5e979cdec499fa5206199d40f5d723c563a6a6b3c81e1c5916` |
| 13 | `theorem` | [exact_iff_component_agreement](../../../../mathematics/Analysis/HodgeGaugeBounds/Variant177e5c1d021acade995db2390b67283d3f7b3cebbfb79eaad16a484cd8f6bf49.lean/declarations/exact-iff-component-agreement--21705953c0b880bf38d1affa.md) | 87 | `result-track:21705953c0b880bf38d1affa465a1dbeb73ad92ed6671ca9e0b80287926b019a` |
| 14 | `theorem` | [exact_iff_harmonic_zero](../../../../mathematics/Analysis/HodgeGaugeBounds/Variant177e5c1d021acade995db2390b67283d3f7b3cebbfb79eaad16a484cd8f6bf49.lean/declarations/exact-iff-harmonic-zero--6e5578cf85c98384439b4a81.md) | 98 | `result-track:6e5578cf85c98384439b4a81b4ff7c0d235de7608c6d418a2668144dd6a7c580` |
| 15 | `theorem` | [unequal_component_obstruction](../../../../mathematics/Analysis/HodgeGaugeBounds/Variant177e5c1d021acade995db2390b67283d3f7b3cebbfb79eaad16a484cd8f6bf49.lean/declarations/unequal-component-obstruction--bda8b34be3ca39380867b7d0.md) | 111 | `result-track:bda8b34be3ca39380867b7d0dd77849a3e2492df71bbe67d158d509d75f76461` |
| 16 | `theorem` | [two_component_gap](../../../../mathematics/Analysis/HodgeGaugeBounds/Variant177e5c1d021acade995db2390b67283d3f7b3cebbfb79eaad16a484cd8f6bf49.lean/declarations/two-component-gap--a926054682c4a8208412f873.md) | 117 | `result-track:a926054682c4a8208412f8737211636e7f8ef0b8a1afbf143c2098ed1ac7aafa` |
| 17 | `theorem` | [gauge_norm_le](../../../../mathematics/Analysis/HodgeGaugeBounds/Variant177e5c1d021acade995db2390b67283d3f7b3cebbfb79eaad16a484cd8f6bf49.lean/declarations/gauge-norm-le--1dc56e625e4d6193d79ffac0.md) | 124 | `result-track:1dc56e625e4d6193d79ffac04c4c66d6fe30d6b2323ca93d236d8d7307d4181b` |
| 18 | `theorem` | [exact_two_component_gauge_bound](../../../../mathematics/Analysis/HodgeGaugeBounds/Variant177e5c1d021acade995db2390b67283d3f7b3cebbfb79eaad16a484cd8f6bf49.lean/declarations/exact-two-component-gauge-bound--7053b4e8565c5fb018144822.md) | 136 | `result-track:7053b4e8565c5fb018144822b14d729181a5bf5766ab4735862debd88f2c5b09` |
| 19 | `theorem` | [positive_overlap_endpoint_gauge](../../../../mathematics/Analysis/HodgeGaugeBounds/Variant177e5c1d021acade995db2390b67283d3f7b3cebbfb79eaad16a484cd8f6bf49.lean/declarations/positive-overlap-endpoint-gauge--443e3bfd46ab829d3edd04bb.md) | 147 | `result-track:443e3bfd46ab829d3edd04bb8b77a8432b77cda39c89d2495b2d81ad0ed5a404` |
| 20 | `theorem` | [weighted_evaluation](../../../../mathematics/Analysis/HodgeGaugeBounds/Variant177e5c1d021acade995db2390b67283d3f7b3cebbfb79eaad16a484cd8f6bf49.lean/declarations/weighted-evaluation--3340f53bc577be99287ff5e4.md) | 151 | `result-track:3340f53bc577be99287ff5e4ea92d077137b4471ac888961e137336d5af90f38` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
