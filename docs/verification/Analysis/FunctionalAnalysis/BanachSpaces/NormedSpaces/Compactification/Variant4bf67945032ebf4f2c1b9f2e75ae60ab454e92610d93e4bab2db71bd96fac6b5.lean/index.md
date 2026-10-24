# Verification target: GRWTSK.Analysis.FunctionalAnalysis.BanachSpaces.NormedSpaces.Compactification.Variant4bf67945032ebf4f2c1b9f2e75ae60ab454e92610d93e4bab2db71bd96fac6b5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fa9fe043e52110bc2afb9e8b9b95ac3a89475427",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Compactification/Variant4bf67945032ebf4f2c1b9f2e75ae60ab454e92610d93e4bab2db71bd96fac6b5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Compactification/Variant4bf67945032ebf4f2c1b9f2e75ae60ab454e92610d93e4bab2db71bd96fac6b5.lean/index.md) · [Full source](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Compactification/Variant4bf67945032ebf4f2c1b9f2e75ae60ab454e92610d93e4bab2db71bd96fac6b5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fa9fe043e52110bc2afb9e8b9b95ac3a89475427`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Compactification/Variant4bf67945032ebf4f2c1b9f2e75ae60ab454e92610d93e4bab2db71bd96fac6b5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Compactification/Variant4bf67945032ebf4f2c1b9f2e75ae60ab454e92610d93e4bab2db71bd96fac6b5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.AbelReynolds.Symmetry` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Module.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Operator.LinearIsometry` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [stereographicCompactify](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Compactification/Variant4bf67945032ebf4f2c1b9f2e75ae60ab454e92610d93e4bab2db71bd96fac6b5.lean/declarations/stereographiccompactify--5a93049f878efb12c98dc042.md) | 23 | `declaration-track:5a93049f878efb12c98dc04294d4d389793f0213dc142c8b3d6a568ae579bc6a` |
| 2 | `def` | [liftCompactifiedSymmetry](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Compactification/Variant4bf67945032ebf4f2c1b9f2e75ae60ab454e92610d93e4bab2db71bd96fac6b5.lean/declarations/liftcompactifiedsymmetry--b1006e70266406224bce6011.md) | 32 | `declaration-track:b1006e70266406224bce601197b807df25b5bf708036bc9574afe7b8ebc3973d` |
| 3 | `theorem` | [stereographicCompactify_equivariant](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Compactification/Variant4bf67945032ebf4f2c1b9f2e75ae60ab454e92610d93e4bab2db71bd96fac6b5.lean/declarations/stereographiccompactify-equivariant--fd9488715a6242faa16ad7c1.md) | 40 | `result-track:fd9488715a6242faa16ad7c1a83755c13cba9530d60110d233ca2b7e85823aaa` |
| 4 | `structure` | [CompactificationCertificate](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Compactification/Variant4bf67945032ebf4f2c1b9f2e75ae60ab454e92610d93e4bab2db71bd96fac6b5.lean/declarations/compactificationcertificate--bdf39cac85952777b2c27a7c.md) | 53 | `declaration-track:bdf39cac85952777b2c27a7c1fe0ebde6dec1d2d50038d9c3ebebfd70c3fccd4` |
| 5 | `theorem` | [CompactificationCertificate.reflectsFixedness](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Compactification/Variant4bf67945032ebf4f2c1b9f2e75ae60ab454e92610d93e4bab2db71bd96fac6b5.lean/declarations/compactificationcertificate-reflectsfixedness--1bcab3c02d7d0e9a211e63dc.md) | 64 | `result-track:1bcab3c02d7d0e9a211e63dc96f78dd79b59e8ffe7812e7634fa9b4d1fb21525` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
