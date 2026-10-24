# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Pi.Variant6fc5aba7f34f91683658b18498575c0f2390b3aa413aa0abcdf3c235ba923d85

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "724d28b82fd607397d88facb63961b40359dc4c1",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Pi/Variant6fc5aba7f34f91683658b18498575c0f2390b3aa413aa0abcdf3c235ba923d85.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Pi/Variant6fc5aba7f34f91683658b18498575c0f2390b3aa413aa0abcdf3c235ba923d85.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Pi/Variant6fc5aba7f34f91683658b18498575c0f2390b3aa413aa0abcdf3c235ba923d85.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `724d28b82fd607397d88facb63961b40359dc4c1`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Pi/Variant6fc5aba7f34f91683658b18498575c0f2390b3aa413aa0abcdf3c235ba923d85.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Pi/Variant6fc5aba7f34f91683658b18498575c0f2390b3aa413aa0abcdf3c235ba923d85.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.FDeriv.Pi` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [hasDerivAt_update](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Pi/Variant6fc5aba7f34f91683658b18498575c0f2390b3aa413aa0abcdf3c235ba923d85.lean/declarations/hasderivat-update--d9fad6d9b7d0ca05d7ed72ba.md) | 23 | `result-track:d9fad6d9b7d0ca05d7ed72ba9e839ab727e963bd21f799db07e2d914493630be` |
| 2 | `theorem` | [hasDerivAt_single](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Pi/Variant6fc5aba7f34f91683658b18498575c0f2390b3aa413aa0abcdf3c235ba923d85.lean/declarations/hasderivat-single--7be4b9f9c83710bcaee128d4.md) | 32 | `result-track:7be4b9f9c83710bcaee128d4893ff02a6438aa9a043dd51760348be5b2199cff` |
| 3 | `theorem` | [deriv_update](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Pi/Variant6fc5aba7f34f91683658b18498575c0f2390b3aa413aa0abcdf3c235ba923d85.lean/declarations/deriv-update--a57af9922d5b5bc19ced2f12.md) | 36 | `result-track:a57af9922d5b5bc19ced2f12bed4fb9722234ed8fbdd5182caf932d0012dfe99` |
| 4 | `theorem` | [deriv_single](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Pi/Variant6fc5aba7f34f91683658b18498575c0f2390b3aa413aa0abcdf3c235ba923d85.lean/declarations/deriv-single--f47d3bbc9413c8a5e2a8997d.md) | 40 | `result-track:f47d3bbc9413c8a5e2a8997dc828aa2ff2b28fb4bfe230f927474c59952e65d9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
