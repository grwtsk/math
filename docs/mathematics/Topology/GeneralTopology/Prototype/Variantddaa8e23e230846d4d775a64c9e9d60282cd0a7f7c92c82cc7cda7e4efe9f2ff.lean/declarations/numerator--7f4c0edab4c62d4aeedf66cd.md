# numerator

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:13911e0f49e249297df311ee8ded671c3aa408854653266ad95aac79731ecbab",
  "kind": "def",
  "lexical_name": "numerator",
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
  "slug": "numerator--7f4c0edab4c62d4aeedf66cd",
  "source": {
    "blob": "294ed8da1f3cc479b35abd0cc11a297176c5951f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 87,
    "line": 85,
    "path": "GRWTSK/Topology/GeneralTopology/Prototype/Variantddaa8e23e230846d4d775a64c9e9d60282cd0a7f7c92c82cc7cda7e4efe9f2ff.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7f4c0edab4c62d4aeedf66cd59175e317d730edbadeef4ff5276fbde3ccfcf68",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Prototype/Variantddaa8e23e230846d4d775a64c9e9d60282cd0a7f7c92c82cc7cda7e4efe9f2ff.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:13911e0f49e249297df311ee8ded671c3aa408854653266ad95aac79731ecbab`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 85–87.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def numerator (S : RationalSegment E n) (t : ℝ) : E :=
  ∑ i : Fin (n + 1), (S.weight i * bernstein n i t) • S.point i

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Prototype/Variantddaa8e23e230846d4d775a64c9e9d60282cd0a7f7c92c82cc7cda7e4efe9f2ff.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Prototype/Variantddaa8e23e230846d4d775a64c9e9d60282cd0a7f7c92c82cc7cda7e4efe9f2ff.lean#L85).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `294ed8da1f3cc479b35abd0cc11a297176c5951f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
