# regionCode

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bda32b31d44c201daa36dfe7c573793583f05bc7c5ce86a8579ad7a78d1aa6f5",
  "kind": "def",
  "lexical_name": "regionCode",
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
  "slug": "regioncode--c2821dc40a05ecadb66b10b9",
  "source": {
    "blob": "2ec7d8b40e2fc8527cf5d25e5aedfc6629f562f0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 152,
    "line": 149,
    "path": "GRWTSK/Topology/MetricTopology/BooleanYoneda/Variant9ad95ad4c6f751efb5f79195bf1f3df86dd12be2deb9384442d23cf49436468e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c2821dc40a05ecadb66b10b9745c15e6fa931fec178ab6863ad6de5c6932ff3a",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/BooleanYoneda/Variant9ad95ad4c6f751efb5f79195bf1f3df86dd12be2deb9384442d23cf49436468e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bda32b31d44c201daa36dfe7c573793583f05bc7c5ce86a8579ad7a78d1aa6f5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 149–152.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def regionCode (probe : A → L) (x : L) : A → Prop :=
  fun a => probe a ≤ x

/-- Reconstruct a region by joining all probes selected by a bitfield. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/BooleanYoneda/Variant9ad95ad4c6f751efb5f79195bf1f3df86dd12be2deb9384442d23cf49436468e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/BooleanYoneda/Variant9ad95ad4c6f751efb5f79195bf1f3df86dd12be2deb9384442d23cf49436468e.lean#L149).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2ec7d8b40e2fc8527cf5d25e5aedfc6629f562f0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
