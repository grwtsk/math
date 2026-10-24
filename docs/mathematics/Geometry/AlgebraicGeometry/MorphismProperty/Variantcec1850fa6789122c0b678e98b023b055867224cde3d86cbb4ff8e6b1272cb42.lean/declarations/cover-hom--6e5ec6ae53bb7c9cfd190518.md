# Cover.Hom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1aef7ab4c23e48308a0f094eb2b539327cfbf279b6d75f2ce804bd25b1e16b3b",
  "kind": "abbrev",
  "lexical_name": "Cover.Hom",
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
  "slug": "cover-hom--6e5ec6ae53bb7c9cfd190518",
  "source": {
    "blob": "f8a648ff31ccc3a366b197560821e5e3023b5a18",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 262,
    "line": 253,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/MorphismProperty/Variantcec1850fa6789122c0b678e98b023b055867224cde3d86cbb4ff8e6b1272cb42.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6e5ec6ae53bb7c9cfd190518ed9b60bfdb671d902b1bc46b9b3816a55506a34a",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/MorphismProperty/Variantcec1850fa6789122c0b678e98b023b055867224cde3d86cbb4ff8e6b1272cb42.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1aef7ab4c23e48308a0f094eb2b539327cfbf279b6d75f2ce804bd25b1e16b3b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 253–262.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
abbrev Cover.Hom {X : Scheme.{u}} (𝒰 𝒱 : Cover.{v} K X) :=
  Precoverage.ZeroHypercover.Hom K 𝒰 𝒱

end category

end MorphismProperty

end Scheme

end AlgebraicGeometry
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/MorphismProperty/Variantcec1850fa6789122c0b678e98b023b055867224cde3d86cbb4ff8e6b1272cb42.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/MorphismProperty/Variantcec1850fa6789122c0b678e98b023b055867224cde3d86cbb4ff8e6b1272cb42.lean#L253).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f8a648ff31ccc3a366b197560821e5e3023b5a18` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
