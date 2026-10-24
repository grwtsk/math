# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.AffineMap.Variant7f4ff0727be42e742350d55a469b5e246cb3eec08a67c5951e421da7d3cf9949

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "09527e4577a1f9e38f39ccdd74281e6be4ed7b3d",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/AffineMap/Variant7f4ff0727be42e742350d55a469b5e246cb3eec08a67c5951e421da7d3cf9949.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AffineMap/Variant7f4ff0727be42e742350d55a469b5e246cb3eec08a67c5951e421da7d3cf9949.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AffineMap/Variant7f4ff0727be42e742350d55a469b5e246cb3eec08a67c5951e421da7d3cf9949.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `09527e4577a1f9e38f39ccdd74281e6be4ed7b3d`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/AffineMap/Variant7f4ff0727be42e742350d55a469b5e246cb3eec08a67c5951e421da7d3cf9949.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/AffineMap/Variant7f4ff0727be42e742350d55a469b5e246cb3eec08a67c5951e421da7d3cf9949.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.Deriv.Add` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.Linear` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.AffineSpace.AffineMap` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [hasStrictDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AffineMap/Variant7f4ff0727be42e742350d55a469b5e246cb3eec08a67c5951e421da7d3cf9949.lean/declarations/hasstrictderivat--a77a552b8c14e1c8938206dd.md) | 32 | `result-track:a77a552b8c14e1c8938206ddb2a92f2875451a0c8ff9df0c45faf1634e44af52` |
| 2 | `theorem` | [hasDerivAtFilter](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AffineMap/Variant7f4ff0727be42e742350d55a469b5e246cb3eec08a67c5951e421da7d3cf9949.lean/declarations/hasderivatfilter--bca387b2c7ffd97941507fc7.md) | 36 | `result-track:bca387b2c7ffd97941507fc7bab805b2f5cb7b7922ba4e1c9bfd6498fd69434a` |
| 3 | `theorem` | [hasDerivWithinAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AffineMap/Variant7f4ff0727be42e742350d55a469b5e246cb3eec08a67c5951e421da7d3cf9949.lean/declarations/hasderivwithinat--288644ff6fbde764f28e53e0.md) | 40 | `result-track:288644ff6fbde764f28e53e0ad035cbae3b984a72c067e9ef4ab2f41cf27b896` |
| 4 | `theorem` | [hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AffineMap/Variant7f4ff0727be42e742350d55a469b5e246cb3eec08a67c5951e421da7d3cf9949.lean/declarations/hasderivat--9eee99ba11247cf25de3f0b0.md) | 41 | `result-track:9eee99ba11247cf25de3f0b040bd6026821844d346f2ded5f4b9444775013841` |
| 5 | `theorem` | [derivWithin](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AffineMap/Variant7f4ff0727be42e742350d55a469b5e246cb3eec08a67c5951e421da7d3cf9949.lean/declarations/derivwithin--0814bb259f2b432c0a2da4ed.md) | 43 | `result-track:0814bb259f2b432c0a2da4ed8488f1fe3a0e264c59819b827bc24a5acb7edf38` |
| 6 | `theorem` | [deriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AffineMap/Variant7f4ff0727be42e742350d55a469b5e246cb3eec08a67c5951e421da7d3cf9949.lean/declarations/deriv--b5862f12364b145e9dac98fe.md) | 47 | `result-track:b5862f12364b145e9dac98fe2d0e6ebc0a65f3784b3afd8db42b40d2909c7c96` |
| 7 | `theorem` | [differentiableAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AffineMap/Variant7f4ff0727be42e742350d55a469b5e246cb3eec08a67c5951e421da7d3cf9949.lean/declarations/differentiableat--8391be439ecc25a95c195128.md) | 49 | `result-track:8391be439ecc25a95c195128ecdcabfc6cff0b93b17e8d92dcd4b212c90ffc04` |
| 8 | `theorem` | [differentiable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AffineMap/Variant7f4ff0727be42e742350d55a469b5e246cb3eec08a67c5951e421da7d3cf9949.lean/declarations/differentiable--23d14e2d3098a1f499c15c94.md) | 50 | `result-track:23d14e2d3098a1f499c15c94efd3d8e2b1fc3049c9e01911b90e33470a95d031` |
| 9 | `theorem` | [differentiableWithinAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AffineMap/Variant7f4ff0727be42e742350d55a469b5e246cb3eec08a67c5951e421da7d3cf9949.lean/declarations/differentiablewithinat--177216b1b44c060c09a68bfe.md) | 52 | `result-track:177216b1b44c060c09a68bfecfd5b370133a2c9f7fe994cfb482e0077b209b4d` |
| 10 | `theorem` | [differentiableOn](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AffineMap/Variant7f4ff0727be42e742350d55a469b5e246cb3eec08a67c5951e421da7d3cf9949.lean/declarations/differentiableon--27057ade1a31060bd2b2adf6.md) | 55 | `result-track:27057ade1a31060bd2b2adf6374f965b2a27106f4eda38cd0752ad6ca9f4c58f` |
| 11 | `theorem` | [hasStrictDerivAt_lineMap](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AffineMap/Variant7f4ff0727be42e742350d55a469b5e246cb3eec08a67c5951e421da7d3cf9949.lean/declarations/hasstrictderivat-linemap--2a5271b15baf81139aeb0086.md) | 64 | `result-track:2a5271b15baf81139aeb0086cc818d6ff61d962657b16aeee8dab6f0e22dc36b` |
| 12 | `theorem` | [hasDerivAt_lineMap](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AffineMap/Variant7f4ff0727be42e742350d55a469b5e246cb3eec08a67c5951e421da7d3cf9949.lean/declarations/hasderivat-linemap--260acd77b6741f09590085cc.md) | 67 | `result-track:260acd77b6741f09590085cc596365f143fd3f6e34e9b354b217bebee7e50519` |
| 13 | `theorem` | [hasDerivWithinAt_lineMap](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AffineMap/Variant7f4ff0727be42e742350d55a469b5e246cb3eec08a67c5951e421da7d3cf9949.lean/declarations/hasderivwithinat-linemap--492442d8c05b35d12e9dc3c8.md) | 70 | `result-track:492442d8c05b35d12e9dc3c87778d6e9c7c80c42ef7e55c7346c554f88a2b9bb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
