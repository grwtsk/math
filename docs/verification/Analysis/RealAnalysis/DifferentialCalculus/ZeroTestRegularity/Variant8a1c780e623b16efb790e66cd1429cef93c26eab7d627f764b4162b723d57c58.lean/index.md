# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.ZeroTestRegularity.Variant8a1c780e623b16efb790e66cd1429cef93c26eab7d627f764b4162b723d57c58

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1d0e3168293b21b8c4b65add9302bd486f959a4f",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ZeroTestRegularity/Variant8a1c780e623b16efb790e66cd1429cef93c26eab7d627f764b4162b723d57c58.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ZeroTestRegularity/Variant8a1c780e623b16efb790e66cd1429cef93c26eab7d627f764b4162b723d57c58.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ZeroTestRegularity/Variant8a1c780e623b16efb790e66cd1429cef93c26eab7d627f764b4162b723d57c58.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1d0e3168293b21b8c4b65add9302bd486f959a4f`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ZeroTestRegularity/Variant8a1c780e623b16efb790e66cd1429cef93c26eab7d627f764b4162b723d57c58.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/ZeroTestRegularity/Variant8a1c780e623b16efb790e66cd1429cef93c26eab7d627f764b4162b723d57c58.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.ZeroSideTargets` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [testInterior](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ZeroTestRegularity/Variant8a1c780e623b16efb790e66cd1429cef93c26eab7d627f764b4162b723d57c58.lean/declarations/testinterior--195666f589226989984a1485.md) | 30 | `declaration-track:195666f589226989984a1485f0327667949859727e8dbd4422a7a1c604d29269` |
| 2 | `def` | [testInteriorDerivative](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ZeroTestRegularity/Variant8a1c780e623b16efb790e66cd1429cef93c26eab7d627f764b4162b723d57c58.lean/declarations/testinteriorderivative--5be48646dbe3b31a3539d550.md) | 33 | `declaration-track:5be48646dbe3b31a3539d550d4119751bc6f3c17c3aaf38d6ecc4e05f1956568` |
| 3 | `theorem` | [actualTest_eq_indicator](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ZeroTestRegularity/Variant8a1c780e623b16efb790e66cd1429cef93c26eab7d627f764b4162b723d57c58.lean/declarations/actualtest-eq-indicator--a22a13dbd4c72931d675fd14.md) | 36 | `result-track:a22a13dbd4c72931d675fd14ffd0450851338c00ffd61fae31d7c6eab15ea03d` |
| 4 | `theorem` | [testInterior_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ZeroTestRegularity/Variant8a1c780e623b16efb790e66cd1429cef93c26eab7d627f764b4162b723d57c58.lean/declarations/testinterior-hasderivat--2ce5b19437b5f4d3482bc949.md) | 41 | `result-track:2ce5b19437b5f4d3482bc9493ee68cc349f0515c362c0b3c866f2997e4337e01` |
| 5 | `theorem` | [testInterior_frontier](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ZeroTestRegularity/Variant8a1c780e623b16efb790e66cd1429cef93c26eab7d627f764b4162b723d57c58.lean/declarations/testinterior-frontier--e832ed6ba7cec16e5fce1ab5.md) | 46 | `result-track:e832ed6ba7cec16e5fce1ab5d52f40e943f725e63dc28b5ef6288330ef3eb68f` |
| 6 | `theorem` | [actualTest_contDiff](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ZeroTestRegularity/Variant8a1c780e623b16efb790e66cd1429cef93c26eab7d627f764b4162b723d57c58.lean/declarations/actualtest-contdiff--10ef0ff15e9a21592373a5a3.md) | 59 | `result-track:10ef0ff15e9a21592373a5a39e81c72d56c36797aec849afdf55ed9182eea83b` |
| 7 | `theorem` | [actualTest_zero_of_notMem](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ZeroTestRegularity/Variant8a1c780e623b16efb790e66cd1429cef93c26eab7d627f764b4162b723d57c58.lean/declarations/actualtest-zero-of-notmem--bb5a44fb0e08f000686d6c0a.md) | 74 | `result-track:bb5a44fb0e08f000686d6c0ace43e16cebf20cc8b2d5c58c56ffa24e4424c935` |
| 8 | `theorem` | [actualTest_support_subset](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ZeroTestRegularity/Variant8a1c780e623b16efb790e66cd1429cef93c26eab7d627f764b4162b723d57c58.lean/declarations/actualtest-support-subset--5df32cec53dd1d75f5f5a5e9.md) | 80 | `result-track:5df32cec53dd1d75f5f5a5e9ad882035c77581b5234f25c231323d7662bdd1e2` |
| 9 | `theorem` | [actualTest_hasCompactSupport](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ZeroTestRegularity/Variant8a1c780e623b16efb790e66cd1429cef93c26eab7d627f764b4162b723d57c58.lean/declarations/actualtest-hascompactsupport--1c55b9dae6238a995609c412.md) | 87 | `result-track:1c55b9dae6238a995609c412e80abb55cc50a07f312274243326736ee0742bf5` |
| 10 | `theorem` | [actualTest_even](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ZeroTestRegularity/Variant8a1c780e623b16efb790e66cd1429cef93c26eab7d627f764b4162b723d57c58.lean/declarations/actualtest-even--aeba8592247474b46e707c20.md) | 93 | `result-track:aeba8592247474b46e707c2077ffa41f67fef5b6611ebc1502aab59bbc64a32a` |
| 11 | `theorem` | [actualTest_integrable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ZeroTestRegularity/Variant8a1c780e623b16efb790e66cd1429cef93c26eab7d627f764b4162b723d57c58.lean/declarations/actualtest-integrable--91254f4aec5e11421b9eeee0.md) | 103 | `result-track:91254f4aec5e11421b9eeee0ea1aee75e14888f0117c33e70caf13fd018904fb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
