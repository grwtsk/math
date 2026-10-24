# PlaceInteractionCertificate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:40ea71d42ae26dcb26f9ea84b455fde9455f027ca51e8fdcb5e6618bf17116d9",
  "kind": "structure",
  "lexical_name": "PlaceInteractionCertificate",
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
  "slug": "placeinteractioncertificate--9760512fa1955e33ced49d8b",
  "source": {
    "blob": "d72ba35473fc50599975d85f2501725e7bbfbbbc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 81,
    "line": 58,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/PlaceInteraction/Variant6c71b100cbd84b6f43083f9707c29a4bb2fbf137ad3d442752ee560bc687fe9b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9760512fa1955e33ced49d8bba7a5304369b69cad7341dfc78343ed4fc7bfa49",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/PlaceInteraction/Variant6c71b100cbd84b6f43083f9707c29a4bb2fbf137ad3d442752ee560bc687fe9b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:40ea71d42ae26dcb26f9ea84b455fde9455f027ca51e8fdcb5e6618bf17116d9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 58–81.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure PlaceInteractionCertificate
    {model : OperatorModel}
    {Prime : Type uPrime}
    [DecidableEq Prime]
    (capacity :
      PrimeCutDefectCapacity model Prime)
    (cut : Finset Prime)
    (left right : Prime) where
  sign : InteractionSign
  diminishing :
    sign = .diminishing →
      model.Nonnegative
        (-placeInteraction
          capacity cut left right)
  additive :
    sign = .additive →
      placeInteraction capacity cut left right = 0
  reinforcing :
    sign = .reinforcing →
      model.Nonnegative
        (placeInteraction
          capacity cut left right)

end Mathematics.SemiLocalDefect
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/PlaceInteraction/Variant6c71b100cbd84b6f43083f9707c29a4bb2fbf137ad3d442752ee560bc687fe9b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/PlaceInteraction/Variant6c71b100cbd84b6f43083f9707c29a4bb2fbf137ad3d442752ee560bc687fe9b.lean#L58).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d72ba35473fc50599975d85f2501725e7bbfbbbc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
