# ExactLocusAssignment

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b48053f4fdfd732fb8f05f57d95e338732f69518051815c6bfd6d723d5cf51cb",
  "kind": "structure",
  "lexical_name": "ExactLocusAssignment",
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
  "slug": "exactlocusassignment--06c28c1e01718e257817cb24",
  "source": {
    "blob": "ac19591131f632b7871780c296d42d26831cef6e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 56,
    "line": 48,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Carrier/Variant4896de3999b8e81a3fd7dbb551c56f6e0341873da1b6afd96aaa862455e91ae0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:06c28c1e01718e257817cb24900fb5f0e5c52ad9f80631071afe5912882f85c8",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Carrier/Variant4896de3999b8e81a3fd7dbb551c56f6e0341873da1b6afd96aaa862455e91ae0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b48053f4fdfd732fb8f05f57d95e338732f69518051815c6bfd6d723d5cf51cb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 48–56.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure ExactLocusAssignment
    (registry : WorldModelRegistry)
    (region : ActiveModelRegion registry)
    (carrier : CommunicationCarrier) where
  locus : ∀ id, id ∈ region.activeModels →
    ModelLocus carrier (registry.model id)
  exact : ∀ id member, (locus id member).exactSupport

/-- CAR-01: every active model in an assignment has a finite exact locus. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Carrier/Variant4896de3999b8e81a3fd7dbb551c56f6e0341873da1b6afd96aaa862455e91ae0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Carrier/Variant4896de3999b8e81a3fd7dbb551c56f6e0341873da1b6afd96aaa862455e91ae0.lean#L48).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ac19591131f632b7871780c296d42d26831cef6e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
