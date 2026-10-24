# pullbackConeOfLeft

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:eeeab382804d937f5430d6e827787dbd6c2e824e6acbd65d1c2015029799bb8e",
  "kind": "def",
  "lexical_name": "pullbackConeOfLeft",
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
  "slug": "pullbackconeofleft--60c7c1f7980d1e419de883a7",
  "source": {
    "blob": "2823eb6226890efa94548b285fde55731f8229d1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 975,
    "line": 961,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/OpenImmersion/Variant5e198d82e0b7dec953b661156509bc44bc4ec8d4cf32dc9d8c543f0c1d50ec2e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:60c7c1f7980d1e419de883a79177007f949a13bfd8141322f1bcba59902e08fc",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/OpenImmersion/Variant5e198d82e0b7dec953b661156509bc44bc4ec8d4cf32dc9d8c543f0c1d50ec2e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:eeeab382804d937f5430d6e827787dbd6c2e824e6acbd65d1c2015029799bb8e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 961–975.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def pullbackConeOfLeft : PullbackCone f g := by
  refine PullbackCone.mk ?_
      (Y.ofRestrict (TopCat.snd_isOpenEmbedding_of_left H.base_open g.base)) ?_
  · use PresheafedSpace.IsOpenImmersion.pullbackConeOfLeftFst f.1 g.1
    intro x
    have := PresheafedSpace.stalkMap.congr_hom _ _
        (PresheafedSpace.IsOpenImmersion.pullback_cone_of_left_condition f.1 g.1) x
    rw [PresheafedSpace.stalkMap.comp, PresheafedSpace.stalkMap.comp] at this
    rw [← IsIso.eq_inv_comp] at this
    rw [this]
    dsimp
    infer_instance
  · exact LocallyRingedSpace.Hom.ext'
        (PresheafedSpace.IsOpenImmersion.pullback_cone_of_left_condition _ _)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/OpenImmersion/Variant5e198d82e0b7dec953b661156509bc44bc4ec8d4cf32dc9d8c543f0c1d50ec2e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/OpenImmersion/Variant5e198d82e0b7dec953b661156509bc44bc4ec8d4cf32dc9d8c543f0c1d50ec2e.lean#L961).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2823eb6226890efa94548b285fde55731f8229d1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
