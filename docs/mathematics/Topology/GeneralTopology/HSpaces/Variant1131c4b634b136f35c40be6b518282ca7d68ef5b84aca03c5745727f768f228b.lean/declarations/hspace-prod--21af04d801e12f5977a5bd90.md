# HSpace.prod

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:51ecb7964974fde425e2f604dcc4a92d1c8db9d0ca3b382d0823b5e032e9b979",
  "kind": "instance",
  "lexical_name": "HSpace.prod",
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
  "slug": "hspace-prod--21af04d801e12f5977a5bd90",
  "source": {
    "blob": "491d79d4147fabd531a347865cbef39eee96e9cb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 129,
    "line": 88,
    "path": "GRWTSK/Topology/GeneralTopology/HSpaces/Variant1131c4b634b136f35c40be6b518282ca7d68ef5b84aca03c5745727f768f228b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:21af04d801e12f5977a5bd90752b3030326e07e3e959f4aa29a0faf553e0bfef",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/HSpaces/Variant1131c4b634b136f35c40be6b518282ca7d68ef5b84aca03c5745727f768f228b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:51ecb7964974fde425e2f604dcc4a92d1c8db9d0ca3b382d0823b5e032e9b979`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 88–129.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance HSpace.prod (X : Type u) (Y : Type v) [TopologicalSpace X] [TopologicalSpace Y] [HSpace X]
    [HSpace Y] : HSpace (X × Y) where
  hmul := ⟨fun p => (p.1.1 ⋀ p.2.1, p.1.2 ⋀ p.2.2), by fun_prop⟩
  e := (HSpace.e, HSpace.e)
  hmul_e_e := by
    simp only [ContinuousMap.coe_mk, Prod.mk_inj]
    exact ⟨HSpace.hmul_e_e, HSpace.hmul_e_e⟩
  eHmul := by
    let G : I × X × Y → X × Y := fun p => (HSpace.eHmul (p.1, p.2.1), HSpace.eHmul (p.1, p.2.2))
    have hG : Continuous G := by fun_prop
    use! ⟨G, hG⟩
    · rintro ⟨x, y⟩
      exact Prod.ext (HSpace.eHmul.1.2 x) (HSpace.eHmul.1.2 y)
    · rintro ⟨x, y⟩
      exact Prod.ext (HSpace.eHmul.1.3 x) (HSpace.eHmul.1.3 y)
    · rintro t ⟨x, y⟩ h
      replace h := Prod.mk_inj.mp h
      exact Prod.ext (HSpace.eHmul.2 t x h.1) (HSpace.eHmul.2 t y h.2)
  hmulE := by
    let G : I × X × Y → X × Y := fun p => (HSpace.hmulE (p.1, p.2.1), HSpace.hmulE (p.1, p.2.2))
    have hG : Continuous G := by fun_prop
    use! ⟨G, hG⟩
    · rintro ⟨x, y⟩
      exact Prod.ext (HSpace.hmulE.1.2 x) (HSpace.hmulE.1.2 y)
    · rintro ⟨x, y⟩
      exact Prod.ext (HSpace.hmulE.1.3 x) (HSpace.hmulE.1.3 y)
    · rintro t ⟨x, y⟩ h
      replace h := Prod.mk_inj.mp h
      exact Prod.ext (HSpace.hmulE.2 t x h.1) (HSpace.hmulE.2 t y h.2)


namespace IsTopologicalGroup

/-- The definition `toHSpace` is not an instance because its additive version would
lead to a diamond since a topological field would inherit two `HSpace` structures, one from the
`MulOneClass` and one from the `AddZeroClass`. In the case of a group, we make
`IsTopologicalGroup.hSpace` an instance." -/
@[to_additive (attr := instance_reducible)
      /-- The definition `toHSpace` is not an instance because it comes together with a
      multiplicative version which would lead to a diamond since a topological field would inherit
      two `HSpace` structures, one from the `MulOneClass` and one from the `AddZeroClass`.
      In the case of an additive group, we make `IsTopologicalAddGroup.hSpace` an instance. -/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/HSpaces/Variant1131c4b634b136f35c40be6b518282ca7d68ef5b84aca03c5745727f768f228b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/HSpaces/Variant1131c4b634b136f35c40be6b518282ca7d68ef5b84aca03c5745727f768f228b.lean#L88).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `491d79d4147fabd531a347865cbef39eee96e9cb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
