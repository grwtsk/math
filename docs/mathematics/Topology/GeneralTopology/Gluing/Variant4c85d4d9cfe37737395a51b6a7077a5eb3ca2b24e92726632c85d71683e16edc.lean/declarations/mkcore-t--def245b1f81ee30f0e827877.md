# MkCore.t'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1c1a308d5354db1d5fe628e45c74bbbd106eb603e646974838ab0036cc466e2d",
  "kind": "def",
  "lexical_name": "MkCore.t'",
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
  "slug": "mkcore-t--def245b1f81ee30f0e827877",
  "source": {
    "blob": "9a46934351b58f0379216e854e2a13907ab7297b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 324,
    "line": 311,
    "path": "GRWTSK/Topology/GeneralTopology/Gluing/Variant4c85d4d9cfe37737395a51b6a7077a5eb3ca2b24e92726632c85d71683e16edc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:def245b1f81ee30f0e827877617deca8a979f15371634f8ff95e59f61d7fab94",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Gluing/Variant4c85d4d9cfe37737395a51b6a7077a5eb3ca2b24e92726632c85d71683e16edc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1c1a308d5354db1d5fe628e45c74bbbd106eb603e646974838ab0036cc466e2d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 311–324.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def MkCore.t' (h : MkCore.{u}) (i j k : h.J) :
    pullback (h.V i j).inclusion' (h.V i k).inclusion' ⟶
      pullback (h.V j k).inclusion' (h.V j i).inclusion' := by
  refine (pullbackIsoProdSubtype _ _).hom ≫ ofHom ⟨?_, ?_⟩ ≫ (pullbackIsoProdSubtype _ _).inv
  · intro x
    refine ⟨⟨⟨(h.t i j x.1.1).1, ?_⟩, h.t i j x.1.1⟩, rfl⟩
    rcases x with ⟨⟨⟨x, hx⟩, ⟨x', hx'⟩⟩, rfl : x = x'⟩
    exact h.t_inter _ ⟨x, hx⟩ hx'
  fun_prop

set_option backward.isDefEq.respectTransparency false in
/-- This is a constructor of `TopCat.GlueData` whose arguments are in terms of elements and
intersections rather than subobjects and pullbacks. Please refer to `TopCat.GlueData.MkCore` for
details. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Gluing/Variant4c85d4d9cfe37737395a51b6a7077a5eb3ca2b24e92726632c85d71683e16edc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Gluing/Variant4c85d4d9cfe37737395a51b6a7077a5eb3ca2b24e92726632c85d71683e16edc.lean#L311).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9a46934351b58f0379216e854e2a13907ab7297b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
