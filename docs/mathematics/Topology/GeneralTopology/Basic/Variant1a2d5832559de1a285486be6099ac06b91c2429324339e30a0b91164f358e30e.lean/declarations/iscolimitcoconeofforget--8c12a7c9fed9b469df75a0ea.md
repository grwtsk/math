# isColimitCoconeOfForget

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c485f94c0f2dc2fa7a7018578308b3315effdf202025e5f75fac159b5d97013d",
  "kind": "def",
  "lexical_name": "isColimitCoconeOfForget",
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
  "slug": "iscolimitcoconeofforget--8c12a7c9fed9b469df75a0ea",
  "source": {
    "blob": "3c97bb3e9f7870e49fd906ffa0be434489682361",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 244,
    "line": 223,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant1a2d5832559de1a285486be6099ac06b91c2429324339e30a0b91164f358e30e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8c12a7c9fed9b469df75a0eafd2f56152e1e2a2135e0ed4569da2375aef0e22f",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant1a2d5832559de1a285486be6099ac06b91c2429324339e30a0b91164f358e30e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c485f94c0f2dc2fa7a7018578308b3315effdf202025e5f75fac159b5d97013d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 223–244.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def isColimitCoconeOfForget (c : Cocone (F ⋙ forget)) (hc : IsColimit c) :
    IsColimit (coconeOfCoconeForget c) := by
  refine IsColimit.ofFaithful forget (ht := hc)
    (fun s ↦ ofHom (ContinuousMap.mk (hc.desc ((forget).mapCocone s)) ?_)) (fun _ ↦ rfl)
  rw [continuous_iff_le_induced]
  dsimp [topologicalSpaceCoconePtOfCoconeForget]
  rw [iSup_le_iff]
  intro j
  rw [coinduced_le_iff_le_induced, induced_compose]
  convert! continuous_iff_le_induced.1 (s.ι.app j).hom.continuous
  ext x
  exact ConcreteCategory.hom_ext_iff.mp (hc.fac ((forget).mapCocone s) j) x

end

section IsColimit

variable (c : Cocone F) (hc : IsColimit c)

include hc

set_option backward.defeqAttrib.useBackward true in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant1a2d5832559de1a285486be6099ac06b91c2429324339e30a0b91164f358e30e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant1a2d5832559de1a285486be6099ac06b91c2429324339e30a0b91164f358e30e.lean#L223).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3c97bb3e9f7870e49fd906ffa0be434489682361` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
