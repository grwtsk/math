# Filter.EventuallyEq.isLocalMinOn_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5874a9ea-2ee0-2e27-03f7-c75f09c2b73b",
  "kind": "theorem",
  "lexical_name": "Filter.EventuallyEq.isLocalMinOn_iff",
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
  "slug": "filter-eventuallyeq-islocalminon-iff--e819399d6caf186f8a9920ed",
  "source": {
    "blob": "bd8872157a5fd676e13d91a87196f49f82f3097d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 526,
    "line": 523,
    "path": "GRWTSK/Topology/GeneralTopology/LocalExtr/Variantdc2a0def0d9853b6f8202e3cb324e64b2eec4e747652c2517ec2d63cdcd0bd1c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e819399d6caf186f8a9920ed72c47828dc28856eb31ff72cade4bbc8cc31d154",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LocalExtr/Variantdc2a0def0d9853b6f8202e3cb324e64b2eec4e747652c2517ec2d63cdcd0bd1c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5874a9ea-2ee0-2e27-03f7-c75f09c2b73b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 523–526.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
nonrec theorem Filter.EventuallyEq.isLocalMinOn_iff {f g : α → β} {a : α} (heq : f =ᶠ[𝓝[s] a] g)
    (hmem : a ∈ s) : IsLocalMinOn f s a ↔ IsLocalMinOn g s a :=
  heq.isMinFilter_iff <| heq.eq_of_nhdsWithin hmem

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LocalExtr/Variantdc2a0def0d9853b6f8202e3cb324e64b2eec4e747652c2517ec2d63cdcd0bd1c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LocalExtr/Variantdc2a0def0d9853b6f8202e3cb324e64b2eec4e747652c2517ec2d63cdcd0bd1c.lean#L523).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bd8872157a5fd676e13d91a87196f49f82f3097d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
