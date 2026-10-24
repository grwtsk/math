# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.NormPow.Variante5fa21a64d80fbfd66e6bf797387d596e286d0140dc69ccb52967c2ed14f22ef

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "58a5fd0a828b0ad3a78827ebcb88526a6b41b645",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/NormPow/Variante5fa21a64d80fbfd66e6bf797387d596e286d0140dc69ccb52967c2ed14f22ef.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/NormPow/Variante5fa21a64d80fbfd66e6bf797387d596e286d0140dc69ccb52967c2ed14f22ef.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/NormPow/Variante5fa21a64d80fbfd66e6bf797387d596e286d0140dc69ccb52967c2ed14f22ef.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `58a5fd0a828b0ad3a78827ebcb88526a6b41b645`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/NormPow/Variante5fa21a64d80fbfd66e6bf797387d596e286d0140dc69ccb52967c2ed14f22ef.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/NormPow/Variante5fa21a64d80fbfd66e6bf797387d596e286d0140dc69ccb52967c2ed14f22ef.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.InnerProductSpace.Calculus` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Pow.Deriv` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [hasFDerivAt_norm_rpow](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/NormPow/Variante5fa21a64d80fbfd66e6bf797387d596e286d0140dc69ccb52967c2ed14f22ef.lean/declarations/hasfderivat-norm-rpow--4347d92ec3104d5eb5c09815.md) | 36 | `result-track:4347d92ec3104d5eb5c0981586073d535a40cc184fff5f4d453efbe04de9452e` |
| 2 | `theorem` | [differentiable_norm_rpow](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/NormPow/Variante5fa21a64d80fbfd66e6bf797387d596e286d0140dc69ccb52967c2ed14f22ef.lean/declarations/differentiable-norm-rpow--5c2e3d503d16ed5c47b43f26.md) | 59 | `result-track:5c2e3d503d16ed5c47b43f26538a72757743026c5ed836aef2ae8e95654d14a3` |
| 3 | `theorem` | [hasDerivAt_norm_rpow](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/NormPow/Variante5fa21a64d80fbfd66e6bf797387d596e286d0140dc69ccb52967c2ed14f22ef.lean/declarations/hasderivat-norm-rpow--1d167ed4ba2004d7e1721d87.md) | 63 | `result-track:1d167ed4ba2004d7e1721d87363125445a91a4fbe9705df3e55c9df0b41f9316` |
| 4 | `theorem` | [hasDerivAt_abs_rpow](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/NormPow/Variante5fa21a64d80fbfd66e6bf797387d596e286d0140dc69ccb52967c2ed14f22ef.lean/declarations/hasderivat-abs-rpow--24c53b6e484d546719af4933.md) | 67 | `result-track:24c53b6e484d546719af4933b7063c5624fa2aa633c09a70ea5972463c04889e` |
| 5 | `theorem` | [fderiv_norm_rpow](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/NormPow/Variante5fa21a64d80fbfd66e6bf797387d596e286d0140dc69ccb52967c2ed14f22ef.lean/declarations/fderiv-norm-rpow--8810f6bc06a1653aa4dc81ee.md) | 71 | `result-track:8810f6bc06a1653aa4dc81eea64f6d2a180d4f997625dbe813f3646e4bb89052` |
| 6 | `theorem` | [Differentiable.fderiv_norm_rpow](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/NormPow/Variante5fa21a64d80fbfd66e6bf797387d596e286d0140dc69ccb52967c2ed14f22ef.lean/declarations/differentiable-fderiv-norm-rpow--bbea5a5bf6a0cd730eab5f99.md) | 75 | `result-track:bbea5a5bf6a0cd730eab5f9924398d1e15b6670b1531fa0040421a857ea6a7ec` |
| 7 | `theorem` | [norm_fderiv_norm_rpow_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/NormPow/Variante5fa21a64d80fbfd66e6bf797387d596e286d0140dc69ccb52967c2ed14f22ef.lean/declarations/norm-fderiv-norm-rpow-le--d155854e6ac3316d50f27583.md) | 81 | `result-track:d155854e6ac3316d50f2758302d60704796d371bd1615c6ada35790c46b4ab8a` |
| 8 | `theorem` | [norm_fderiv_norm_id_rpow](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/NormPow/Variante5fa21a64d80fbfd66e6bf797387d596e286d0140dc69ccb52967c2ed14f22ef.lean/declarations/norm-fderiv-norm-id-rpow--2966379683db626948c4b500.md) | 93 | `result-track:2966379683db626948c4b5001e733bb0131c70c58cd94b2a6ab014d16569ea4b` |
| 9 | `theorem` | [nnnorm_fderiv_norm_rpow_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/NormPow/Variante5fa21a64d80fbfd66e6bf797387d596e286d0140dc69ccb52967c2ed14f22ef.lean/declarations/nnnorm-fderiv-norm-rpow-le--c2b07639888ade562c491ecc.md) | 101 | `result-track:c2b07639888ade562c491ecc180dbdc3aff5b13ef84cccd6f07683117dbf1204` |
| 10 | `lemma` | [enorm_fderiv_norm_rpow_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/NormPow/Variante5fa21a64d80fbfd66e6bf797387d596e286d0140dc69ccb52967c2ed14f22ef.lean/declarations/enorm-fderiv-norm-rpow-le--e185800b883c44690d14c9ce.md) | 106 | `result-track:e185800b883c44690d14c9cec755b4078cdf4bc63e3338bfe00a6145354531a2` |
| 11 | `theorem` | [contDiff_norm_rpow](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/NormPow/Variante5fa21a64d80fbfd66e6bf797387d596e286d0140dc69ccb52967c2ed14f22ef.lean/declarations/contdiff-norm-rpow--1ac8d9f4f472dbcdcf1ff9d4.md) | 112 | `result-track:1ac8d9f4f472dbcdcf1ff9d4d5c239a744c0522c3e056c1f418637db691cf8a8` |
| 12 | `theorem` | [ContDiff.norm_rpow](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/NormPow/Variante5fa21a64d80fbfd66e6bf797387d596e286d0140dc69ccb52967c2ed14f22ef.lean/declarations/contdiff-norm-rpow--e37a7f0a7d46ef8632471ee0.md) | 128 | `result-track:e37a7f0a7d46ef8632471ee067cbd7094f17b85a55389e919415e198d73a3261` |
| 13 | `theorem` | [Differentiable.norm_rpow](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/NormPow/Variante5fa21a64d80fbfd66e6bf797387d596e286d0140dc69ccb52967c2ed14f22ef.lean/declarations/differentiable-norm-rpow--3a1251043307e9ae9d0fd8f2.md) | 132 | `result-track:3a1251043307e9ae9d0fd8f25ef73ea696d850bb31d22698b8a90cf2a1a0bbfa` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
