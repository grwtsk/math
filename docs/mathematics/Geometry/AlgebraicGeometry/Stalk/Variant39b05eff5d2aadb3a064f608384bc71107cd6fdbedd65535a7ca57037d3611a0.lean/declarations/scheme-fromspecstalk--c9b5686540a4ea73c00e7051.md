# Scheme.fromSpecStalk

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ed92d5f5f62abea3bdc4a8a3693c8e01d65af2c5119927c0e8f300c9f541205a",
  "kind": "def",
  "lexical_name": "Scheme.fromSpecStalk",
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
  "slug": "scheme-fromspecstalk--c9b5686540a4ea73c00e7051",
  "source": {
    "blob": "bb906440d71672d7656ff92a8e375534b3509a61",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 68,
    "line": 64,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Stalk/Variant39b05eff5d2aadb3a064f608384bc71107cd6fdbedd65535a7ca57037d3611a0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c9b5686540a4ea73c00e7051b8fba3b785da64835be22b89efe84439376479c4",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Stalk/Variant39b05eff5d2aadb3a064f608384bc71107cd6fdbedd65535a7ca57037d3611a0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ed92d5f5f62abea3bdc4a8a3693c8e01d65af2c5119927c0e8f300c9f541205a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 64–68.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def Scheme.fromSpecStalk (X : Scheme) (x : X) :
    Spec (X.presheaf.stalk x) ⟶ X :=
  (isAffineOpen_opensRange (X.affineOpenCover.map x)).fromSpecStalk (X.affineOpenCover.covers x)

@[simps over] noncomputable
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Stalk/Variant39b05eff5d2aadb3a064f608384bc71107cd6fdbedd65535a7ca57037d3611a0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Stalk/Variant39b05eff5d2aadb3a064f608384bc71107cd6fdbedd65535a7ca57037d3611a0.lean#L64).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bb906440d71672d7656ff92a8e375534b3509a61` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
