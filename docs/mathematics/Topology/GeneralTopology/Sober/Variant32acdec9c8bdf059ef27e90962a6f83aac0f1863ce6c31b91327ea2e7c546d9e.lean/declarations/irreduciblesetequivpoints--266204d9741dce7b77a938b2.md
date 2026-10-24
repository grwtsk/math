# irreducibleSetEquivPoints

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c815410d922bb1ab7383a1305eba9dcd98ea163e22c6515f7e99e701c9b0c006",
  "kind": "def",
  "lexical_name": "irreducibleSetEquivPoints",
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
  "slug": "irreduciblesetequivpoints--266204d9741dce7b77a938b2",
  "source": {
    "blob": "4c18b9f3fcae54d01dd4e9e0faed3eb25b5c0afd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 188,
    "line": 175,
    "path": "GRWTSK/Topology/GeneralTopology/Sober/Variant32acdec9c8bdf059ef27e90962a6f83aac0f1863ce6c31b91327ea2e7c546d9e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:266204d9741dce7b77a938b24fb6e8dd55c2c72d3133fb4172f91692c84ef12a",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Sober/Variant32acdec9c8bdf059ef27e90962a6f83aac0f1863ce6c31b91327ea2e7c546d9e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c815410d922bb1ab7383a1305eba9dcd98ea163e22c6515f7e99e701c9b0c006`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 175–188.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def irreducibleSetEquivPoints [QuasiSober α] [T0Space α] :
    { s : Set α | IsIrreducible s ∧ IsClosed s } ≃o α where
  toFun s := s.prop.1.genericPoint
  invFun x := ⟨closure ({x} : Set α), isIrreducible_singleton.closure, isClosed_closure⟩
  left_inv s := Subtype.eq <| Eq.trans s.prop.1.genericPoint_spec <|
    closure_eq_iff_isClosed.mpr s.2.2
  right_inv x := isIrreducible_singleton.closure.genericPoint_spec.eq
      (by rw [closure_closure]; exact isGenericPoint_closure)
  map_rel_iff' := by
    rintro ⟨s, hs⟩ ⟨t, ht⟩
    refine specializes_iff_closure_subset.trans ?_
    simp [hs.2.closure_eq, ht.2.closure_eq]
#align irreducible_set_equiv_points irreducibleSetEquivPoints

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Sober/Variant32acdec9c8bdf059ef27e90962a6f83aac0f1863ce6c31b91327ea2e7c546d9e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Sober/Variant32acdec9c8bdf059ef27e90962a6f83aac0f1863ce6c31b91327ea2e7c546d9e.lean#L175).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4c18b9f3fcae54d01dd4e9e0faed3eb25b5c0afd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
