# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.Attempt06.Variant15ab2737a853bb59a4fac0363fbed5c319a741bb6025adfe3570c3e6b8eb0467

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6fde02fe4028ae9f37bce1bdca21fe0c2b827d97",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/Attempt06/Variant15ab2737a853bb59a4fac0363fbed5c319a741bb6025adfe3570c3e6b8eb0467.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt06/Variant15ab2737a853bb59a4fac0363fbed5c319a741bb6025adfe3570c3e6b8eb0467.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt06/Variant15ab2737a853bb59a4fac0363fbed5c319a741bb6025adfe3570c3e6b8eb0467.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6fde02fe4028ae9f37bce1bdca21fe0c2b827d97`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/Attempt06/Variant15ab2737a853bb59a4fac0363fbed5c319a741bb6025adfe3570c3e6b8eb0467.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/Attempt06/Variant15ab2737a853bb59a4fac0363fbed5c319a741bb6025adfe3570c3e6b8eb0467.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `ActualMomentDictionary` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.RealDeriv` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [normalizedTransform](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt06/Variant15ab2737a853bb59a4fac0363fbed5c319a741bb6025adfe3570c3e6b8eb0467.lean/declarations/normalizedtransform--14d04ff67f6ce572c09a2081.md) | 25 | `declaration-track:14d04ff67f6ce572c09a2081741c9b771419da2f35d055099737a9115b5aba53` |
| 2 | `def` | [boundaryTransform](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt06/Variant15ab2737a853bb59a4fac0363fbed5c319a741bb6025adfe3570c3e6b8eb0467.lean/declarations/boundarytransform--e23ebe758625a5cdf6ac632c.md) | 30 | `declaration-track:e23ebe758625a5cdf6ac632c4c0901589ae945afa361d86588179f6f20e0df9f` |
| 3 | `theorem` | [normalizedTransform_dictionary](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt06/Variant15ab2737a853bb59a4fac0363fbed5c319a741bb6025adfe3570c3e6b8eb0467.lean/declarations/normalizedtransform-dictionary--1ff59db078c69cfc44c2e73a.md) | 33 | `result-track:1ff59db078c69cfc44c2e73aec7f3ae1d7af6752d7c0b08cd5cbbd3ff9642408` |
| 4 | `theorem` | [normalized_integrand_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt06/Variant15ab2737a853bb59a4fac0363fbed5c319a741bb6025adfe3570c3e6b8eb0467.lean/declarations/normalized-integrand-integrable--9b6df1200582b587f3a80296.md) | 43 | `result-track:9b6df1200582b587f3a80296f94a767179622ef1f485fa91b6fc21336a75b63a` |
| 5 | `theorem` | [full_complex_correlation_square](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt06/Variant15ab2737a853bb59a4fac0363fbed5c319a741bb6025adfe3570c3e6b8eb0467.lean/declarations/full-complex-correlation-square--be6c09d984969fdf4f409132.md) | 54 | `result-track:be6c09d984969fdf4f409132541747dcbbd38b346ef237ad8257b36db145e76f` |
| 6 | `theorem` | [interval_complex_correlation_square](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt06/Variant15ab2737a853bb59a4fac0363fbed5c319a741bb6025adfe3570c3e6b8eb0467.lean/declarations/interval-complex-correlation-square--259ac675b1044ae284cfe56c.md) | 84 | `result-track:259ac675b1044ae284cfe56cfc3640df1e4114983bafd3ad19f5bcbb50475920` |
| 7 | `theorem` | [critical_complex_ibp](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt06/Variant15ab2737a853bb59a4fac0363fbed5c319a741bb6025adfe3570c3e6b8eb0467.lean/declarations/critical-complex-ibp--6f638406d9302cbd848e5092.md) | 105 | `result-track:6f638406d9302cbd848e509231917ca190f91e3a93f503971f5a2edaedb08d08` |
| 8 | `theorem` | [boundary_transform_exact](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt06/Variant15ab2737a853bb59a4fac0363fbed5c319a741bb6025adfe3570c3e6b8eb0467.lean/declarations/boundary-transform-exact--6eff705c55b9697f900c19c0.md) | 153 | `result-track:6eff705c55b9697f900c19c0ef89a2dbd2912a78381b5b991326c779981dfead` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
