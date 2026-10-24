# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.Issue9ZeroEta.Variant3564d7dcf315905f9ca65b195f3c0c67546950c85e53f29ee481f9e5c83dfea9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0233afeef45f71937e064fb9ff8f203d38c0343b",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/Issue9ZeroEta/Variant3564d7dcf315905f9ca65b195f3c0c67546950c85e53f29ee481f9e5c83dfea9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/Issue9ZeroEta/Variant3564d7dcf315905f9ca65b195f3c0c67546950c85e53f29ee481f9e5c83dfea9.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/Issue9ZeroEta/Variant3564d7dcf315905f9ca65b195f3c0c67546950c85e53f29ee481f9e5c83dfea9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0233afeef45f71937e064fb9ff8f203d38c0343b`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/Issue9ZeroEta/Variant3564d7dcf315905f9ca65b195f3c0c67546950c85e53f29ee481f9e5c83dfea9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/Issue9ZeroEta/Variant3564d7dcf315905f9ca65b195f3c0c67546950c85e53f29ee481f9e5c83dfea9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.ZeroObject` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.LocallyUniformLimit` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.MeanValue` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Pow.Deriv` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.Convex` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.PSeries` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [pair](../../../../../mathematics/Analysis/AsymptoticAnalysis/Issue9ZeroEta/Variant3564d7dcf315905f9ca65b195f3c0c67546950c85e53f29ee481f9e5c83dfea9.lean/declarations/pair--4fc9361f1c5d769cf0f255fb.md) | 15 | `declaration-track:4fc9361f1c5d769cf0f255fba9c3d205f1106e98eb037cf8662006e3744aaf92` |
| 2 | `theorem` | [pair_bound](../../../../../mathematics/Analysis/AsymptoticAnalysis/Issue9ZeroEta/Variant3564d7dcf315905f9ca65b195f3c0c67546950c85e53f29ee481f9e5c83dfea9.lean/declarations/pair-bound--7881e3970149891bdad311ca.md) | 18 | `result-track:7881e3970149891bdad311cab126fdebf64d2a338a7c3230d783fb7b85600cde` |
| 3 | `theorem` | [pair_bound_uniform](../../../../../mathematics/Analysis/AsymptoticAnalysis/Issue9ZeroEta/Variant3564d7dcf315905f9ca65b195f3c0c67546950c85e53f29ee481f9e5c83dfea9.lean/declarations/pair-bound-uniform--6db83e03d85f52e03aa33a58.md) | 39 | `result-track:6db83e03d85f52e03aa33a585e06080b8839ed53163b34cf94f22820b4206a9d` |
| 4 | `theorem` | [summable_majorant](../../../../../mathematics/Analysis/AsymptoticAnalysis/Issue9ZeroEta/Variant3564d7dcf315905f9ca65b195f3c0c67546950c85e53f29ee481f9e5c83dfea9.lean/declarations/summable-majorant--56420862a3f44d339a20788c.md) | 53 | `result-track:56420862a3f44d339a20788c25c30f3499eb83b89120cd0dff2436a6884d44a0` |
| 5 | `theorem` | [pair_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/Issue9ZeroEta/Variant3564d7dcf315905f9ca65b195f3c0c67546950c85e53f29ee481f9e5c83dfea9.lean/declarations/pair-summable--0830c951ebe5888478604166.md) | 60 | `result-track:0830c951ebe58884786041669ca565726cc9241901bdb80514d8a232a72abbdb` |
| 6 | `def` | [eta](../../../../../mathematics/Analysis/AsymptoticAnalysis/Issue9ZeroEta/Variant3564d7dcf315905f9ca65b195f3c0c67546950c85e53f29ee481f9e5c83dfea9.lean/declarations/eta--599ebdc4f85b1335f1a8611c.md) | 63 | `declaration-track:599ebdc4f85b1335f1a8611c63036c9e3f5e44d7c49fa9bfbb71904fb4845349` |
| 7 | `theorem` | [differentiableAt_eta](../../../../../mathematics/Analysis/AsymptoticAnalysis/Issue9ZeroEta/Variant3564d7dcf315905f9ca65b195f3c0c67546950c85e53f29ee481f9e5c83dfea9.lean/declarations/differentiableat-eta--2c7f8a95276328ff3d037102.md) | 65 | `result-track:2c7f8a95276328ff3d037102f174589db18c5dd5e4752881ecdb5460b41f2cf1` |
| 8 | `theorem` | [eta_eq_zeta_of_one_lt_re](../../../../../mathematics/Analysis/AsymptoticAnalysis/Issue9ZeroEta/Variant3564d7dcf315905f9ca65b195f3c0c67546950c85e53f29ee481f9e5c83dfea9.lean/declarations/eta-eq-zeta-of-one-lt-re--f834bbd6134f94f5d29020d5.md) | 86 | `result-track:f834bbd6134f94f5d29020d5a49c11985a0934d31bafe84b4ae20c1cd650c5f4` |
| 9 | `def` | [regularizedZeta](../../../../../mathematics/Analysis/AsymptoticAnalysis/Issue9ZeroEta/Variant3564d7dcf315905f9ca65b195f3c0c67546950c85e53f29ee481f9e5c83dfea9.lean/declarations/regularizedzeta--7fc54627cddf31fd2a96b9f1.md) | 123 | `declaration-track:7fc54627cddf31fd2a96b9f134d4a3d4e8acbe50047fd26c2fb0fab3036d4b8a` |
| 10 | `theorem` | [regularizedZeta_eq](../../../../../mathematics/Analysis/AsymptoticAnalysis/Issue9ZeroEta/Variant3564d7dcf315905f9ca65b195f3c0c67546950c85e53f29ee481f9e5c83dfea9.lean/declarations/regularizedzeta-eq--2f2c7dbf2bf818cbe64277be.md) | 126 | `result-track:2f2c7dbf2bf818cbe64277be632bcbfee8ac5bee2902b6027e4c8f5865e483ac` |
| 11 | `theorem` | [differentiable_regularizedZeta](../../../../../mathematics/Analysis/AsymptoticAnalysis/Issue9ZeroEta/Variant3564d7dcf315905f9ca65b195f3c0c67546950c85e53f29ee481f9e5c83dfea9.lean/declarations/differentiable-regularizedzeta--4b357ee465f43b6f8f037aac.md) | 134 | `result-track:4b357ee465f43b6f8f037aac247c3fade193100515e556b34912ef1de3a31f1c` |
| 12 | `theorem` | [eta_eq_zeta](../../../../../mathematics/Analysis/AsymptoticAnalysis/Issue9ZeroEta/Variant3564d7dcf315905f9ca65b195f3c0c67546950c85e53f29ee481f9e5c83dfea9.lean/declarations/eta-eq-zeta--d2aabb44bc7c368e5ebc1cfe.md) | 139 | `result-track:d2aabb44bc7c368e5ebc1cfe00a1910a5ff9670d01f5d0723c86c14df8a0d84b` |
| 13 | `theorem` | [pair_ofReal](../../../../../mathematics/Analysis/AsymptoticAnalysis/Issue9ZeroEta/Variant3564d7dcf315905f9ca65b195f3c0c67546950c85e53f29ee481f9e5c83dfea9.lean/declarations/pair-ofreal--8ac9be63711647b61f5275bb.md) | 176 | `result-track:8ac9be63711647b61f5275bbd0d7456cb166393d54f395beff109a07fc13c376` |
| 14 | `theorem` | [paired_eta_identity](../../../../../mathematics/Analysis/AsymptoticAnalysis/Issue9ZeroEta/Variant3564d7dcf315905f9ca65b195f3c0c67546950c85e53f29ee481f9e5c83dfea9.lean/declarations/paired-eta-identity--24133d2a8d3b37c8d3812471.md) | 182 | `result-track:24133d2a8d3b37c8d381247147d6542baac3607fbec0886db287e3fcbd32e5cc` |
| 15 | `theorem` | [real_zero_exclusion](../../../../../mathematics/Analysis/AsymptoticAnalysis/Issue9ZeroEta/Variant3564d7dcf315905f9ca65b195f3c0c67546950c85e53f29ee481f9e5c83dfea9.lean/declarations/real-zero-exclusion--0bdb63d3a488e2bdfd3411f7.md) | 194 | `result-track:0bdb63d3a488e2bdfd3411f7f9bd628730f0aa07b5b0eb8c06d1d3cd9358f534` |
| 16 | `theorem` | [zero_object_admission](../../../../../mathematics/Analysis/AsymptoticAnalysis/Issue9ZeroEta/Variant3564d7dcf315905f9ca65b195f3c0c67546950c85e53f29ee481f9e5c83dfea9.lean/declarations/zero-object-admission--7d2ed907742e49bd3c2b7592.md) | 197 | `result-track:7d2ed907742e49bd3c2b75924e7f9acda86d662987ae4b4126e01f39758829d2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
