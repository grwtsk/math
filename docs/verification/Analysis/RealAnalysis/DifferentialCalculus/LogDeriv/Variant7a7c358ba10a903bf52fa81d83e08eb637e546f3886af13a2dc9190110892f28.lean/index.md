# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.LogDeriv.Variant7a7c358ba10a903bf52fa81d83e08eb637e546f3886af13a2dc9190110892f28

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "05d8897631759f2e85cd36ba8f543f44eccc14f1",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/LogDeriv/Variant7a7c358ba10a903bf52fa81d83e08eb637e546f3886af13a2dc9190110892f28.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LogDeriv/Variant7a7c358ba10a903bf52fa81d83e08eb637e546f3886af13a2dc9190110892f28.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LogDeriv/Variant7a7c358ba10a903bf52fa81d83e08eb637e546f3886af13a2dc9190110892f28.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `05d8897631759f2e85cd36ba8f543f44eccc14f1`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/LogDeriv/Variant7a7c358ba10a903bf52fa81d83e08eb637e546f3886af13a2dc9190110892f28.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/LogDeriv/Variant7a7c358ba10a903bf52fa81d83e08eb637e546f3886af13a2dc9190110892f28.lean.json)

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
| 1 | `theorem` | [isOpenMap_exp](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LogDeriv/Variant7a7c358ba10a903bf52fa81d83e08eb637e546f3886af13a2dc9190110892f28.lean/declarations/isopenmap-exp--a81b2c1f8c8d2226d2c7801a.md) | 29 | `result-track:a81b2c1f8c8d2226d2c7801a300329064d7399e5006795bd2cc573ed0a6cf704` |
| 2 | `theorem` | [hasStrictDerivAt_log](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LogDeriv/Variant7a7c358ba10a903bf52fa81d83e08eb637e546f3886af13a2dc9190110892f28.lean/declarations/hasstrictderivat-log--13d08ed31ead0e455397a4c3.md) | 32 | `result-track:13d08ed31ead0e455397a4c384e9f64dfc19ac1309013f235536cff63dd2920a` |
| 3 | `lemma` | [hasDerivAt_log](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LogDeriv/Variant7a7c358ba10a903bf52fa81d83e08eb637e546f3886af13a2dc9190110892f28.lean/declarations/hasderivat-log--bfe3c415d8fc38afb972ada4.md) | 37 | `result-track:bfe3c415d8fc38afb972ada44c12f39e4d82193c9a87849f33e8b84b0e7cfa47` |
| 4 | `lemma` | [differentiableAt_log](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LogDeriv/Variant7a7c358ba10a903bf52fa81d83e08eb637e546f3886af13a2dc9190110892f28.lean/declarations/differentiableat-log--ed55eb2ccbd753b70a3ad36c.md) | 41 | `result-track:ed55eb2ccbd753b70a3ad36c375b9f4b6ac1c097d7b53ed2b1d2a5b6a2f8e577` |
| 5 | `theorem` | [hasStrictFDerivAt_log_real](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LogDeriv/Variant7a7c358ba10a903bf52fa81d83e08eb637e546f3886af13a2dc9190110892f28.lean/declarations/hasstrictfderivat-log-real--91841f48b186b84bedcc2276.md) | 45 | `result-track:91841f48b186b84bedcc22765838792c8f7f314ecfabb9702c3dcdfec455f576` |
| 6 | `theorem` | [contDiffAt_log](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LogDeriv/Variant7a7c358ba10a903bf52fa81d83e08eb637e546f3886af13a2dc9190110892f28.lean/declarations/contdiffat-log--971a909f6415dad658f1d987.md) | 49 | `result-track:971a909f6415dad658f1d9875464d6bcd5cd7ab0c8239fbe0c63b3212f1d63a3` |
| 7 | `theorem` | [deriv_log](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LogDeriv/Variant7a7c358ba10a903bf52fa81d83e08eb637e546f3886af13a2dc9190110892f28.lean/declarations/deriv-log--f93c8ddbc2eabde31683d8fb.md) | 53 | `result-track:f93c8ddbc2eabde31683d8fb43371b4f402e52901e329e9dd9b3947786223168` |
| 8 | `theorem` | [HasStrictFDerivAt.clog](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LogDeriv/Variant7a7c358ba10a903bf52fa81d83e08eb637e546f3886af13a2dc9190110892f28.lean/declarations/hasstrictfderivat-clog--debabeec537b1abe74232155.md) | 66 | `result-track:debabeec537b1abe742321559bbef3c8b1b78f9f00b54d54527ac4afedc8bf46` |
| 9 | `theorem` | [HasStrictDerivAt.clog](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LogDeriv/Variant7a7c358ba10a903bf52fa81d83e08eb637e546f3886af13a2dc9190110892f28.lean/declarations/hasstrictderivat-clog--c0e9f81aa3f6918c0ae1bf20.md) | 71 | `result-track:c0e9f81aa3f6918c0ae1bf2010c409865633971e82a13fff99053f319364e574` |
| 10 | `theorem` | [HasStrictDerivAt.clog_real](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LogDeriv/Variant7a7c358ba10a903bf52fa81d83e08eb637e546f3886af13a2dc9190110892f28.lean/declarations/hasstrictderivat-clog-real--cb5919d5885fcc914702f4a4.md) | 75 | `result-track:cb5919d5885fcc914702f4a426bdad786c3da0636ca63dc79e90908928cfd5e7` |
| 11 | `theorem` | [HasFDerivAt.clog](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LogDeriv/Variant7a7c358ba10a903bf52fa81d83e08eb637e546f3886af13a2dc9190110892f28.lean/declarations/hasfderivat-clog--da2c9f55291906c16dea3921.md) | 79 | `result-track:da2c9f55291906c16dea39210257ebcbbbd19641743d9c9dc7419a553b9eb049` |
| 12 | `theorem` | [HasDerivAt.clog](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LogDeriv/Variant7a7c358ba10a903bf52fa81d83e08eb637e546f3886af13a2dc9190110892f28.lean/declarations/hasderivat-clog--de0c5dfeb3394d22f111f8d5.md) | 83 | `result-track:de0c5dfeb3394d22f111f8d5bf649cadef960a4b5d5fad63d6b5981aa5590ad1` |
| 13 | `theorem` | [HasDerivAt.clog_real](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LogDeriv/Variant7a7c358ba10a903bf52fa81d83e08eb637e546f3886af13a2dc9190110892f28.lean/declarations/hasderivat-clog-real--08068c57b5ff85893718dd4a.md) | 87 | `result-track:08068c57b5ff85893718dd4a84457e3789faf475a150baa51a435e99c7e67660` |
| 14 | `theorem` | [DifferentiableAt.clog](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LogDeriv/Variant7a7c358ba10a903bf52fa81d83e08eb637e546f3886af13a2dc9190110892f28.lean/declarations/differentiableat-clog--348e6133a9d97477ab13bdc3.md) | 92 | `result-track:348e6133a9d97477ab13bdc33f98316a28623eeedef6289cfb565b1d06a3f889` |
| 15 | `theorem` | [HasFDerivWithinAt.clog](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LogDeriv/Variant7a7c358ba10a903bf52fa81d83e08eb637e546f3886af13a2dc9190110892f28.lean/declarations/hasfderivwithinat-clog--01eb3ec4b768d02d31dfa39e.md) | 96 | `result-track:01eb3ec4b768d02d31dfa39e57fcaa2d819f88e64ad0575d13cccd73b9143254` |
| 16 | `theorem` | [HasDerivWithinAt.clog](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LogDeriv/Variant7a7c358ba10a903bf52fa81d83e08eb637e546f3886af13a2dc9190110892f28.lean/declarations/hasderivwithinat-clog--1e1d3ead1ad3d850318ef964.md) | 101 | `result-track:1e1d3ead1ad3d850318ef9646d1af879902032539f9119670ba75c4e0f3770bf` |
| 17 | `theorem` | [HasDerivWithinAt.clog_real](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LogDeriv/Variant7a7c358ba10a903bf52fa81d83e08eb637e546f3886af13a2dc9190110892f28.lean/declarations/hasderivwithinat-clog-real--9a20b0e24277f36a6483852e.md) | 106 | `result-track:9a20b0e24277f36a6483852e060442275db51b8aaa8a699bb015796d15bfdd8d` |
| 18 | `theorem` | [DifferentiableWithinAt.clog](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LogDeriv/Variant7a7c358ba10a903bf52fa81d83e08eb637e546f3886af13a2dc9190110892f28.lean/declarations/differentiablewithinat-clog--9bd553a2226d02ca39fa7363.md) | 112 | `result-track:9bd553a2226d02ca39fa7363bda691775169033d82b47992f75f104b9d61ec34` |
| 19 | `theorem` | [DifferentiableOn.clog](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LogDeriv/Variant7a7c358ba10a903bf52fa81d83e08eb637e546f3886af13a2dc9190110892f28.lean/declarations/differentiableon-clog--5873d9a79ef52eb1b40ce578.md) | 117 | `result-track:5873d9a79ef52eb1b40ce57896cd57367fbbfff0aa8940a6551d3ac890fb7096` |
| 20 | `theorem` | [Differentiable.clog](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LogDeriv/Variant7a7c358ba10a903bf52fa81d83e08eb637e546f3886af13a2dc9190110892f28.lean/declarations/differentiable-clog--eb38f1dc6c232bb8cb8728a7.md) | 121 | `result-track:eb38f1dc6c232bb8cb8728a753ce8971f568d8f998ad48e85dc634f9d2dd7ce0` |
| 21 | `lemma` | [Complex.deriv_log_comp_eq_logDeriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LogDeriv/Variant7a7c358ba10a903bf52fa81d83e08eb637e546f3886af13a2dc9190110892f28.lean/declarations/complex-deriv-log-comp-eq-logderiv--1cc7bb645f8199c9facf0c43.md) | 127 | `result-track:1cc7bb645f8199c9facf0c431620c06f3dccd0e2f6662a317c9e923f8c6a1f7e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
