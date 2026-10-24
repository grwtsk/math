# prodMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:90958477-a493-f3dc-50ea-681e09e04b44",
  "kind": "theorem",
  "lexical_name": "prodMap",
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
  "slug": "prodmap--2988250e66af0cea52ab2dc5",
  "source": {
    "blob": "1b2d6db7f87cab54ef603327a5fed6069f5d23d7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 595,
    "line": 584,
    "path": "GRWTSK/Geometry/Submersion/Variant0f57a2c92083c4c58bff412abcd0d02d5c8bd3a14b2465b5ce45d782a6fc8416.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2988250e66af0cea52ab2dc5ff76f81f82ced49ef2532804928c28e6d80d005f",
  "verification": {
    "reference": "docs/verification/Geometry/Submersion/Variant0f57a2c92083c4c58bff412abcd0d02d5c8bd3a14b2465b5ce45d782a6fc8416.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:90958477-a493-f3dc-50ea-681e09e04b44`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 584–595.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem prodMap {f : M → N} {g : M' → N'}
    [IsManifold I n M] [IsManifold I' n M'] [IsManifold J n N] [IsManifold J' n N']
    (h : IsSubmersionOfComplement F I J n f) (h' : IsSubmersionOfComplement F' I' J' n g) :
    IsSubmersionOfComplement (F × F') (I.prod I') (J.prod J') n (Prod.map f g) :=
  fun ⟨x, x'⟩ ↦ (h x).prodMap (h' x')

/-- If `f` is a submersion w.r.t. some complement `F`, it is a submersion.

Note that the proof contains a small formalisation-related subtlety: `F` can live in any universe,
while being a submersion requires the existence of a complement in the same universe as
the model normed space of `N`. This is solved by `smallComplement` and `smallEquiv`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Geometry/Submersion/Variant0f57a2c92083c4c58bff412abcd0d02d5c8bd3a14b2465b5ce45d782a6fc8416.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/Submersion/Variant0f57a2c92083c4c58bff412abcd0d02d5c8bd3a14b2465b5ce45d782a6fc8416.lean#L584).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1b2d6db7f87cab54ef603327a5fed6069f5d23d7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
