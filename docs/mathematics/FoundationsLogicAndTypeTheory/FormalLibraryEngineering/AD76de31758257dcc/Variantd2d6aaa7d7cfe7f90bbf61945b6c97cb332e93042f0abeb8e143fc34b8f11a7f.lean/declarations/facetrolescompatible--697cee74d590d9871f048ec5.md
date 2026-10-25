# FacetRolesCompatible

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ff151465269c7b48f14359b769f8a0fab929c66e577a7ffe781d9b14835e85ec",
  "kind": "def",
  "lexical_name": "FacetRolesCompatible",
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
  "slug": "facetrolescompatible--697cee74d590d9871f048ec5",
  "source": {
    "blob": "661eba52eb4e035c9c5b52c60fd7cdf0cec3ce0b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 30,
    "line": 20,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AD76de31758257dcc/Variantd2d6aaa7d7cfe7f90bbf61945b6c97cb332e93042f0abeb8e143fc34b8f11a7f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:697cee74d590d9871f048ec5613d422c6e729ff0b3b811318f384192c67ef245",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AD76de31758257dcc/Variantd2d6aaa7d7cfe7f90bbf61945b6c97cb332e93042f0abeb8e143fc34b8f11a7f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ff151465269c7b48f14359b769f8a0fab929c66e577a7ffe781d9b14835e85ec`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 20–30.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def FacetRolesCompatible (registry : Registry) : Prop :=
  ∀ taxon ∈ registry.taxa,
    ∀ facetId ∈ taxon.facets,
      ∀ facet ∈ registry.facets.facets,
        facet.id = facetId →
          facet.compatibleRoles = ∅ ∨
            taxon.primaryRole ∈ facet.compatibleRoles

end Registry

end MathDiscovery.Taxonomy
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AD76de31758257dcc/Variantd2d6aaa7d7cfe7f90bbf61945b6c97cb332e93042f0abeb8e143fc34b8f11a7f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AD76de31758257dcc/Variantd2d6aaa7d7cfe7f90bbf61945b6c97cb332e93042f0abeb8e143fc34b8f11a7f.lean#L20).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `661eba52eb4e035c9c5b52c60fd7cdf0cec3ce0b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
