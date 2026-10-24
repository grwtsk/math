# LocallyOfFinitePresentation.SpecMap_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:328e1e0e-f215-bb26-d270-0fc7c5af5c06",
  "kind": "lemma",
  "lexical_name": "LocallyOfFinitePresentation.SpecMap_iff",
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
  "slug": "locallyoffinitepresentation-specmap-iff--e718a03d361b5a1114bee5a1",
  "source": {
    "blob": "472d80f4edc71f7d011ca0e3e6dcd116f729c5c9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 78,
    "line": 75,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/FinitePresentation/Variant11008ad8b7abd97c4208be7d56ec5dab2543e09788961eae667a267d4e5a091c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e718a03d361b5a1114bee5a1b2608dfbc27f7a296e80e769fd3db8a456821cf4",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/FinitePresentation/Variant11008ad8b7abd97c4208be7d56ec5dab2543e09788961eae667a267d4e5a091c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:328e1e0e-f215-bb26-d270-0fc7c5af5c06`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 75–78.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma LocallyOfFinitePresentation.SpecMap_iff {R S : CommRingCat.{u}} (f : R ⟶ S) :
    LocallyOfFinitePresentation (Spec.map f) ↔ f.hom.FinitePresentation :=
  HasRingHomProperty.Spec_iff

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/FinitePresentation/Variant11008ad8b7abd97c4208be7d56ec5dab2543e09788961eae667a267d4e5a091c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/FinitePresentation/Variant11008ad8b7abd97c4208be7d56ec5dab2543e09788961eae667a267d4e5a091c.lean#L75).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `472d80f4edc71f7d011ca0e3e6dcd116f729c5c9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
