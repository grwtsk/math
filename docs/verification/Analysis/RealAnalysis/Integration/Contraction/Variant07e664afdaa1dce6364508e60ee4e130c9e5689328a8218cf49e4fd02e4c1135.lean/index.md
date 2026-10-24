# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.Contraction.Variant07e664afdaa1dce6364508e60ee4e130c9e5689328a8218cf49e4fd02e4c1135

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "019b25eb2a23fa45b10b92818cfc990dce615018",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/Contraction/Variant07e664afdaa1dce6364508e60ee4e130c9e5689328a8218cf49e4fd02e4c1135.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Contraction/Variant07e664afdaa1dce6364508e60ee4e130c9e5689328a8218cf49e4fd02e4c1135.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Contraction/Variant07e664afdaa1dce6364508e60ee4e130c9e5689328a8218cf49e4fd02e4c1135.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `019b25eb2a23fa45b10b92818cfc990dce615018`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/Contraction/Variant07e664afdaa1dce6364508e60ee4e130c9e5689328a8218cf49e4fd02e4c1135.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/Contraction/Variant07e664afdaa1dce6364508e60ee4e130c9e5689328a8218cf49e4fd02e4c1135.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.Stability.FixedPoint` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ContractionCertificate](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Contraction/Variant07e664afdaa1dce6364508e60ee4e130c9e5689328a8218cf49e4fd02e4c1135.lean/declarations/contractioncertificate--2bf05d42cacf626a4e81ae8e.md) | 15 | `declaration-track:2bf05d42cacf626a4e81ae8e25d7ea62ddfeeeac2b960d691b201fcb035c607f` |
| 2 | `structure` | [BanachFixedPointObligation](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Contraction/Variant07e664afdaa1dce6364508e60ee4e130c9e5689328a8218cf49e4fd02e4c1135.lean/declarations/banachfixedpointobligation--3881d4ecf0ad79358452eb87.md) | 25 | `declaration-track:3881d4ecf0ad79358452eb87fcd82251d5cbced41438d9c999b9f87647ff7e61` |
| 3 | `theorem` | [certified_integral_traversal_obeys_affine_bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Contraction/Variant07e664afdaa1dce6364508e60ee4e130c9e5689328a8218cf49e4fd02e4c1135.lean/declarations/certified-integral-traversal-obeys-affine-bound--a13afc6dcdfe2043e2336413.md) | 37 | `result-track:a13afc6dcdfe2043e2336413290d7b0cd0afcd9ae2088d366afa48c2120da725` |
| 4 | `theorem` | [exact_zero_gain_converges_after_one_step](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Contraction/Variant07e664afdaa1dce6364508e60ee4e130c9e5689328a8218cf49e4fd02e4c1135.lean/declarations/exact-zero-gain-converges-after-one-step--2ae2a2fd538d95121bd268c2.md) | 56 | `result-track:2ae2a2fd538d95121bd268c28c5bc90cd2ea9cf9bc34cd313aa62a726bad56f3` |
| 5 | `structure` | [ResidualFloorObligation](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Contraction/Variant07e664afdaa1dce6364508e60ee4e130c9e5689328a8218cf49e4fd02e4c1135.lean/declarations/residualfloorobligation--09cb33c5b7449f56506b6a9a.md) | 64 | `declaration-track:09cb33c5b7449f56506b6a9ae070b8ce845deebb305e7beee1638212aaac5831` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
