# Verification target: GRWTSK.Analysis.FunctionalAnalysis.FixedPointAuthority.Variant112661c348a78f6db6f5f9251bc983b25b30ab9a9abdf2d0e61e8eaf2a04dbd9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "23b9bc53368338245d157a1034b08ad99cbd4946",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/FixedPointAuthority/Variant112661c348a78f6db6f5f9251bc983b25b30ab9a9abdf2d0e61e8eaf2a04dbd9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/FixedPointAuthority/Variant112661c348a78f6db6f5f9251bc983b25b30ab9a9abdf2d0e61e8eaf2a04dbd9.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/FixedPointAuthority/Variant112661c348a78f6db6f5f9251bc983b25b30ab9a9abdf2d0e61e8eaf2a04dbd9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `23b9bc53368338245d157a1034b08ad99cbd4946`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/FixedPointAuthority/Variant112661c348a78f6db6f5f9251bc983b25b30ab9a9abdf2d0e61e8eaf2a04dbd9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/FixedPointAuthority/Variant112661c348a78f6db6f5f9251bc983b25b30ab9a9abdf2d0e61e8eaf2a04dbd9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.FixedPoints` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.MetricSpace.Contracting` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [banach_unique](../../../../../mathematics/Analysis/FunctionalAnalysis/FixedPointAuthority/Variant112661c348a78f6db6f5f9251bc983b25b30ab9a9abdf2d0e61e8eaf2a04dbd9.lean/declarations/banach-unique--9a0ae6e06ff789ec094afedc.md) | 37 | `result-track:9a0ae6e06ff789ec094afedc235ad98083d9e7e035aeb48b5d70d94d9f8c5d6a` |
| 2 | `abbrev` | [banachPoint](../../../../../mathematics/Analysis/FunctionalAnalysis/FixedPointAuthority/Variant112661c348a78f6db6f5f9251bc983b25b30ab9a9abdf2d0e61e8eaf2a04dbd9.lean/declarations/banachpoint--6e0875804456127693ae8c3f.md) | 49 | `declaration-track:6e0875804456127693ae8c3fb08477562486c342afa7d045fe4438af72eda828` |
| 3 | `theorem` | [banach_exists](../../../../../mathematics/Analysis/FunctionalAnalysis/FixedPointAuthority/Variant112661c348a78f6db6f5f9251bc983b25b30ab9a9abdf2d0e61e8eaf2a04dbd9.lean/declarations/banach-exists--44e0b4976490ff68628a6e12.md) | 53 | `result-track:44e0b4976490ff68628a6e122abeb8d89f6513203616bc94d017a91b15122d0f` |
| 4 | `theorem` | [banach_fixed](../../../../../mathematics/Analysis/FunctionalAnalysis/FixedPointAuthority/Variant112661c348a78f6db6f5f9251bc983b25b30ab9a9abdf2d0e61e8eaf2a04dbd9.lean/declarations/banach-fixed--ed4ad66f8063528d8f9b0a4c.md) | 57 | `result-track:ed4ad66f8063528d8f9b0a4c7aa1ef4dab027811ddf1706407e487672592740b` |
| 5 | `theorem` | [banach_iteration](../../../../../mathematics/Analysis/FunctionalAnalysis/FixedPointAuthority/Variant112661c348a78f6db6f5f9251bc983b25b30ab9a9abdf2d0e61e8eaf2a04dbd9.lean/declarations/banach-iteration--2d33651fde6771f10f81ef4a.md) | 61 | `result-track:2d33651fde6771f10f81ef4a725d617406f8bc15810f49aea2ed20f99ee76405` |
| 6 | `abbrev` | [knasterTarskiFixedPointLattice](../../../../../mathematics/Analysis/FunctionalAnalysis/FixedPointAuthority/Variant112661c348a78f6db6f5f9251bc983b25b30ab9a9abdf2d0e61e8eaf2a04dbd9.lean/declarations/knastertarskifixedpointlattice--7bc68950206e7a8c2bc11032.md) | 73 | `declaration-track:7bc68950206e7a8c2bc11032c3f2f6f406265f82315fe0342833c911c73b37a3` |
| 7 | `theorem` | [knasterTarski_least_fixed](../../../../../mathematics/Analysis/FunctionalAnalysis/FixedPointAuthority/Variant112661c348a78f6db6f5f9251bc983b25b30ab9a9abdf2d0e61e8eaf2a04dbd9.lean/declarations/knastertarski-least-fixed--711dd5492922e116d9c9e289.md) | 78 | `result-track:711dd5492922e116d9c9e2890ca3b1dc166f2b97cbe9b3df7f71c5f26a2503b2` |
| 8 | `theorem` | [knasterTarski_greatest_fixed](../../../../../mathematics/Analysis/FunctionalAnalysis/FixedPointAuthority/Variant112661c348a78f6db6f5f9251bc983b25b30ab9a9abdf2d0e61e8eaf2a04dbd9.lean/declarations/knastertarski-greatest-fixed--7d602ec66a34f7efa7f2f8d8.md) | 82 | `result-track:7d602ec66a34f7efa7f2f8d84cbb01d350bd1d577880e08b62b23051bd65813e` |
| 9 | `theorem` | [knasterTarski_least](../../../../../mathematics/Analysis/FunctionalAnalysis/FixedPointAuthority/Variant112661c348a78f6db6f5f9251bc983b25b30ab9a9abdf2d0e61e8eaf2a04dbd9.lean/declarations/knastertarski-least--32013c92dc064f7b1d2d4e47.md) | 86 | `result-track:32013c92dc064f7b1d2d4e47b75ef962121412eabe5b951b1f5c8b972e9a1b84` |
| 10 | `theorem` | [knasterTarski_greatest](../../../../../mathematics/Analysis/FunctionalAnalysis/FixedPointAuthority/Variant112661c348a78f6db6f5f9251bc983b25b30ab9a9abdf2d0e61e8eaf2a04dbd9.lean/declarations/knastertarski-greatest--bac887defcc5266d559f2d9c.md) | 90 | `result-track:bac887defcc5266d559f2d9c4108a4f8fb47cc4f80d3b624a6f21d140730c563` |
| 11 | `theorem` | [kleene_completeLattice_iteration](../../../../../mathematics/Analysis/FunctionalAnalysis/FixedPointAuthority/Variant112661c348a78f6db6f5f9251bc983b25b30ab9a9abdf2d0e61e8eaf2a04dbd9.lean/declarations/kleene-completelattice-iteration--600bb2977b5b2847f76b56d7.md) | 96 | `result-track:600bb2977b5b2847f76b56d747ed7ffc71960237ea52984cb3f0d4b2f22f887f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
