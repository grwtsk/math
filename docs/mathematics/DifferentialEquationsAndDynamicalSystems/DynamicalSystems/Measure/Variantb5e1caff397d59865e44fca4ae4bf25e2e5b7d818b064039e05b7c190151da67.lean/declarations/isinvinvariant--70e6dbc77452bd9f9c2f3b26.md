# IsInvInvariant

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:713c766ffa8d2cf25dce39167cf648201441659ac0d1f9ebffb06e41f135abec",
  "kind": "class",
  "lexical_name": "IsInvInvariant",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "isinvinvariant--70e6dbc77452bd9f9c2f3b26",
  "source": {
    "blob": "b1432df2ca9ad3a7bc48b694456645d7beb290a3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 379,
    "line": 370,
    "path": "GRWTSK/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/Measure/Variantb5e1caff397d59865e44fca4ae4bf25e2e5b7d818b064039e05b7c190151da67.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:70e6dbc77452bd9f9c2f3b26291bb02254b9fbdad713e5530bc4b4cd11514883",
  "verification": {
    "reference": "docs/verification/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/Measure/Variantb5e1caff397d59865e44fca4ae4bf25e2e5b7d818b064039e05b7c190151da67.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:713c766ffa8d2cf25dce39167cf648201441659ac0d1f9ebffb06e41f135abec`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 370–379.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class IsInvInvariant [Inv G] (μ : Measure G) : Prop where
  inv_eq_self : μ.inv = μ
#align measure_theory.measure.is_inv_invariant MeasureTheory.Measure.IsInvInvariant
#align measure_theory.measure.is_inv_invariant.inv_eq_self MeasureTheory.Measure.IsInvInvariant.inv_eq_self

section Inv

variable [Inv G]

@[to_additive (attr := simp)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/Measure/Variantb5e1caff397d59865e44fca4ae4bf25e2e5b7d818b064039e05b7c190151da67.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/Measure/Variantb5e1caff397d59865e44fca4ae4bf25e2e5b7d818b064039e05b7c190151da67.lean#L370).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b1432df2ca9ad3a7bc48b694456645d7beb290a3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
