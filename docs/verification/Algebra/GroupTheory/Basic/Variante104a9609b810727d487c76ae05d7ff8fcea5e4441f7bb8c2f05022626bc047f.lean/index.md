# Verification target: GRWTSK.Algebra.GroupTheory.Basic.Variante104a9609b810727d487c76ae05d7ff8fcea5e4441f7bb8c2f05022626bc047f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8aac935b9e8a3f7a4c3c7d7a81ca6d728888aa46",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Basic/Variante104a9609b810727d487c76ae05d7ff8fcea5e4441f7bb8c2f05022626bc047f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Basic/Variante104a9609b810727d487c76ae05d7ff8fcea5e4441f7bb8c2f05022626bc047f.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Basic/Variante104a9609b810727d487c76ae05d7ff8fcea5e4441f7bb8c2f05022626bc047f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8aac935b9e8a3f7a4c3c7d7a81ca6d728888aa46`.

Source path: `GRWTSK/Algebra/GroupTheory/Basic/Variante104a9609b810727d487c76ae05d7ff8fcea5e4441f7bb8c2f05022626bc047f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Basic/Variante104a9609b810727d487c76ae05d7ff8fcea5e4441f7bb8c2f05022626bc047f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.FreeMonoid.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Submonoid.Operations` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Congruence.Hom` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [PresentedMonoid](../../../../../mathematics/Algebra/GroupTheory/Basic/Variante104a9609b810727d487c76ae05d7ff8fcea5e4441f7bb8c2f05022626bc047f.lean/declarations/presentedmonoid--6bb2caa2dc889136fbe8f740.md) | 45 | `declaration-track:6bb2caa2dc889136fbe8f7409caa6bb3e9db5d72ff529cf98bebee3af5a06bf6` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Basic/Variante104a9609b810727d487c76ae05d7ff8fcea5e4441f7bb8c2f05022626bc047f.lean/declarations/instance--556470b963f50969542128ad.md) | 53 | `declaration-track:556470b963f50969542128ad15c371b730a493d12451043f65f912aedc59d987` |
| 3 | `def` | [mk](../../../../../mathematics/Algebra/GroupTheory/Basic/Variante104a9609b810727d487c76ae05d7ff8fcea5e4441f7bb8c2f05022626bc047f.lean/declarations/mk--dcee986306e1f241fd994544.md) | 60 | `declaration-track:dcee986306e1f241fd9945446e5bf6c3179d971bf50152d927e110ee96977d90` |
| 4 | `def` | [of](../../../../../mathematics/Algebra/GroupTheory/Basic/Variante104a9609b810727d487c76ae05d7ff8fcea5e4441f7bb8c2f05022626bc047f.lean/declarations/of--d1852963dd61597aae516077.md) | 69 | `declaration-track:d1852963dd61597aae51607784a7d726a0390cf435f7d08a259427a0ccf5464a` |
| 5 | `theorem` | [inductionOn](../../../../../mathematics/Algebra/GroupTheory/Basic/Variante104a9609b810727d487c76ae05d7ff8fcea5e4441f7bb8c2f05022626bc047f.lean/declarations/inductionon--7cadc00f36bd40e281a74d2f.md) | 82 | `result-track:7cadc00f36bd40e281a74d2ffa5e8cda5e122fcd2f7a1c1677103726d6ab101b` |
| 6 | `theorem` | [inductionOn₂](../../../../../mathematics/Algebra/GroupTheory/Basic/Variante104a9609b810727d487c76ae05d7ff8fcea5e4441f7bb8c2f05022626bc047f.lean/declarations/inductionon--6d72fee3900b73442beef420.md) | 86 | `result-track:6d72fee3900b73442beef420bb93a1e3ae1b8dc560cddc71ba648c291a7ca3ba` |
| 7 | `theorem` | [inductionOn₃](../../../../../mathematics/Algebra/GroupTheory/Basic/Variante104a9609b810727d487c76ae05d7ff8fcea5e4441f7bb8c2f05022626bc047f.lean/declarations/inductionon--10fa2a1740a4366bdb7000f8.md) | 91 | `result-track:10fa2a1740a4366bdb7000f87331e9d54fff7d536fbb14c01b899e582857de92` |
| 8 | `theorem` | [closure_range_of](../../../../../mathematics/Algebra/GroupTheory/Basic/Variante104a9609b810727d487c76ae05d7ff8fcea5e4441f7bb8c2f05022626bc047f.lean/declarations/closure-range-of--53534cbbc335363c11114634.md) | 104 | `result-track:53534cbbc335363c111146348e3c76da0ac21634404d930f3697e5a2a77f4efd` |
| 9 | `theorem` | [surjective_mk](../../../../../mathematics/Algebra/GroupTheory/Basic/Variante104a9609b810727d487c76ae05d7ff8fcea5e4441f7bb8c2f05022626bc047f.lean/declarations/surjective-mk--9a245f2ecaf31583706e69a6.md) | 115 | `result-track:9a245f2ecaf31583706e69a67b3b055dc7589951aa6d3387d32b2f4a1a0c4e2f` |
| 10 | `def` | [lift](../../../../../mathematics/Algebra/GroupTheory/Basic/Variante104a9609b810727d487c76ae05d7ff8fcea5e4441f7bb8c2f05022626bc047f.lean/declarations/lift--c4d46775d5b1f015bd437b91.md) | 127 | `declaration-track:c4d46775d5b1f015bd437b9183f3b3abe522520f45ce2d4b84a943da422631d4` |
| 11 | `theorem` | [toMonoid.unique](../../../../../mathematics/Algebra/GroupTheory/Basic/Variante104a9609b810727d487c76ae05d7ff8fcea5e4441f7bb8c2f05022626bc047f.lean/declarations/tomonoid-unique--374f5a564a727941e6a0ac5f.md) | 131 | `result-track:374f5a564a727941e6a0ac5f316d3fdfc38d1e6224e4097a82364045279caefe` |
| 12 | `theorem` | [lift_of](../../../../../mathematics/Algebra/GroupTheory/Basic/Variante104a9609b810727d487c76ae05d7ff8fcea5e4441f7bb8c2f05022626bc047f.lean/declarations/lift-of--f309f02a35cb8b88eb615a53.md) | 136 | `result-track:f309f02a35cb8b88eb615a53a822a7001648bd36e191c3d1ed92f8b8b97af214` |
| 13 | `theorem` | [ext](../../../../../mathematics/Algebra/GroupTheory/Basic/Variante104a9609b810727d487c76ae05d7ff8fcea5e4441f7bb8c2f05022626bc047f.lean/declarations/ext--43d75e209eda810b2495be68.md) | 141 | `result-track:43d75e209eda810b2495be680348825037fe21cace7b8bf044a0e7f3bff61148` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
