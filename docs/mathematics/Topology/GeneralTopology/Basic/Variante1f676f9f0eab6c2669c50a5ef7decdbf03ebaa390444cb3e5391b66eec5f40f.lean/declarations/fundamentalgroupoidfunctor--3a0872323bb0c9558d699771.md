# fundamentalGroupoidFunctor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ee32c77c10f947e4b84a39dcb5fc86bb07e77dc59d025541e3ff6e8c75fdb4d0",
  "kind": "def",
  "lexical_name": "fundamentalGroupoidFunctor",
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
  "slug": "fundamentalgroupoidfunctor--3a0872323bb0c9558d699771",
  "source": {
    "blob": "6968563145948b67953f4aa49441c0ce263f4c7f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 333,
    "line": 300,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variante1f676f9f0eab6c2669c50a5ef7decdbf03ebaa390444cb3e5391b66eec5f40f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3a0872323bb0c9558d699771d38406f6e3cfb24922d65dc2b7ac5185a5bd0669",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variante1f676f9f0eab6c2669c50a5ef7decdbf03ebaa390444cb3e5391b66eec5f40f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ee32c77c10f947e4b84a39dcb5fc86bb07e77dc59d025541e3ff6e8c75fdb4d0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 300–333.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def fundamentalGroupoidFunctor : TopCat ⥤ CategoryTheory.Grpd where
  obj X := { α := FundamentalGroupoid X }
  map f :=
    { obj := fun x => ⟨f x.as⟩
      map := fun {X Y} p => by exact Path.Homotopic.Quotient.mapFn p f.hom
      map_id := fun _ => rfl
      map_comp := fun {x y z} p q => by
        refine Quotient.inductionOn₂ p q fun a b => ?_
        simp only [comp_eq, ← Path.Homotopic.map_lift, ← Path.Homotopic.comp_lift, Path.map_trans] }
  map_id X := by
    simp only
    change _ = (⟨_, _, _⟩ : FundamentalGroupoid X ⥤ FundamentalGroupoid X)
    congr
    ext x y p
    refine Quotient.inductionOn p fun q => ?_
    rw [← Path.Homotopic.map_lift]
    conv_rhs => rw [← q.map_id]
    rfl
  map_comp f g := by
    simp only
    congr
    ext x y p
    refine Quotient.inductionOn p fun q => ?_
    simp only [Quotient.map_mk, Path.map_map, Quotient.eq']
    rfl

@[inherit_doc] scoped notation "π" => FundamentalGroupoid.fundamentalGroupoidFunctor

/-- The fundamental groupoid of a topological space. -/
scoped notation "πₓ" => FundamentalGroupoid.fundamentalGroupoidFunctor.obj

/-- The functor between fundamental groupoids induced by a continuous map. -/
scoped notation "πₘ" => FundamentalGroupoid.fundamentalGroupoidFunctor.map

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variante1f676f9f0eab6c2669c50a5ef7decdbf03ebaa390444cb3e5391b66eec5f40f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variante1f676f9f0eab6c2669c50a5ef7decdbf03ebaa390444cb3e5391b66eec5f40f.lean#L300).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6968563145948b67953f4aa49441c0ce263f4c7f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
