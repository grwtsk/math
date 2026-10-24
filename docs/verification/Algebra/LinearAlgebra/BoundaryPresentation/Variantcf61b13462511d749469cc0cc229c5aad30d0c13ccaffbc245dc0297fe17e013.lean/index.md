# Verification target: GRWTSK.Algebra.LinearAlgebra.BoundaryPresentation.Variantcf61b13462511d749469cc0cc229c5aad30d0c13ccaffbc245dc0297fe17e013

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "679da569a78bd14dee7a2c58d8b61e7c73f3999b",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/BoundaryPresentation/Variantcf61b13462511d749469cc0cc229c5aad30d0c13ccaffbc245dc0297fe17e013.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/BoundaryPresentation/Variantcf61b13462511d749469cc0cc229c5aad30d0c13ccaffbc245dc0297fe17e013.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/BoundaryPresentation/Variantcf61b13462511d749469cc0cc229c5aad30d0c13ccaffbc245dc0297fe17e013.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `679da569a78bd14dee7a2c58d8b61e7c73f3999b`.

Source path: `GRWTSK/Algebra/LinearAlgebra/BoundaryPresentation/Variantcf61b13462511d749469cc0cc229c5aad30d0c13ccaffbc245dc0297fe17e013.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/BoundaryPresentation/Variantcf61b13462511d749469cc0cc229c5aad30d0c13ccaffbc245dc0297fe17e013.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.GroupTheory.QuotientGroup.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.FreeModule.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [C2](../../../../../mathematics/Algebra/LinearAlgebra/BoundaryPresentation/Variantcf61b13462511d749469cc0cc229c5aad30d0c13ccaffbc245dc0297fe17e013.lean/declarations/c2--557efb2a90f9b4f98b5326dc.md) | 30 | `declaration-track:557efb2a90f9b4f98b5326dc53c589dd930a504cbf8988f033ff9839819207f3` |
| 2 | `abbrev` | [C1](../../../../../mathematics/Algebra/LinearAlgebra/BoundaryPresentation/Variantcf61b13462511d749469cc0cc229c5aad30d0c13ccaffbc245dc0297fe17e013.lean/declarations/c1--0f2c790085f59c28ee13ed3c.md) | 33 | `declaration-track:0f2c790085f59c28ee13ed3c7df541a317743892777e4def5add19f0f01e4ddf` |
| 3 | `def` | [boundary2](../../../../../mathematics/Algebra/LinearAlgebra/BoundaryPresentation/Variantcf61b13462511d749469cc0cc229c5aad30d0c13ccaffbc245dc0297fe17e013.lean/declarations/boundary2--8a0258895790c341b8161b2f.md) | 36 | `declaration-track:8a0258895790c341b8161b2fff2129d68730c5e8df5f66099b85b8108ba66c83` |
| 4 | `def` | [relations](../../../../../mathematics/Algebra/LinearAlgebra/BoundaryPresentation/Variantcf61b13462511d749469cc0cc229c5aad30d0c13ccaffbc245dc0297fe17e013.lean/declarations/relations--c920ae3ffa0091c220651f1c.md) | 44 | `declaration-track:c920ae3ffa0091c220651f1c91bb500784eee62f19103e3082503efea0ab669b` |
| 5 | `abbrev` | [H1](../../../../../mathematics/Algebra/LinearAlgebra/BoundaryPresentation/Variantcf61b13462511d749469cc0cc229c5aad30d0c13ccaffbc245dc0297fe17e013.lean/declarations/h1--6dc947d5318834c1d0e4e0ea.md) | 49 | `declaration-track:6dc947d5318834c1d0e4e0ea448258c2bb759c0334a02feebef013bd4ec1ec62` |
| 6 | `theorem` | [boundary2_class_eq_zero](../../../../../mathematics/Algebra/LinearAlgebra/BoundaryPresentation/Variantcf61b13462511d749469cc0cc229c5aad30d0c13ccaffbc245dc0297fe17e013.lean/declarations/boundary2-class-eq-zero--4d674aac49bd636d3a647e93.md) | 52 | `result-track:4d674aac49bd636d3a647e9386299142b5e955d4625ce687aa5b8a25f5b8fe7a` |
| 7 | `def` | [outerChain](../../../../../mathematics/Algebra/LinearAlgebra/BoundaryPresentation/Variantcf61b13462511d749469cc0cc229c5aad30d0c13ccaffbc245dc0297fe17e013.lean/declarations/outerchain--2ffbd9908072ce84acfb5881.md) | 60 | `declaration-track:2ffbd9908072ce84acfb58810f5244194eb566a1da5a08b19d302f1145a2e21b` |
| 8 | `def` | [innerChain](../../../../../mathematics/Algebra/LinearAlgebra/BoundaryPresentation/Variantcf61b13462511d749469cc0cc229c5aad30d0c13ccaffbc245dc0297fe17e013.lean/declarations/innerchain--0e0349b052c5d876b70f58ca.md) | 65 | `declaration-track:0e0349b052c5d876b70f58ca13aa960d497a3e5ce55a7f40dfd9847d0df70d59` |
| 9 | `def` | [outerClass](../../../../../mathematics/Algebra/LinearAlgebra/BoundaryPresentation/Variantcf61b13462511d749469cc0cc229c5aad30d0c13ccaffbc245dc0297fe17e013.lean/declarations/outerclass--3368b7edaa10c9147732ad64.md) | 68 | `declaration-track:3368b7edaa10c9147732ad6481cd3a24bc18432586580a6349373f8160b5f034` |
| 10 | `def` | [innerClass](../../../../../mathematics/Algebra/LinearAlgebra/BoundaryPresentation/Variantcf61b13462511d749469cc0cc229c5aad30d0c13ccaffbc245dc0297fe17e013.lean/declarations/innerclass--849ed3b897064d476529c5ba.md) | 71 | `declaration-track:849ed3b897064d476529c5ba77e295264734ed36caa9ab6cd65f9123d37547e3` |
| 11 | `theorem` | [outerClass_eq_innerClass](../../../../../mathematics/Algebra/LinearAlgebra/BoundaryPresentation/Variantcf61b13462511d749469cc0cc229c5aad30d0c13ccaffbc245dc0297fe17e013.lean/declarations/outerclass-eq-innerclass--1a68b53a729b174152f77bb8.md) | 75 | `result-track:1a68b53a729b174152f77bb83394720d05d00b89dc77bfbcf1d86cb31323a863` |
| 12 | `def` | [total](../../../../../mathematics/Algebra/LinearAlgebra/BoundaryPresentation/Variantcf61b13462511d749469cc0cc229c5aad30d0c13ccaffbc245dc0297fe17e013.lean/declarations/total--017683c6503a80265c6f5863.md) | 82 | `declaration-track:017683c6503a80265c6f58635276f1ac716c3f2ab3da50fd20b0c3925490cbcd` |
| 13 | `theorem` | [relations_eq_total_ker](../../../../../mathematics/Algebra/LinearAlgebra/BoundaryPresentation/Variantcf61b13462511d749469cc0cc229c5aad30d0c13ccaffbc245dc0297fe17e013.lean/declarations/relations-eq-total-ker--9809015ce868a02085ed18a9.md) | 91 | `result-track:9809015ce868a02085ed18a9677769bbbf6108bdaf6299f0477d86c66450e04c` |
| 14 | `theorem` | [total_surjective](../../../../../mathematics/Algebra/LinearAlgebra/BoundaryPresentation/Variantcf61b13462511d749469cc0cc229c5aad30d0c13ccaffbc245dc0297fe17e013.lean/declarations/total-surjective--00377e4fc7e41df8ef3c56da.md) | 105 | `result-track:00377e4fc7e41df8ef3c56da90d1921cdd10922f2aa130feb43a622a4920cff8` |
| 15 | `def` | [H1EquivInt](../../../../../mathematics/Algebra/LinearAlgebra/BoundaryPresentation/Variantcf61b13462511d749469cc0cc229c5aad30d0c13ccaffbc245dc0297fe17e013.lean/declarations/h1equivint--cf929f935864459aad1c0743.md) | 112 | `declaration-track:cf929f935864459aad1c0743c38072e876658ba9ea101d3e75fe14c30101361f` |
| 16 | `theorem` | [h1_isTorsionFree](../../../../../mathematics/Algebra/LinearAlgebra/BoundaryPresentation/Variantcf61b13462511d749469cc0cc229c5aad30d0c13ccaffbc245dc0297fe17e013.lean/declarations/h1-istorsionfree--7af32a55f739aef53a645cdf.md) | 120 | `result-track:7af32a55f739aef53a645cdf0b63e97bdbc6af8a7f08f386eff1bbf165294c8d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
