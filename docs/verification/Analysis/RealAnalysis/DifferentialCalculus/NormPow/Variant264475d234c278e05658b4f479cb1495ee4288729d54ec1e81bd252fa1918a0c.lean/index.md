# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.NormPow.Variant264475d234c278e05658b4f479cb1495ee4288729d54ec1e81bd252fa1918a0c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "41ed51cec2ff41e1670fe752f784cf3e02ffb898",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/NormPow/Variant264475d234c278e05658b4f479cb1495ee4288729d54ec1e81bd252fa1918a0c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/NormPow/Variant264475d234c278e05658b4f479cb1495ee4288729d54ec1e81bd252fa1918a0c.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/NormPow/Variant264475d234c278e05658b4f479cb1495ee4288729d54ec1e81bd252fa1918a0c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `41ed51cec2ff41e1670fe752f784cf3e02ffb898`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/NormPow/Variant264475d234c278e05658b4f479cb1495ee4288729d54ec1e81bd252fa1918a0c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/NormPow/Variant264475d234c278e05658b4f479cb1495ee4288729d54ec1e81bd252fa1918a0c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [hasFDerivAt_norm_rpow](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/NormPow/Variant264475d234c278e05658b4f479cb1495ee4288729d54ec1e81bd252fa1918a0c.lean/declarations/hasfderivat-norm-rpow--a6a90c274c1863299f9e9edd.md) | 33 | `result-track:a6a90c274c1863299f9e9edd2f180c5e8f3d8ccb4da67857f7c4143d7276f1b5` |
| 2 | `theorem` | [differentiable_norm_rpow](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/NormPow/Variant264475d234c278e05658b4f479cb1495ee4288729d54ec1e81bd252fa1918a0c.lean/declarations/differentiable-norm-rpow--c5de2c4fdbe151a79f85a578.md) | 56 | `result-track:c5de2c4fdbe151a79f85a5788c1dddf840c7272d80b02cc7cf41f8eaf0800216` |
| 3 | `theorem` | [hasDerivAt_norm_rpow](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/NormPow/Variant264475d234c278e05658b4f479cb1495ee4288729d54ec1e81bd252fa1918a0c.lean/declarations/hasderivat-norm-rpow--866f3ce556d967b66c10d502.md) | 60 | `result-track:866f3ce556d967b66c10d502eb3c4311987a47dd5bff7f84bd8a7e0bbd9ef0cf` |
| 4 | `theorem` | [hasDerivAt_abs_rpow](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/NormPow/Variant264475d234c278e05658b4f479cb1495ee4288729d54ec1e81bd252fa1918a0c.lean/declarations/hasderivat-abs-rpow--ad5404aa8fe6603cc1a9cc43.md) | 64 | `result-track:ad5404aa8fe6603cc1a9cc431435daa051103aa3139d7b462928740e16e7d9d6` |
| 5 | `theorem` | [fderiv_norm_rpow](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/NormPow/Variant264475d234c278e05658b4f479cb1495ee4288729d54ec1e81bd252fa1918a0c.lean/declarations/fderiv-norm-rpow--1b544cb2a39a95166c32f22f.md) | 68 | `result-track:1b544cb2a39a95166c32f22fa825e00804a100dcd3c4d9b016c1d6e5d8f79619` |
| 6 | `theorem` | [Differentiable.fderiv_norm_rpow](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/NormPow/Variant264475d234c278e05658b4f479cb1495ee4288729d54ec1e81bd252fa1918a0c.lean/declarations/differentiable-fderiv-norm-rpow--97967cfc3f4259148583f98e.md) | 72 | `result-track:97967cfc3f4259148583f98ee6aefc3f261c310b94fdb958eb3a354dd9e9072c` |
| 7 | `theorem` | [norm_fderiv_norm_rpow_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/NormPow/Variant264475d234c278e05658b4f479cb1495ee4288729d54ec1e81bd252fa1918a0c.lean/declarations/norm-fderiv-norm-rpow-le--3cc2792d8f04e2e5df4e11e6.md) | 78 | `result-track:3cc2792d8f04e2e5df4e11e640fd3de3b5ad6c47e807b8f1ac40f23e83fc2a80` |
| 8 | `theorem` | [norm_fderiv_norm_id_rpow](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/NormPow/Variant264475d234c278e05658b4f479cb1495ee4288729d54ec1e81bd252fa1918a0c.lean/declarations/norm-fderiv-norm-id-rpow--fb50ce82c969466c00d665c8.md) | 90 | `result-track:fb50ce82c969466c00d665c89097a29dc750a6f89590432b146bd3af15b09a13` |
| 9 | `theorem` | [nnnorm_fderiv_norm_rpow_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/NormPow/Variant264475d234c278e05658b4f479cb1495ee4288729d54ec1e81bd252fa1918a0c.lean/declarations/nnnorm-fderiv-norm-rpow-le--8589f3548e95555cf410e159.md) | 98 | `result-track:8589f3548e95555cf410e15966215258a05b400df1fbb3ef32c14d83e93f9de1` |
| 10 | `lemma` | [enorm_fderiv_norm_rpow_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/NormPow/Variant264475d234c278e05658b4f479cb1495ee4288729d54ec1e81bd252fa1918a0c.lean/declarations/enorm-fderiv-norm-rpow-le--622f1bbc4a50b67fe1371b1d.md) | 103 | `result-track:622f1bbc4a50b67fe1371b1d4ab4bcaea6167f0c6578e7d7e6a50e2c09b9f62e` |
| 11 | `theorem` | [contDiff_norm_rpow](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/NormPow/Variant264475d234c278e05658b4f479cb1495ee4288729d54ec1e81bd252fa1918a0c.lean/declarations/contdiff-norm-rpow--296d9ae511f185ce426dba34.md) | 109 | `result-track:296d9ae511f185ce426dba348bc9c7749cbb574bd7f6eafe9360c9cd1639a9df` |
| 12 | `theorem` | [ContDiff.norm_rpow](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/NormPow/Variant264475d234c278e05658b4f479cb1495ee4288729d54ec1e81bd252fa1918a0c.lean/declarations/contdiff-norm-rpow--3ffbb8d2637e9a71346e9a4f.md) | 125 | `result-track:3ffbb8d2637e9a71346e9a4fea27272a6d2db0c288cdca1c901e5569debf2a4f` |
| 13 | `theorem` | [Differentiable.norm_rpow](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/NormPow/Variant264475d234c278e05658b4f479cb1495ee4288729d54ec1e81bd252fa1918a0c.lean/declarations/differentiable-norm-rpow--a69093afe813ec7a8cb92dad.md) | 129 | `result-track:a69093afe813ec7a8cb92dadf6586ab1d0572020413c2c0664bd5bc25bc02deb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
