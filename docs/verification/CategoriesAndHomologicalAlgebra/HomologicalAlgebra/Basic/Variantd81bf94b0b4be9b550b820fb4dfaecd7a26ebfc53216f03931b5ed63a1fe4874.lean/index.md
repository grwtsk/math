# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.HomologicalAlgebra.Basic.Variantd81bf94b0b4be9b550b820fb4dfaecd7a26ebfc53216f03931b5ed63a1fe4874

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "752787cd3e067cb7f17daf08ce13ffefa17733c8",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Basic/Variantd81bf94b0b4be9b550b820fb4dfaecd7a26ebfc53216f03931b5ed63a1fe4874.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Basic/Variantd81bf94b0b4be9b550b820fb4dfaecd7a26ebfc53216f03931b5ed63a1fe4874.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Basic/Variantd81bf94b0b4be9b550b820fb4dfaecd7a26ebfc53216f03931b5ed63a1fe4874.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `752787cd3e067cb7f17daf08ce13ffefa17733c8`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Basic/Variantd81bf94b0b4be9b550b820fb4dfaecd7a26ebfc53216f03931b5ed63a1fe4874.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Basic/Variantd81bf94b0b4be9b550b820fb4dfaecd7a26ebfc53216f03931b5ed63a1fe4874.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Homology.Opposite` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Homology.ShortComplex.HomologicalComplex` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RepresentationTheory.GroupCohomology.Resolution` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [linearYonedaObjResolution](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Basic/Variantd81bf94b0b4be9b550b820fb4dfaecd7a26ebfc53216f03931b5ed63a1fe4874.lean/declarations/linearyonedaobjresolution--ea5d1d1ef306b991bf71a350.md) | 93 | `declaration-track:ea5d1d1ef306b991bf71a3502bf4823e46f5d05fbd8b73d2e6e7d46775a8fc62` |
| 2 | `theorem` | [linearYonedaObjResolution_d_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Basic/Variantd81bf94b0b4be9b550b820fb4dfaecd7a26ebfc53216f03931b5ed63a1fe4874.lean/declarations/linearyonedaobjresolution-d-apply--9018cd83294d184b119b1d56.md) | 96 | `result-track:9018cd83294d184b119b1d5644c13c5da3168f9b5945dda3d5b6c846dc5fb636` |
| 3 | `def` | [d](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Basic/Variantd81bf94b0b4be9b550b820fb4dfaecd7a26ebfc53216f03931b5ed63a1fe4874.lean/declarations/d--fa15a7eea4258d225d2cef1b.md) | 109 | `declaration-track:fa15a7eea4258d225d2cef1b524787211992a2337cdde4def1581f7fd867d0e2` |
| 4 | `theorem` | [d_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Basic/Variantd81bf94b0b4be9b550b820fb4dfaecd7a26ebfc53216f03931b5ed63a1fe4874.lean/declarations/d-eq--d206ee7dfaaab252577fd024.md) | 129 | `result-track:d206ee7dfaaab252577fd024a40b4e92f03be1c6d95230011bddd2e580ea9c4c` |
| 5 | `abbrev` | [inhomogeneousCochains](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Basic/Variantd81bf94b0b4be9b550b820fb4dfaecd7a26ebfc53216f03931b5ed63a1fe4874.lean/declarations/inhomogeneouscochains--adc3401c1a206f5887759878.md) | 182 | `declaration-track:adc3401c1a206f58877598782e527426046a225703e4c14bc817e78e5ca712c0` |
| 6 | `theorem` | [inhomogeneousCochains.d_def](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Basic/Variantd81bf94b0b4be9b550b820fb4dfaecd7a26ebfc53216f03931b5ed63a1fe4874.lean/declarations/inhomogeneouscochains-d-def--23814869e0b4b78969a6e60f.md) | 209 | `result-track:23814869e0b4b78969a6e60fd24eed697b8e75cd3637f7ab9b0c6dd30d7c6100` |
| 7 | `def` | [inhomogeneousCochainsIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Basic/Variantd81bf94b0b4be9b550b820fb4dfaecd7a26ebfc53216f03931b5ed63a1fe4874.lean/declarations/inhomogeneouscochainsiso--717e16314db2e19010204e83.md) | 215 | `declaration-track:717e16314db2e19010204e8314d91b742d3c7b31c774ba96a100ded740377e02` |
| 8 | `abbrev` | [cocycles](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Basic/Variantd81bf94b0b4be9b550b820fb4dfaecd7a26ebfc53216f03931b5ed63a1fe4874.lean/declarations/cocycles--c4bdc0802a8e3a5e7032c03f.md) | 232 | `declaration-track:c4bdc0802a8e3a5e7032c03fc66e13704a1c5b7f279f4b06a63931df812bec4f` |
| 9 | `abbrev` | [iCocycles](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Basic/Variantd81bf94b0b4be9b550b820fb4dfaecd7a26ebfc53216f03931b5ed63a1fe4874.lean/declarations/icocycles--1889fdef6eb29c26b35145dd.md) | 235 | `declaration-track:1889fdef6eb29c26b35145dde136a5540949f06f37ff75a55d217f3dff3b65a0` |
| 10 | `abbrev` | [toCocycles](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Basic/Variantd81bf94b0b4be9b550b820fb4dfaecd7a26ebfc53216f03931b5ed63a1fe4874.lean/declarations/tococycles--0a688cfcd00e2b6f3fb03b90.md) | 240 | `declaration-track:0a688cfcd00e2b6f3fb03b90c82f560229712d7d43790b1fd0926e4641cc8b6d` |
| 11 | `def` | [groupCohomology](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Basic/Variantd81bf94b0b4be9b550b820fb4dfaecd7a26ebfc53216f03931b5ed63a1fe4874.lean/declarations/groupcohomology--229126e880ac2d7d87cf09aa.md) | 249 | `declaration-track:229126e880ac2d7d87cf09aaa72a98681ff6e61f3074ee9335b0b1f227157f8a` |
| 12 | `abbrev` | [groupCohomologyπ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Basic/Variantd81bf94b0b4be9b550b820fb4dfaecd7a26ebfc53216f03931b5ed63a1fe4874.lean/declarations/groupcohomology--547af3edb0506cdfb53b041a.md) | 254 | `declaration-track:547af3edb0506cdfb53b041aaed9af7128cb6fc83995eae5f87ddd032400e46e` |
| 13 | `def` | [groupCohomologyIsoExt](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Basic/Variantd81bf94b0b4be9b550b820fb4dfaecd7a26ebfc53216f03931b5ed63a1fe4874.lean/declarations/groupcohomologyisoext--6ba35ee37491bd1b7a526cb3.md) | 260 | `declaration-track:6ba35ee37491bd1b7a526cb3623ace36f9a5d79bfb76a0c7d7a63087cb64ee6e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
