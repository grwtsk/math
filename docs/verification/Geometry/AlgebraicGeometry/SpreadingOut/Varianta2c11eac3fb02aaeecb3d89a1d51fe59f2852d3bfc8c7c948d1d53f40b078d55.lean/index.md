# Verification target: GRWTSK.Geometry.AlgebraicGeometry.SpreadingOut.Varianta2c11eac3fb02aaeecb3d89a1d51fe59f2852d3bfc8c7c948d1d53f40b078d55

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5ea1da853c6efcb2335716ec01896185c7721e4f",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/AlgebraicGeometry/SpreadingOut/Varianta2c11eac3fb02aaeecb3d89a1d51fe59f2852d3bfc8c7c948d1d53f40b078d55.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Geometry/AlgebraicGeometry/SpreadingOut/Varianta2c11eac3fb02aaeecb3d89a1d51fe59f2852d3bfc8c7c948d1d53f40b078d55.lean/index.md) · [Full source](../../../../../mathematics/Geometry/AlgebraicGeometry/SpreadingOut/Varianta2c11eac3fb02aaeecb3d89a1d51fe59f2852d3bfc8c7c948d1d53f40b078d55.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5ea1da853c6efcb2335716ec01896185c7721e4f`.

Source path: `GRWTSK/Geometry/AlgebraicGeometry/SpreadingOut/Varianta2c11eac3fb02aaeecb3d89a1d51fe59f2852d3bfc8c7c948d1d53f40b078d55.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/AlgebraicGeometry/SpreadingOut/Varianta2c11eac3fb02aaeecb3d89a1d51fe59f2852d3bfc8c7c948d1d53f40b078d55.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.AlgebraicGeometry.Morphisms.FiniteType` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.AlgebraicGeometry.Noetherian` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.AlgebraicGeometry.Stalk` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.AlgebraicGeometry.Properties` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [Scheme.IsGermInjectiveAt](../../../../../mathematics/Geometry/AlgebraicGeometry/SpreadingOut/Varianta2c11eac3fb02aaeecb3d89a1d51fe59f2852d3bfc8c7c948d1d53f40b078d55.lean/declarations/scheme-isgerminjectiveat--f2c1c3441cf75486917b54c3.md) | 56 | `declaration-track:f2c1c3441cf75486917b54c3db046e7a8f2cf2d33905f81537d5df2a418ed607` |
| 2 | `lemma` | [injective_germ_basicOpen](../../../../../mathematics/Geometry/AlgebraicGeometry/SpreadingOut/Varianta2c11eac3fb02aaeecb3d89a1d51fe59f2852d3bfc8c7c948d1d53f40b078d55.lean/declarations/injective-germ-basicopen--48b7fccf0a04c9bfd8fdd1d3.md) | 59 | `result-track:48b7fccf0a04c9bfd8fdd1d357fb5307a14cb3589ca66044cab73d531b76bfde` |
| 3 | `lemma` | [Scheme.exists_germ_injective](../../../../../mathematics/Geometry/AlgebraicGeometry/SpreadingOut/Varianta2c11eac3fb02aaeecb3d89a1d51fe59f2852d3bfc8c7c948d1d53f40b078d55.lean/declarations/scheme-exists-germ-injective--d02cf87fda74d35fca77de5f.md) | 73 | `result-track:d02cf87fda74d35fca77de5f202c9d6016d1cbac9be10ce749e0c05d52bd7ec4` |
| 4 | `lemma` | [Scheme.exists_le_and_germ_injective](../../../../../mathematics/Geometry/AlgebraicGeometry/SpreadingOut/Varianta2c11eac3fb02aaeecb3d89a1d51fe59f2852d3bfc8c7c948d1d53f40b078d55.lean/declarations/scheme-exists-le-and-germ-injective--e5c7b6fbafb358593d5ac2e0.md) | 78 | `result-track:e5c7b6fbafb358593d5ac2e0a6d85e85303b9e178415de251208354d10b95b4e` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/SpreadingOut/Varianta2c11eac3fb02aaeecb3d89a1d51fe59f2852d3bfc8c7c948d1d53f40b078d55.lean/declarations/instance--838f46f312dcb8e8d43f5e75.md) | 86 | `declaration-track:838f46f312dcb8e8d43f5e75c82d3a1e29777e9289bec6ced36aea7c621550d8` |
| 6 | `lemma` | [isGermInjectiveAt_iff_of_isOpenImmersion](../../../../../mathematics/Geometry/AlgebraicGeometry/SpreadingOut/Varianta2c11eac3fb02aaeecb3d89a1d51fe59f2852d3bfc8c7c948d1d53f40b078d55.lean/declarations/isgerminjectiveat-iff-of-isopenimmersion--c3a0982d6967e593b3cd36c5.md) | 97 | `result-track:c3a0982d6967e593b3cd36c5abbb2ce0e1f935589ebc75b0d390a15528f18672` |
| 7 | `abbrev` | [Scheme.IsGermInjective](../../../../../mathematics/Geometry/AlgebraicGeometry/SpreadingOut/Varianta2c11eac3fb02aaeecb3d89a1d51fe59f2852d3bfc8c7c948d1d53f40b078d55.lean/declarations/scheme-isgerminjective--91cebe44cc350d40042cb4cf.md) | 119 | `declaration-track:91cebe44cc350d40042cb4cf3dd8ba247cd2fa78b046fadc43b965ce16589f7c` |
| 8 | `lemma` | [Scheme.IsGermInjective.of_openCover](../../../../../mathematics/Geometry/AlgebraicGeometry/SpreadingOut/Varianta2c11eac3fb02aaeecb3d89a1d51fe59f2852d3bfc8c7c948d1d53f40b078d55.lean/declarations/scheme-isgerminjective-of-opencover--52a52922fe795d6f6aaeabf5.md) | 121 | `result-track:52a52922fe795d6f6aaeabf5a99f3e0ad9190b0ddeff47a179609b7253cec6bf` |
| 9 | `lemma` | [Scheme.IsGermInjective.Spec](../../../../../mathematics/Geometry/AlgebraicGeometry/SpreadingOut/Varianta2c11eac3fb02aaeecb3d89a1d51fe59f2852d3bfc8c7c948d1d53f40b078d55.lean/declarations/scheme-isgerminjective-spec--685b61732dc0e59c20a8c088.md) | 128 | `result-track:685b61732dc0e59c20a8c088a867f5f0b9fd32b46b716ba39fe0a1366d4e772e` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/SpreadingOut/Varianta2c11eac3fb02aaeecb3d89a1d51fe59f2852d3bfc8c7c948d1d53f40b078d55.lean/declarations/instance--3f07d6b988b966b603e4d7fb.md) | 153 | `declaration-track:3f07d6b988b966b603e4d7fb156a40ef05a44141d9113edd36aaf8aebb2e3df7` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/SpreadingOut/Varianta2c11eac3fb02aaeecb3d89a1d51fe59f2852d3bfc8c7c948d1d53f40b078d55.lean/declarations/instance--c81ff53cb5161e516957d04c.md) | 162 | `declaration-track:c81ff53cb5161e516957d04c8413ed896a5b55fb49816c585fadc26cfd2b84dc` |
| 12 | `lemma` | [spread_out_unique_of_isGermInjective](../../../../../mathematics/Geometry/AlgebraicGeometry/SpreadingOut/Varianta2c11eac3fb02aaeecb3d89a1d51fe59f2852d3bfc8c7c948d1d53f40b078d55.lean/declarations/spread-out-unique-of-isgerminjective--daeff8d87ddc589cbb6118f6.md) | 193 | `result-track:daeff8d87ddc589cbb6118f6378c8a50fbb173d34bc104a8d0dd17ffb7956faf` |
| 13 | `lemma` | [spread_out_unique_of_isGermInjective'](../../../../../mathematics/Geometry/AlgebraicGeometry/SpreadingOut/Varianta2c11eac3fb02aaeecb3d89a1d51fe59f2852d3bfc8c7c948d1d53f40b078d55.lean/declarations/spread-out-unique-of-isgerminjective--a715bad7b8557cdded58efe1.md) | 225 | `result-track:a715bad7b8557cdded58efe1facdcf141d6ba12c10e2e540377ce062821a5b8d` |
| 14 | `lemma` | [exists_lift_of_germInjective_aux](../../../../../mathematics/Geometry/AlgebraicGeometry/SpreadingOut/Varianta2c11eac3fb02aaeecb3d89a1d51fe59f2852d3bfc8c7c948d1d53f40b078d55.lean/declarations/exists-lift-of-germinjective-aux--b36b9e9f91e82a0c216dc31a.md) | 235 | `result-track:b36b9e9f91e82a0c216dc31a90766e0a94352210dd954f4e84b7cf96f2d34d80` |
| 15 | `lemma` | [exists_lift_of_germInjective](../../../../../mathematics/Geometry/AlgebraicGeometry/SpreadingOut/Varianta2c11eac3fb02aaeecb3d89a1d51fe59f2852d3bfc8c7c948d1d53f40b078d55.lean/declarations/exists-lift-of-germinjective--50bd97361f54b5eeb546c628.md) | 272 | `result-track:50bd97361f54b5eeb546c6285159f550bfde29e1bda901ba7239f07a984cebd1` |
| 16 | `lemma` | [spread_out_of_isGermInjective](../../../../../mathematics/Geometry/AlgebraicGeometry/SpreadingOut/Varianta2c11eac3fb02aaeecb3d89a1d51fe59f2852d3bfc8c7c948d1d53f40b078d55.lean/declarations/spread-out-of-isgerminjective--b7415135feec389083283e7d.md) | 324 | `result-track:b7415135feec389083283e7d94a8728ada5238b79a222280eb04fd3830da63ba` |
| 17 | `lemma` | [spread_out_of_isGermInjective'](../../../../../mathematics/Geometry/AlgebraicGeometry/SpreadingOut/Varianta2c11eac3fb02aaeecb3d89a1d51fe59f2852d3bfc8c7c948d1d53f40b078d55.lean/declarations/spread-out-of-isgerminjective--e8d1734bd72cc56aff7b6f3e.md) | 362 | `result-track:e8d1734bd72cc56aff7b6f3e1a98ac4b83235e764bcf0d7fe4b1d8bec5aad4e6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
