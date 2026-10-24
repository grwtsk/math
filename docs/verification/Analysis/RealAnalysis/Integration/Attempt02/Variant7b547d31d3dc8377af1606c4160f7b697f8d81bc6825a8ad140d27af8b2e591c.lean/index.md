# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.Attempt02.Variant7b547d31d3dc8377af1606c4160f7b697f8d81bc6825a8ad140d27af8b2e591c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4e0d0d185dab22e2f5bc5d0e8be8214f94e1e341",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/Attempt02/Variant7b547d31d3dc8377af1606c4160f7b697f8d81bc6825a8ad140d27af8b2e591c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt02/Variant7b547d31d3dc8377af1606c4160f7b697f8d81bc6825a8ad140d27af8b2e591c.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt02/Variant7b547d31d3dc8377af1606c4160f7b697f8d81bc6825a8ad140d27af8b2e591c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4e0d0d185dab22e2f5bc5d0e8be8214f94e1e341`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/Attempt02/Variant7b547d31d3dc8377af1606c4160f7b697f8d81bc6825a8ad140d27af8b2e591c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/Attempt02/Variant7b547d31d3dc8377af1606c4160f7b697f8d81bc6825a8ad140d27af8b2e591c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.XiToeplitz` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.ZeroSymmetry` — import line 2; external provider; requires a separately pinned dependency.
- `Zeta23.FromPNTPlus.ZetaBounds` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.Floor` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [fractionalWeight](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt02/Variant7b547d31d3dc8377af1606c4160f7b697f8d81bc6825a8ad140d27af8b2e591c.lean/declarations/fractionalweight--b72841ad6f580f7369fa6ad5.md) | 17 | `declaration-track:b72841ad6f580f7369fa6ad5ff321dfbb92ae942b1c92e2033d3007fba7e910f` |
| 2 | `theorem` | [fractionalWeight_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt02/Variant7b547d31d3dc8377af1606c4160f7b697f8d81bc6825a8ad140d27af8b2e591c.lean/declarations/fractionalweight-integrable--fa007ff89c8ad0a1a3b9cec6.md) | 19 | `result-track:fa007ff89c8ad0a1a3b9cec61e5a1d82aa9832c672e26941f6515eb0d502d1d4` |
| 3 | `theorem` | [fractionalWeight_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt02/Variant7b547d31d3dc8377af1606c4160f7b697f8d81bc6825a8ad140d27af8b2e591c.lean/declarations/fractionalweight-nonneg--0e22c897d8a23b48a1f63111.md) | 28 | `result-track:0e22c897d8a23b48a1f63111ff5367d31d78b93a6231746abba841ee8545ca1e` |
| 4 | `theorem` | [real_centered_euler_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt02/Variant7b547d31d3dc8377af1606c4160f7b697f8d81bc6825a8ad140d27af8b2e591c.lean/declarations/real-centered-euler-integral--c87ccf51b92b4f916d2b505b.md) | 32 | `result-track:c87ccf51b92b4f916d2b505bccd25a3bc43592669398144cf19f5e0b5d053394` |
| 5 | `theorem` | [riemannZeta_real_euler](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt02/Variant7b547d31d3dc8377af1606c4160f7b697f8d81bc6825a8ad140d27af8b2e591c.lean/declarations/riemannzeta-real-euler--13b2130e8633ae3efa21dc3f.md) | 47 | `result-track:13b2130e8633ae3efa21dc3f63438cd2dc2671d8f914327cb843041ecb3998a0` |
| 6 | `theorem` | [riemannZeta_ofReal_neg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt02/Variant7b547d31d3dc8377af1606c4160f7b697f8d81bc6825a8ad140d27af8b2e591c.lean/declarations/riemannzeta-ofreal-neg--fee4da8e597eebba64f2c1fb.md) | 77 | `result-track:fee4da8e597eebba64f2c1fb83771ea9f57b79752e1c9cf26a74db68311eba98` |
| 7 | `theorem` | [nontrivial_zero_im_ne_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt02/Variant7b547d31d3dc8377af1606c4160f7b697f8d81bc6825a8ad140d27af8b2e591c.lean/declarations/nontrivial-zero-im-ne-zero--fd0febd42e09c7fe7b50c5c5.md) | 87 | `result-track:fd0febd42e09c7fe7b50c5c58397039726b4614eed29b3eaf1072b4e4afb5474` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
