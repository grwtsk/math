# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.NormedSpace.Variant02ba59e667617f7d44537c1b7785233779c85de4e5cb584e04f88be44aa6ad1c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6d4332bba81ee39d7882fd85695309f3cc944722",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/NormedSpace/Variant02ba59e667617f7d44537c1b7785233779c85de4e5cb584e04f88be44aa6ad1c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/NormedSpace/Variant02ba59e667617f7d44537c1b7785233779c85de4e5cb584e04f88be44aa6ad1c.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/NormedSpace/Variant02ba59e667617f7d44537c1b7785233779c85de4e5cb584e04f88be44aa6ad1c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6d4332bba81ee39d7882fd85695309f3cc944722`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/NormedSpace/Variant02ba59e667617f7d44537c1b7785233779c85de4e5cb584e04f88be44aa6ad1c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/NormedSpace/Variant02ba59e667617f7d44537c1b7785233779c85de4e5cb584e04f88be44aa6ad1c.lean.json)

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
| 1 | `def` | [ConformalAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/NormedSpace/Variant02ba59e667617f7d44537c1b7785233779c85de4e5cb584e04f88be44aa6ad1c.lean/declarations/conformalat--a10ee5661fdb4b689f4cdc7d.md) | 66 | `declaration-track:a10ee5661fdb4b689f4cdc7dd13a8b8076b74a8d2cec6cf32ed1db6eb2413e15` |
| 2 | `theorem` | [conformalAt_id](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/NormedSpace/Variant02ba59e667617f7d44537c1b7785233779c85de4e5cb584e04f88be44aa6ad1c.lean/declarations/conformalat-id--e3f68ca11b0988697df14d7f.md) | 69 | `result-track:e3f68ca11b0988697df14d7f510601609420fb4199c6e8533bdab6ed74234d83` |
| 3 | `theorem` | [conformalAt_const_smul](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/NormedSpace/Variant02ba59e667617f7d44537c1b7785233779c85de4e5cb584e04f88be44aa6ad1c.lean/declarations/conformalat-const-smul--4ec8105a76a77001b777f3e2.md) | 72 | `result-track:4ec8105a76a77001b777f3e2acc3659f38ed8e7b66ba1adb252e39bb8fd20e6b` |
| 4 | `theorem` | [Subsingleton.conformalAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/NormedSpace/Variant02ba59e667617f7d44537c1b7785233779c85de4e5cb584e04f88be44aa6ad1c.lean/declarations/subsingleton-conformalat--cff5a10d4d334656ae87fb11.md) | 76 | `result-track:cff5a10d4d334656ae87fb110c59ffb82dacc17050913bf4dea940385676876d` |
| 5 | `theorem` | [conformalAt_iff_isConformalMap_fderiv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/NormedSpace/Variant02ba59e667617f7d44537c1b7785233779c85de4e5cb584e04f88be44aa6ad1c.lean/declarations/conformalat-iff-isconformalmap-fderiv--f53db71cda2e942e00179632.md) | 80 | `result-track:f53db71cda2e942e00179632bea64d3c2812bf508d9e84167652fe67511ef546` |
| 6 | `theorem` | [differentiableAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/NormedSpace/Variant02ba59e667617f7d44537c1b7785233779c85de4e5cb584e04f88be44aa6ad1c.lean/declarations/differentiableat--6b3a1af2053d3732eb5e95ad.md) | 93 | `result-track:6b3a1af2053d3732eb5e95ad0555b08bea0b260fcee39415511aae4cf180f356` |
| 7 | `theorem` | [congr](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/NormedSpace/Variant02ba59e667617f7d44537c1b7785233779c85de4e5cb584e04f88be44aa6ad1c.lean/declarations/congr--f78b88e31a71f6b7a9965e99.md) | 97 | `result-track:f78b88e31a71f6b7a9965e99ffa1a0c6b21372d883725b114faa79c53ac4c23e` |
| 8 | `theorem` | [comp](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/NormedSpace/Variant02ba59e667617f7d44537c1b7785233779c85de4e5cb584e04f88be44aa6ad1c.lean/declarations/comp--6b5a01f95ed21d1800d48cd5.md) | 102 | `result-track:6b5a01f95ed21d1800d48cd58cff88b4ef9105ae83c6860043b89d806a457d8a` |
| 9 | `theorem` | [const_smul](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/NormedSpace/Variant02ba59e667617f7d44537c1b7785233779c85de4e5cb584e04f88be44aa6ad1c.lean/declarations/const-smul--d114455096c7265d23c8d658.md) | 108 | `result-track:d114455096c7265d23c8d6580556e8236c2dbba66698f6d42fe632cd5e16e7c0` |
| 10 | `def` | [Conformal](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/NormedSpace/Variant02ba59e667617f7d44537c1b7785233779c85de4e5cb584e04f88be44aa6ad1c.lean/declarations/conformal--df7b5fee2bc5a7233f8ce4ba.md) | 119 | `declaration-track:df7b5fee2bc5a7233f8ce4ba9673f658a19f30b03150b702dd489cec6a5d1f06` |
| 11 | `theorem` | [conformal_id](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/NormedSpace/Variant02ba59e667617f7d44537c1b7785233779c85de4e5cb584e04f88be44aa6ad1c.lean/declarations/conformal-id--2a21bf9f47572059b3bb420a.md) | 122 | `result-track:2a21bf9f47572059b3bb420a6a92385c7eab24bf67094b3a26c04bcf21cf25be` |
| 12 | `theorem` | [conformal_const_smul](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/NormedSpace/Variant02ba59e667617f7d44537c1b7785233779c85de4e5cb584e04f88be44aa6ad1c.lean/declarations/conformal-const-smul--aef5cca7bb4f932b9e034d25.md) | 124 | `result-track:aef5cca7bb4f932b9e034d2548f43e185daf4ebff51ecb22e1d18ad88e2fb573` |
| 13 | `theorem` | [conformalAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/NormedSpace/Variant02ba59e667617f7d44537c1b7785233779c85de4e5cb584e04f88be44aa6ad1c.lean/declarations/conformalat--0b94af5229788fc690c99b9b.md) | 129 | `result-track:0b94af5229788fc690c99b9bf9862b254219b1397d0201855c9223c54e2b69c3` |
| 14 | `theorem` | [differentiable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/NormedSpace/Variant02ba59e667617f7d44537c1b7785233779c85de4e5cb584e04f88be44aa6ad1c.lean/declarations/differentiable--41fcfab245673de56cb64e80.md) | 132 | `result-track:41fcfab245673de56cb64e800322aae91dc5543d4f9493ca615981ee0a6c6739` |
| 15 | `theorem` | [comp](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/NormedSpace/Variant02ba59e667617f7d44537c1b7785233779c85de4e5cb584e04f88be44aa6ad1c.lean/declarations/comp--c048a7f0d56576cbf41a431a.md) | 135 | `result-track:c048a7f0d56576cbf41a431a39bf3aff8c46479625b62a62198253c7185fc953` |
| 16 | `theorem` | [const_smul](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/NormedSpace/Variant02ba59e667617f7d44537c1b7785233779c85de4e5cb584e04f88be44aa6ad1c.lean/declarations/const-smul--a41cd875f97f03b90b6cdb6a.md) | 138 | `result-track:a41cd875f97f03b90b6cdb6a1868a42d396d3efa21600a1b026b3d439c69f96a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
