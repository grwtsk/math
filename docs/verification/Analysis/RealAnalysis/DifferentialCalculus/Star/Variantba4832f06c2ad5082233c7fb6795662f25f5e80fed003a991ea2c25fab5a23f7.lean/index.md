# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Star.Variantba4832f06c2ad5082233c7fb6795662f25f5e80fed003a991ea2c25fab5a23f7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3a31e2268a74fb306ba1f49bb6fbd107203b1c1e",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Star/Variantba4832f06c2ad5082233c7fb6795662f25f5e80fed003a991ea2c25fab5a23f7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Star/Variantba4832f06c2ad5082233c7fb6795662f25f5e80fed003a991ea2c25fab5a23f7.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Star/Variantba4832f06c2ad5082233c7fb6795662f25f5e80fed003a991ea2c25fab5a23f7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3a31e2268a74fb306ba1f49bb6fbd107203b1c1e`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Star/Variantba4832f06c2ad5082233c7fb6795662f25f5e80fed003a991ea2c25fab5a23f7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Star/Variantba4832f06c2ad5082233c7fb6795662f25f5e80fed003a991ea2c25fab5a23f7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.Deriv.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.FDeriv.Star` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [HasDerivAtFilter.star](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Star/Variantba4832f06c2ad5082233c7fb6795662f25f5e80fed003a991ea2c25fab5a23f7.lean/declarations/hasderivatfilter-star--1adccadc39ea8a25b412ffb1.md) | 37 | `result-track:1adccadc39ea8a25b412ffb1a78c4c2788bc8f4450055584a4b86221009a86f8` |
| 2 | `theorem` | [HasDerivWithinAt.star](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Star/Variantba4832f06c2ad5082233c7fb6795662f25f5e80fed003a991ea2c25fab5a23f7.lean/declarations/hasderivwithinat-star--269cd33a47ac566640d10c1e.md) | 41 | `result-track:269cd33a47ac566640d10c1ee0093cd9719f837997ca83969066e63fc8f40852` |
| 3 | `theorem` | [HasDerivAt.star](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Star/Variantba4832f06c2ad5082233c7fb6795662f25f5e80fed003a991ea2c25fab5a23f7.lean/declarations/hasderivat-star--9a2f4c5c5f7704dbba9421be.md) | 45 | `result-track:9a2f4c5c5f7704dbba9421beffb7f037175319632161ff889f1513b570973877` |
| 4 | `theorem` | [HasStrictDerivAt.star](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Star/Variantba4832f06c2ad5082233c7fb6795662f25f5e80fed003a991ea2c25fab5a23f7.lean/declarations/hasstrictderivat-star--31fd36b17e295b22f977d080.md) | 49 | `result-track:31fd36b17e295b22f977d080eafb505ef60f4b34a37e22cef92a8c799d88a868` |
| 5 | `theorem` | [derivWithin.star](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Star/Variantba4832f06c2ad5082233c7fb6795662f25f5e80fed003a991ea2c25fab5a23f7.lean/declarations/derivwithin-star--7f060caacd615c339dff8d1b.md) | 52 | `result-track:7f060caacd615c339dff8d1b2545096392175763e942f852cd9590f4a6268812` |
| 6 | `theorem` | [deriv.star](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Star/Variantba4832f06c2ad5082233c7fb6795662f25f5e80fed003a991ea2c25fab5a23f7.lean/declarations/deriv-star--0f68dd5fc6343cb2cfd2bc5e.md) | 58 | `result-track:0f68dd5fc6343cb2cfd2bc5efea3f4016bc2c7b2780f5c09b1f5bccaf0e0015d` |
| 7 | `theorem` | [deriv.star'](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Star/Variantba4832f06c2ad5082233c7fb6795662f25f5e80fed003a991ea2c25fab5a23f7.lean/declarations/deriv-star--f3b4627decb8081ae5917e76.md) | 62 | `result-track:f3b4627decb8081ae5917e7660a3626b8e3d0552daf044245e3b51f2942712be` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
