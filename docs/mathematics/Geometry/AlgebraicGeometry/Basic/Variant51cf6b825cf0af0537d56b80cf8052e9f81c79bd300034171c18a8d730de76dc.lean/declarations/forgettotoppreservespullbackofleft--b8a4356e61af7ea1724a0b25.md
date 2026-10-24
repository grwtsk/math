# forgetToTopPreservesPullbackOfLeft

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7d1c4a9072f5eeac54900a3a78f3b72c00a6908f4dfe66ce592c9c34735c18bc",
  "kind": "instance",
  "lexical_name": "forgetToTopPreservesPullbackOfLeft",
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
  "slug": "forgettotoppreservespullbackofleft--b8a4356e61af7ea1724a0b25",
  "source": {
    "blob": "22b1569af81b9358ba015aba3f8e97b03c814037",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1098,
    "line": 1079,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Basic/Variant51cf6b825cf0af0537d56b80cf8052e9f81c79bd300034171c18a8d730de76dc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b8a4356e61af7ea1724a0b25716ca7bb177f3fee746bac9757b40145a188f75c",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Basic/Variant51cf6b825cf0af0537d56b80cf8052e9f81c79bd300034171c18a8d730de76dc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7d1c4a9072f5eeac54900a3a78f3b72c00a6908f4dfe66ce592c9c34735c18bc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1079–1098.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance forgetToTopPreservesPullbackOfLeft :
    PreservesLimit (cospan f g)
      (LocallyRingedSpace.forgetToSheafedSpace ⋙ SheafedSpace.forget _) := by
  change PreservesLimit _ <|
    (LocallyRingedSpace.forgetToSheafedSpace ⋙ SheafedSpace.forgetToPresheafedSpace) ⋙
    PresheafedSpace.forget _
  -- Porting note : was `apply (config := { instances := False }) ...`
  -- See https://github.com/leanprover/lean4/issues/2273
  have : PreservesLimit
      (cospan ((cospan f g ⋙ forgetToSheafedSpace ⋙ SheafedSpace.forgetToPresheafedSpace).map
        WalkingCospan.Hom.inl)
      ((cospan f g ⋙ forgetToSheafedSpace ⋙ SheafedSpace.forgetToPresheafedSpace).map
        WalkingCospan.Hom.inr)) (PresheafedSpace.forget CommRingCat)
  · dsimp; infer_instance
  have : PreservesLimit (cospan f g ⋙ forgetToSheafedSpace ⋙ SheafedSpace.forgetToPresheafedSpace)
    (PresheafedSpace.forget CommRingCat)
  · apply preservesLimitOfIsoDiagram _ (diagramIsoCospan _).symm
  apply Limits.compPreservesLimit
#align algebraic_geometry.LocallyRingedSpace.is_open_immersion.forget_to_Top_preserves_pullback_of_left AlgebraicGeometry.LocallyRingedSpace.IsOpenImmersion.forgetToTopPreservesPullbackOfLeft

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Basic/Variant51cf6b825cf0af0537d56b80cf8052e9f81c79bd300034171c18a8d730de76dc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Basic/Variant51cf6b825cf0af0537d56b80cf8052e9f81c79bd300034171c18a8d730de76dc.lean#L1079).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `22b1569af81b9358ba015aba3f8e97b03c814037` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
