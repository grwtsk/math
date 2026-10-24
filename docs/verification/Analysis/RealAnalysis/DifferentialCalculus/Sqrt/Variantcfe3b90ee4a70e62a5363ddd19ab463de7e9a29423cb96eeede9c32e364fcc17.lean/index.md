# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Sqrt.Variantcfe3b90ee4a70e62a5363ddd19ab463de7e9a29423cb96eeede9c32e364fcc17

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f8cf6f2dbe88c77eb76eb19a74f0055286253b65",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Sqrt/Variantcfe3b90ee4a70e62a5363ddd19ab463de7e9a29423cb96eeede9c32e364fcc17.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sqrt/Variantcfe3b90ee4a70e62a5363ddd19ab463de7e9a29423cb96eeede9c32e364fcc17.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sqrt/Variantcfe3b90ee4a70e62a5363ddd19ab463de7e9a29423cb96eeede9c32e364fcc17.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f8cf6f2dbe88c77eb76eb19a74f0055286253b65`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Sqrt/Variantcfe3b90ee4a70e62a5363ddd19ab463de7e9a29423cb96eeede9c32e364fcc17.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Sqrt/Variantcfe3b90ee4a70e62a5363ddd19ab463de7e9a29423cb96eeede9c32e364fcc17.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.ContDiff.Operations` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.Pow` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [sqPartialHomeomorph](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sqrt/Variantcfe3b90ee4a70e62a5363ddd19ab463de7e9a29423cb96eeede9c32e364fcc17.lean/declarations/sqpartialhomeomorph--a14bced9b710e6942009eae1.md) | 37 | `declaration-track:a14bced9b710e6942009eae1c5eb69226b7cdf77017ea52554b79ed40e425013` |
| 2 | `theorem` | [deriv_sqrt_aux](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sqrt/Variantcfe3b90ee4a70e62a5363ddd19ab463de7e9a29423cb96eeede9c32e364fcc17.lean/declarations/deriv-sqrt-aux--f341e88f19dfacf2aae81d1e.md) | 51 | `result-track:f341e88f19dfacf2aae81d1e5a56fe817ec554153a5480fa72c5565fb8259bac` |
| 3 | `theorem` | [hasStrictDerivAt_sqrt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sqrt/Variantcfe3b90ee4a70e62a5363ddd19ab463de7e9a29423cb96eeede9c32e364fcc17.lean/declarations/hasstrictderivat-sqrt--f1827f5402068369820c1150.md) | 65 | `result-track:f1827f5402068369820c115096dce5e85c66e6ec272b6640d07a51856918563e` |
| 4 | `theorem` | [contDiffAt_sqrt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sqrt/Variantcfe3b90ee4a70e62a5363ddd19ab463de7e9a29423cb96eeede9c32e364fcc17.lean/declarations/contdiffat-sqrt--234931f726e7f96cd8c65db4.md) | 69 | `result-track:234931f726e7f96cd8c65db4e9b34342b76e3f93ce78a11e3f01dbdaf9db8eda` |
| 5 | `theorem` | [hasDerivAt_sqrt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sqrt/Variantcfe3b90ee4a70e62a5363ddd19ab463de7e9a29423cb96eeede9c32e364fcc17.lean/declarations/hasderivat-sqrt--515984ba6095cc9103c63228.md) | 72 | `result-track:515984ba6095cc9103c63228744fc8af8a18cd9896331364bec778ee5def078a` |
| 6 | `theorem` | [HasDerivWithinAt.sqrt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sqrt/Variantcfe3b90ee4a70e62a5363ddd19ab463de7e9a29423cb96eeede9c32e364fcc17.lean/declarations/hasderivwithinat-sqrt--ee06ecfe541c1eb34d904c34.md) | 83 | `result-track:ee06ecfe541c1eb34d904c341436013317dc66ff63d9f04da3bb296a4e17ab7f` |
| 7 | `theorem` | [HasDerivAt.sqrt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sqrt/Variantcfe3b90ee4a70e62a5363ddd19ab463de7e9a29423cb96eeede9c32e364fcc17.lean/declarations/hasderivat-sqrt--fd02e902218a66456eb1c5b5.md) | 88 | `result-track:fd02e902218a66456eb1c5b51128d227c0c697d062255d3a39c6d77e4af6a5b5` |
| 8 | `theorem` | [HasStrictDerivAt.sqrt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sqrt/Variantcfe3b90ee4a70e62a5363ddd19ab463de7e9a29423cb96eeede9c32e364fcc17.lean/declarations/hasstrictderivat-sqrt--78eb899cfdf13f8917ec3fda.md) | 92 | `result-track:78eb899cfdf13f8917ec3fda969aaf634fa2a9de1c40b70d3906719c5390fedf` |
| 9 | `theorem` | [derivWithin_sqrt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sqrt/Variantcfe3b90ee4a70e62a5363ddd19ab463de7e9a29423cb96eeede9c32e364fcc17.lean/declarations/derivwithin-sqrt--e7e7ec96bb5ea7f2d638af1f.md) | 96 | `result-track:e7e7ec96bb5ea7f2d638af1ffab4542abfbe6195620586839e26c8e11e5a5702` |
| 10 | `theorem` | [deriv_sqrt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sqrt/Variantcfe3b90ee4a70e62a5363ddd19ab463de7e9a29423cb96eeede9c32e364fcc17.lean/declarations/deriv-sqrt--ddf4ef2b3088624ab72f0191.md) | 102 | `result-track:ddf4ef2b3088624ab72f01913f13c55391024db344dd2920b2a1ee48f14f9108` |
| 11 | `theorem` | [HasFDerivAt.sqrt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sqrt/Variantcfe3b90ee4a70e62a5363ddd19ab463de7e9a29423cb96eeede9c32e364fcc17.lean/declarations/hasfderivat-sqrt--d436fe20ba8717ce231ee307.md) | 113 | `result-track:d436fe20ba8717ce231ee307967a55140f19f98bb2bfd613759e2cfe0175af5b` |
| 12 | `theorem` | [HasStrictFDerivAt.sqrt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sqrt/Variantcfe3b90ee4a70e62a5363ddd19ab463de7e9a29423cb96eeede9c32e364fcc17.lean/declarations/hasstrictfderivat-sqrt--94fd06513b815620d5ededce.md) | 117 | `result-track:94fd06513b815620d5ededcee82ab7957ff6c7810581dcaa1facd12c19214940` |
| 13 | `theorem` | [HasFDerivWithinAt.sqrt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sqrt/Variantcfe3b90ee4a70e62a5363ddd19ab463de7e9a29423cb96eeede9c32e364fcc17.lean/declarations/hasfderivwithinat-sqrt--dd9e2b98f68e62bf35afa7b5.md) | 121 | `result-track:dd9e2b98f68e62bf35afa7b5d67c3d1c47645b6e262934b3b43cc05d6388a801` |
| 14 | `theorem` | [DifferentiableWithinAt.sqrt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sqrt/Variantcfe3b90ee4a70e62a5363ddd19ab463de7e9a29423cb96eeede9c32e364fcc17.lean/declarations/differentiablewithinat-sqrt--1033f737040678dd090c8ffa.md) | 126 | `result-track:1033f737040678dd090c8ffa7045a9c9d621b67e92d33876349ac52f8875ec0a` |
| 15 | `theorem` | [DifferentiableAt.sqrt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sqrt/Variantcfe3b90ee4a70e62a5363ddd19ab463de7e9a29423cb96eeede9c32e364fcc17.lean/declarations/differentiableat-sqrt--911ad3b57e56538803d8bd8f.md) | 131 | `result-track:911ad3b57e56538803d8bd8fce1836868337cf416bc76cf152af4f6ac1bb1668` |
| 16 | `theorem` | [DifferentiableOn.sqrt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sqrt/Variantcfe3b90ee4a70e62a5363ddd19ab463de7e9a29423cb96eeede9c32e364fcc17.lean/declarations/differentiableon-sqrt--00f2179d3a8a8b5a68b37757.md) | 136 | `result-track:00f2179d3a8a8b5a68b37757a569678b1510f07e043ba089a1ecfc0debdafdb3` |
| 17 | `theorem` | [Differentiable.sqrt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sqrt/Variantcfe3b90ee4a70e62a5363ddd19ab463de7e9a29423cb96eeede9c32e364fcc17.lean/declarations/differentiable-sqrt--d517f00687a440774a98260a.md) | 140 | `result-track:d517f00687a440774a98260a80a22771c0698c83617d05c82553aa8380ac8586` |
| 18 | `theorem` | [fderivWithin_sqrt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sqrt/Variantcfe3b90ee4a70e62a5363ddd19ab463de7e9a29423cb96eeede9c32e364fcc17.lean/declarations/fderivwithin-sqrt--59850a53c26fcca33454613b.md) | 143 | `result-track:59850a53c26fcca33454613b1ec44fedaef91cdf72493f28d1145590b5ad19c5` |
| 19 | `theorem` | [fderiv_sqrt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sqrt/Variantcfe3b90ee4a70e62a5363ddd19ab463de7e9a29423cb96eeede9c32e364fcc17.lean/declarations/fderiv-sqrt--4e6fad80a6344057483e8ab5.md) | 149 | `result-track:4e6fad80a6344057483e8ab5b7a69f8f61e877aad0443e226febc45fc2830ede` |
| 20 | `theorem` | [ContDiffAt.sqrt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sqrt/Variantcfe3b90ee4a70e62a5363ddd19ab463de7e9a29423cb96eeede9c32e364fcc17.lean/declarations/contdiffat-sqrt--fee82bb22c7d79ec46e3958b.md) | 154 | `result-track:fee82bb22c7d79ec46e3958b3be371cc4faaf2f540295e4f1dfe7bad90e0844b` |
| 21 | `theorem` | [ContDiffWithinAt.sqrt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sqrt/Variantcfe3b90ee4a70e62a5363ddd19ab463de7e9a29423cb96eeede9c32e364fcc17.lean/declarations/contdiffwithinat-sqrt--a010127539fb724cce0ef796.md) | 159 | `result-track:a010127539fb724cce0ef796062f8bb374f29acba25a2d0408c00af58e53ec60` |
| 22 | `theorem` | [ContDiffOn.sqrt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sqrt/Variantcfe3b90ee4a70e62a5363ddd19ab463de7e9a29423cb96eeede9c32e364fcc17.lean/declarations/contdiffon-sqrt--2efe025dce06fd1c3969bff5.md) | 164 | `result-track:2efe025dce06fd1c3969bff5a31f4d508c69f51a7e7a37b1fddf67e4970bd394` |
| 23 | `theorem` | [ContDiff.sqrt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sqrt/Variantcfe3b90ee4a70e62a5363ddd19ab463de7e9a29423cb96eeede9c32e364fcc17.lean/declarations/contdiff-sqrt--843bec440bb2a04f6074a057.md) | 168 | `result-track:843bec440bb2a04f6074a0578410aca0b1692aa5cd959e2bd86c5a46328e9845` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
