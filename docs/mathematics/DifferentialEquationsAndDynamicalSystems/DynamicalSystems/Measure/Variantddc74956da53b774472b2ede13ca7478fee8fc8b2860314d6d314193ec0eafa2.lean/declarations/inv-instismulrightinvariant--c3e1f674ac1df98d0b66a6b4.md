# inv.instIsMulRightInvariant

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ec35f15e7a05f26243d4bb58e3ddbe327e110e42a211beab8380bc6e60fe8c89",
  "kind": "instance",
  "lexical_name": "inv.instIsMulRightInvariant",
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
  "slug": "inv-instismulrightinvariant--c3e1f674ac1df98d0b66a6b4",
  "source": {
    "blob": "ac14ba2de1b7d2ca552c7c86b9beb1f8f218d3a5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 444,
    "line": 435,
    "path": "GRWTSK/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/Measure/Variantddc74956da53b774472b2ede13ca7478fee8fc8b2860314d6d314193ec0eafa2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c3e1f674ac1df98d0b66a6b472bf41debd1bd1a7a6f8fd1c448fcfd36e3788d3",
  "verification": {
    "reference": "docs/verification/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/Measure/Variantddc74956da53b774472b2ede13ca7478fee8fc8b2860314d6d314193ec0eafa2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ec35f15e7a05f26243d4bb58e3ddbe327e110e42a211beab8380bc6e60fe8c89`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 435–444.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance inv.instIsMulRightInvariant [IsMulLeftInvariant μ] : IsMulRightInvariant μ.inv := by
  constructor
  intro g
  conv_rhs => rw [← map_mul_left_eq_self μ g⁻¹]
  simp_rw [Measure.inv, map_map (measurable_mul_const g) measurable_inv,
    map_map measurable_inv (measurable_const_mul g⁻¹), Function.comp, mul_inv_rev, inv_inv]
#align measure_theory.measure.inv.is_mul_right_invariant MeasureTheory.Measure.inv.instIsMulRightInvariant
#align measure_theory.measure.neg.is_mul_right_invariant MeasureTheory.Measure.neg.instIsAddRightInvariant

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/Measure/Variantddc74956da53b774472b2ede13ca7478fee8fc8b2860314d6d314193ec0eafa2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/Measure/Variantddc74956da53b774472b2ede13ca7478fee8fc8b2860314d6d314193ec0eafa2.lean#L435).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ac14ba2de1b7d2ca552c7c86b9beb1f8f218d3a5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
