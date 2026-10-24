# HasAffineProperty.affineAnd_isStableUnderBaseChange

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:51351bb4-8f2f-082e-c39a-f65c0b2a7f5c",
  "kind": "lemma",
  "lexical_name": "HasAffineProperty.affineAnd_isStableUnderBaseChange",
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
  "slug": "hasaffineproperty-affineand-isstableunderbasechange--8eab2b674c8b33a7895c3c61",
  "source": {
    "blob": "41a2da0fabaa493e5d93539a169e7b6e452039e0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 228,
    "line": 220,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/AffineAnd/Variant24df50529ed18088843318c6322869c35b5fbe42293faf1c41a6dd6a5835ecfe.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8eab2b674c8b33a7895c3c6186685e3f935ddc0e5faccb238d5f8ca798802345",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/AffineAnd/Variant24df50529ed18088843318c6322869c35b5fbe42293faf1c41a6dd6a5835ecfe.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:51351bb4-8f2f-082e-c39a-f65c0b2a7f5c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 220–228.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma HasAffineProperty.affineAnd_isStableUnderBaseChange {P : MorphismProperty Scheme.{u}}
    (_ : HasAffineProperty P (affineAnd Q)) (hQi : RingHom.RespectsIso Q)
    (hQb : RingHom.IsStableUnderBaseChange Q) :
    P.IsStableUnderBaseChange :=
  HasAffineProperty.isStableUnderBaseChange
    (AlgebraicGeometry.affineAnd_isStableUnderBaseChange hQi hQb)

/-- If `Q` contains identities and respects isomorphisms (i.e. is satisfied by isomorphisms),
and `P` is affine locally defined by `affineAnd Q`, then `P` contains identities. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/AffineAnd/Variant24df50529ed18088843318c6322869c35b5fbe42293faf1c41a6dd6a5835ecfe.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/AffineAnd/Variant24df50529ed18088843318c6322869c35b5fbe42293faf1c41a6dd6a5835ecfe.lean#L220).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `41a2da0fabaa493e5d93539a169e7b6e452039e0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
