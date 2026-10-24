# commonIntTangents

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:21f130f76acb6f48832cbe777c995982451909ee65a7b8dcc6163975bf1af57e",
  "kind": "def",
  "lexical_name": "commonIntTangents",
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
  "slug": "commoninttangents--b94f67f817f1a33bc84f01bf",
  "source": {
    "blob": "ebb9a37c11a420956e1454d1ec57bcab4564a6ed",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 370,
    "line": 364,
    "path": "GRWTSK/Topology/MetricTopology/Tangent/Variant524d141d9e21b780d11fbb193c860776b1e7fbc963afd7b1b4c5630ef772467c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b94f67f817f1a33bc84f01bf4f7115a09f2c7f69fde793982db8be75eefebced",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Tangent/Variant524d141d9e21b780d11fbb193c860776b1e7fbc963afd7b1b4c5630ef772467c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:21f130f76acb6f48832cbe777c995982451909ee65a7b8dcc6163975bf1af57e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 364–370.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def commonIntTangents (s₁ s₂ : Sphere P) : Set (AffineSubspace ℝ P) :=
  {as ∈ s₁.commonTangents s₂ | ∃ p ∈ as, Wbtw ℝ s₁.center p s₂.center}

/-- The set of all maximal common external tangent spaces to the spheres `s₁` and `s₂`: tangent
spaces not containing a point strictly between the centers of the spheres. (In the degenerate case
where the two spheres are the same sphere with radius 0, the space is considered both an internal
and an external common tangent.) -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Tangent/Variant524d141d9e21b780d11fbb193c860776b1e7fbc963afd7b1b4c5630ef772467c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Tangent/Variant524d141d9e21b780d11fbb193c860776b1e7fbc963afd7b1b4c5630ef772467c.lean#L364).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ebb9a37c11a420956e1454d1ec57bcab4564a6ed` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
