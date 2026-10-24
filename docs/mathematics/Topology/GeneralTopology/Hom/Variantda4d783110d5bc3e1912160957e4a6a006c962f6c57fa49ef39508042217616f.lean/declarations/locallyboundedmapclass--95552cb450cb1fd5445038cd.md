# LocallyBoundedMapClass

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:66ca5de2046706eaad09a69e8b005f13e28595e08206b24f0573bb08a712b22c",
  "kind": "class",
  "lexical_name": "LocallyBoundedMapClass",
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
  "slug": "locallyboundedmapclass--95552cb450cb1fd5445038cd",
  "source": {
    "blob": "50eeed551084684f7ac76687dc0b7809962647b2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 66,
    "line": 55,
    "path": "GRWTSK/Topology/GeneralTopology/Hom/Variantda4d783110d5bc3e1912160957e4a6a006c962f6c57fa49ef39508042217616f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:95552cb450cb1fd5445038cdab0695eeace6346d1bdcdc330007ee0d72362fba",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Hom/Variantda4d783110d5bc3e1912160957e4a6a006c962f6c57fa49ef39508042217616f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:66ca5de2046706eaad09a69e8b005f13e28595e08206b24f0573bb08a712b22c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 55–66.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class LocallyBoundedMapClass (F : Type*) (α β : outParam Type*) [Bornology α]
    [Bornology β] [FunLike F α β] : Prop where
  /-- The pullback of the `Bornology.cobounded` filter under the function is contained in the
  cobounded filter. Equivalently, the function maps bounded sets to bounded sets. -/
  comap_cobounded_le (f : F) : (cobounded β).comap f ≤ cobounded α

end

export LocallyBoundedMapClass (comap_cobounded_le)

variable [FunLike F α β]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Hom/Variantda4d783110d5bc3e1912160957e4a6a006c962f6c57fa49ef39508042217616f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Hom/Variantda4d783110d5bc3e1912160957e4a6a006c962f6c57fa49ef39508042217616f.lean#L55).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `50eeed551084684f7ac76687dc0b7809962647b2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
