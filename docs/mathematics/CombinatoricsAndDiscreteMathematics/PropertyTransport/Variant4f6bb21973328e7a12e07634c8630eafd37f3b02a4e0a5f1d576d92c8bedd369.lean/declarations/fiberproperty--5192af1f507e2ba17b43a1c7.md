# FiberProperty

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:08ce8ecd7792c181c46bfa20b83d9d64659c566bd40006f0a420a37088cd296a",
  "kind": "structure",
  "lexical_name": "FiberProperty",
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
  "slug": "fiberproperty--5192af1f507e2ba17b43a1c7",
  "source": {
    "blob": "5db49e5aa7bdd14dbad268b73fad1ee8338997b7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 228,
    "line": 221,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/PropertyTransport/Variant4f6bb21973328e7a12e07634c8630eafd37f3b02a4e0a5f1d576d92c8bedd369.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5192af1f507e2ba17b43a1c7a40045c11c4e101bec22a8296df1209357a659ea",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/PropertyTransport/Variant4f6bb21973328e7a12e07634c8630eafd37f3b02a4e0a5f1d576d92c8bedd369.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:08ce8ecd7792c181c46bfa20b83d9d64659c566bd40006f0a420a37088cd296a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 221–228.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure FiberProperty
    (Base : Type u)
    (Fiber : Base → Type v) where
  propertyId : StableId
  Holds : ∀ base, Fiber base → Prop
  authority : Profile

/-- A proof that one named property is natural along every admitted path. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/PropertyTransport/Variant4f6bb21973328e7a12e07634c8630eafd37f3b02a4e0a5f1d576d92c8bedd369.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/PropertyTransport/Variant4f6bb21973328e7a12e07634c8630eafd37f3b02a4e0a5f1d576d92c8bedd369.lean#L221).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5db49e5aa7bdd14dbad268b73fad1ee8338997b7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
