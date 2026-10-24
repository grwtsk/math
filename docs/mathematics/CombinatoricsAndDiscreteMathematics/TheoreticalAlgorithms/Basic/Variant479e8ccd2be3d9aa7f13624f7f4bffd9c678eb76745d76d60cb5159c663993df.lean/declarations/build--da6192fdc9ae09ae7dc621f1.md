# build

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b950615615e29b119fb88068500f876bdd289754de425ce136572dee7c58369b",
  "kind": "def",
  "lexical_name": "build",
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
  "slug": "build--da6192fdc9ae09ae7dc621f1",
  "source": {
    "blob": "dee9ca92ddea02945751a6973c891ed8d657a9ad",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 813,
    "line": 778,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant479e8ccd2be3d9aa7f13624f7f4bffd9c678eb76745d76d60cb5159c663993df.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:da6192fdc9ae09ae7dc621f172c53be03c3142dc57ccf9587a3c417a104e2e61",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant479e8ccd2be3d9aa7f13624f7f4bffd9c678eb76745d76d60cb5159c663993df.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b950615615e29b119fb88068500f876bdd289754de425ce136572dee7c58369b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 778–813.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def build (b : Builder) : URI :=
  let scheme := (b.scheme.getD ⟨"https", by decide⟩)

  let authority :=
    if b.host.isSome then
      some {
        userInfo := b.userInfo
        host := b.host.getD default
        port := b.port
      }
    else none

  let path : Path := {
    segments := b.pathSegments.map EncodedSegment.encode
    absolute := true
  }

  let query :=
    b.query.map fun (k, v) =>
      (EncodedQueryParam.encode k, v.map EncodedQueryParam.encode)

  let query := URI.Query.ofList query.toList

  {
    scheme
    authority := authority
    path
    query := query
    fragment := b.fragment
  }

end Builder

/--
Returns a new URI with the scheme replaced.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant479e8ccd2be3d9aa7f13624f7f4bffd9c678eb76745d76d60cb5159c663993df.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant479e8ccd2be3d9aa7f13624f7f4bffd9c678eb76745d76d60cb5159c663993df.lean#L778).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dee9ca92ddea02945751a6973c891ed8d657a9ad` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
