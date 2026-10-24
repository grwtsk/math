# IsConvexSet

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f68f01bb953464f32cb90813c85ddf38593664c68fe45f578fac74e5172a7c9d",
  "kind": "def",
  "lexical_name": "IsConvexSet",
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
  "slug": "isconvexset--3e94a8ea39abe07d2515abd4",
  "source": {
    "blob": "dd7446bdee129cc1faeb97429d1b4af55a52e8b3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 44,
    "line": 43,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Set/Variant69048ede1e831281d7dd4b4c0d36f62f07dc3d92cf2cd0f55cd0d992ddde63c0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3e94a8ea39abe07d2515abd41e08ed1a5cdb045f4b519417f6411bd76c5a8fc2",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Set/Variant69048ede1e831281d7dd4b4c0d36f62f07dc3d92cf2cd0f55cd0d992ddde63c0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f68f01bb953464f32cb90813c85ddf38593664c68fe45f578fac74e5172a7c9d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 43–44.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def IsConvexSet : Prop := ∀ ⦃w : StdSimplex R X⦄, ↑w.weights.support ⊆ s → w.sConvexComb ∈ s

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Set/Variant69048ede1e831281d7dd4b4c0d36f62f07dc3d92cf2cd0f55cd0d992ddde63c0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Set/Variant69048ede1e831281d7dd4b4c0d36f62f07dc3d92cf2cd0f55cd0d992ddde63c0.lean#L43).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dd7446bdee129cc1faeb97429d1b4af55a52e8b3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
