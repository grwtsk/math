# NumberFieldNorthcottData

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:51dcd7577afe75050fba66dfbe0a390bd834f2261ae1dbd859fa2924d5afd871",
  "kind": "structure",
  "lexical_name": "NumberFieldNorthcottData",
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
  "slug": "numberfieldnorthcottdata--8da8fe13d64a55cb8ac1d174",
  "source": {
    "blob": "b9926a3bca42651438233aab0c20d077755569f1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 484,
    "line": 446,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Field/Variant942cdb024b30ebc7b6433c586da67d9114607c6aaa23cf0f57eaf91f64861736.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8da8fe13d64a55cb8ac1d17442daa67a59c321b52435dfe14515cf13c223ee91",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Field/Variant942cdb024b30ebc7b6433c586da67d9114607c6aaa23cf0f57eaf91f64861736.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:51dcd7577afe75050fba66dfbe0a390bd834f2261ae1dbd859fa2924d5afd871`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 446–484.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure NumberFieldNorthcottData
    {K : LawfulFieldLike.{u}}
    {N : NumberFieldCertificate K}
    {P : NumberFieldPlaceProductFormulaCertificate N}
    (H : NumberFieldProjectiveHeightCertificate P) where
  degreeBound : Nat
  heightBound : H.projectiveHeight.HeightValue
  boundedDegree :
    H.projectiveSpace.Point → Prop
  boundedHeight :
    H.projectiveSpace.Point → Prop
  boundedHeight_eq_heightBound :
    ∀ x, boundedHeight x ↔
      H.projectiveHeight.boundedBy heightBound x
  boundedDegreeAndHeightPoints :
    List H.projectiveSpace.Point
  boundedDegreeAndHeightComplete : Prop
  boundedDegreeAndHeightCompleteCertified :
    boundedDegreeAndHeightComplete
  rationalPointOverBaseField :
    H.projectiveSpace.Point → Prop
  rationalPointsOverBaseFieldHaveBoundedDegree : Prop
  rationalPointsOverBaseFieldHaveBoundedDegreeCertified :
    rationalPointsOverBaseFieldHaveBoundedDegree
  finiteHeightBallForBaseFieldRationalPoints :
    List H.projectiveSpace.Point
  finiteHeightBallForBaseFieldRationalPointsComplete : Prop
  finiteHeightBallForBaseFieldRationalPointsCompleteCertified :
    finiteHeightBallForBaseFieldRationalPointsComplete
  boundary : List String

/--
Northcott finiteness provenance for projective height over a certified number
field.

This remains certificate-gated: the file does not prove Northcott's theorem.
It now records concrete finite candidate lists and predicates rather than bare
"condition specified" placeholders.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Field/Variant942cdb024b30ebc7b6433c586da67d9114607c6aaa23cf0f57eaf91f64861736.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Field/Variant942cdb024b30ebc7b6433c586da67d9114607c6aaa23cf0f57eaf91f64861736.lean#L446).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b9926a3bca42651438233aab0c20d077755569f1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
