# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:acf0cb5f8007aa8bd41d52c6ddaafa461bdd78bf24dfa3f4fbe019c12462c9a3",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--3f4c8aa59aa5f9108700d8f7",
  "source": {
    "blob": "1d5addd904332b2e193d09a1b8372f9e636ed034",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 30,
    "line": 26,
    "path": "GRWTSK/Topology/GeneralTopology/Limits/Variantfefc8fcae9a38df4f57a06bbfb164d182e631fc4b52046766799d29f7fe89da9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3f4c8aa59aa5f9108700d8f7b6573063389ed57069e48be75c22f083f4a6c500",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Limits/Variantfefc8fcae9a38df4f57a06bbfb164d182e631fc4b52046766799d29f7fe89da9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:acf0cb5f8007aa8bd41d52c6ddaafa461bdd78bf24dfa3f4fbe019c12462c9a3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 26–30.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : HasExplicitFiniteCoproducts.{w, u} (fun Y ↦ TotallyDisconnectedSpace Y) where
  hasProp _ := { hasProp :=
    show TotallyDisconnectedSpace (Σ (_a : _), _) from inferInstance}

/-- A one-element space is terminal in `Profinite` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Limits/Variantfefc8fcae9a38df4f57a06bbfb164d182e631fc4b52046766799d29f7fe89da9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Limits/Variantfefc8fcae9a38df4f57a06bbfb164d182e631fc4b52046766799d29f7fe89da9.lean#L26).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1d5addd904332b2e193d09a1b8372f9e636ed034` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
