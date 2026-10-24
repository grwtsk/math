# IsTopologicalDivisionRing

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8a364041840ca7f9b5ce59d2710d55369a91f3b7d027abf5075541afb4033863",
  "kind": "class",
  "lexical_name": "IsTopologicalDivisionRing",
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
  "slug": "istopologicaldivisionring--2aafd9336d4a4063823d72aa",
  "source": {
    "blob": "b46bdd2d8108efe0e15b812ebdbb559b387affd5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 56,
    "line": 47,
    "path": "GRWTSK/Topology/GeneralTopology/Field/Variant630b48f5f7312d377ed550b84f9da31bdf4c7ed50ff71f2723652966e3eb0162.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2aafd9336d4a4063823d72aa33e358774afc7f1b59d911b3ca2fae06abbda530",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Field/Variant630b48f5f7312d377ed550b84f9da31bdf4c7ed50ff71f2723652966e3eb0162.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8a364041840ca7f9b5ce59d2710d55369a91f3b7d027abf5075541afb4033863`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 47–56.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class IsTopologicalDivisionRing : Prop extends IsTopologicalRing K, HasContinuousInv₀ K

@[deprecated (since := "2025-03-25")] alias TopologicalDivisionRing := IsTopologicalDivisionRing

section Subfield

variable {α : Type*} [Field α] [TopologicalSpace α] [IsTopologicalDivisionRing α]

/-- The (topological-space) closure of a subfield of a topological field is
itself a subfield. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Field/Variant630b48f5f7312d377ed550b84f9da31bdf4c7ed50ff71f2723652966e3eb0162.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Field/Variant630b48f5f7312d377ed550b84f9da31bdf4c7ed50ff71f2723652966e3eb0162.lean#L47).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b46bdd2d8108efe0e15b812ebdbb559b387affd5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
