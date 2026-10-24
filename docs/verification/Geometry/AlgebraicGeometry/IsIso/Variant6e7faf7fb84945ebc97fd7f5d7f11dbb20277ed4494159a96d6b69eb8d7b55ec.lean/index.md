# Verification target: GRWTSK.Geometry.AlgebraicGeometry.IsIso.Variant6e7faf7fb84945ebc97fd7f5d7f11dbb20277ed4494159a96d6b69eb8d7b55ec

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "85cbeba7116078d4311bf5449c841f179664b029",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/AlgebraicGeometry/IsIso/Variant6e7faf7fb84945ebc97fd7f5d7f11dbb20277ed4494159a96d6b69eb8d7b55ec.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Geometry/AlgebraicGeometry/IsIso/Variant6e7faf7fb84945ebc97fd7f5d7f11dbb20277ed4494159a96d6b69eb8d7b55ec.lean/index.md) · [Full source](../../../../../mathematics/Geometry/AlgebraicGeometry/IsIso/Variant6e7faf7fb84945ebc97fd7f5d7f11dbb20277ed4494159a96d6b69eb8d7b55ec.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `85cbeba7116078d4311bf5449c841f179664b029`.

Source path: `GRWTSK/Geometry/AlgebraicGeometry/IsIso/Variant6e7faf7fb84945ebc97fd7f5d7f11dbb20277ed4494159a96d6b69eb8d7b55ec.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/AlgebraicGeometry/IsIso/Variant6e7faf7fb84945ebc97fd7f5d7f11dbb20277ed4494159a96d6b69eb8d7b55ec.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.AlgebraicGeometry.Morphisms.OpenImmersion` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [isomorphisms_eq_isOpenImmersion_inf_surjective](../../../../../mathematics/Geometry/AlgebraicGeometry/IsIso/Variant6e7faf7fb84945ebc97fd7f5d7f11dbb20277ed4494159a96d6b69eb8d7b55ec.lean/declarations/isomorphisms-eq-isopenimmersion-inf-surjective--1b76c4d9f488bd1dab8644d5.md) | 18 | `result-track:1b76c4d9f488bd1dab8644d535fc04c4b2e076ef0fbbe8107a53a3edf6be8eef` |
| 2 | `lemma` | [isomorphisms_eq_stalkwise](../../../../../mathematics/Geometry/AlgebraicGeometry/IsIso/Variant6e7faf7fb84945ebc97fd7f5d7f11dbb20277ed4494159a96d6b69eb8d7b55ec.lean/declarations/isomorphisms-eq-stalkwise--091d02079a339bd3c77caebc.md) | 24 | `result-track:091d02079a339bd3c77caebc273003344b716f292577e8957ee04a92ae34f389` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/IsIso/Variant6e7faf7fb84945ebc97fd7f5d7f11dbb20277ed4494159a96d6b69eb8d7b55ec.lean/declarations/instance--1bacec4f931d16d2996e36c5.md) | 35 | `declaration-track:1bacec4f931d16d2996e36c573344e93225256aeac962a37d8e851004ab2f9cd` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/IsIso/Variant6e7faf7fb84945ebc97fd7f5d7f11dbb20277ed4494159a96d6b69eb8d7b55ec.lean/declarations/instance--2fcdabfff8dc9dac88599145.md) | 38 | `declaration-track:2fcdabfff8dc9dac88599145029c1048948dc934912d43af03f39fc5cf91bb51` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/IsIso/Variant6e7faf7fb84945ebc97fd7f5d7f11dbb20277ed4494159a96d6b69eb8d7b55ec.lean/declarations/instance--ce391357c8840f3cd476d2f3.md) | 44 | `declaration-track:ce391357c8840f3cd476d2f3d8393aa362bb979525828d08e130ca5362ec3677` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
