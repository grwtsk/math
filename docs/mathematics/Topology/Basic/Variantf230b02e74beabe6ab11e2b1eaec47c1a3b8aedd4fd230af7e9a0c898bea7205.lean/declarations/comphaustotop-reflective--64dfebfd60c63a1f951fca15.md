# compHausToTop.reflective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:81fd2e7556a0bd733c4a746cec96be9045b1a91a9de682a264118ee3d4985fdf",
  "kind": "instance",
  "lexical_name": "compHausToTop.reflective",
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
  "slug": "comphaustotop-reflective--64dfebfd60c63a1f951fca15",
  "source": {
    "blob": "189c61173f1eee60ef5d4e4d945dddd68fe7137c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 271,
    "line": 267,
    "path": "GRWTSK/Topology/Basic/Variantf230b02e74beabe6ab11e2b1eaec47c1a3b8aedd4fd230af7e9a0c898bea7205.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:64dfebfd60c63a1f951fca15aca7ecd1f5a99f8b5d2d14cac61dc56ae6c939e3",
  "verification": {
    "reference": "docs/verification/Topology/Basic/Variantf230b02e74beabe6ab11e2b1eaec47c1a3b8aedd4fd230af7e9a0c898bea7205.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:81fd2e7556a0bd733c4a746cec96be9045b1a91a9de682a264118ee3d4985fdf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 267–271.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable instance compHausToTop.reflective : Reflective compHausToTop
    where toIsRightAdjoint := ⟨topToCompHaus, Adjunction.adjunctionOfEquivLeft _ _⟩
set_option linter.uppercaseLean3 false in
#align CompHaus_to_Top.reflective compHausToTop.reflective

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Topology/Basic/Variantf230b02e74beabe6ab11e2b1eaec47c1a3b8aedd4fd230af7e9a0c898bea7205.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/Basic/Variantf230b02e74beabe6ab11e2b1eaec47c1a3b8aedd4fd230af7e9a0c898bea7205.lean#L267).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `189c61173f1eee60ef5d4e4d945dddd68fe7137c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
