# basicOpen_mul_le_right

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a5887b65-48b6-db1e-cdf9-ef032ab691b8",
  "kind": "theorem",
  "lexical_name": "basicOpen_mul_le_right",
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
  "slug": "basicopen-mul-le-right--92a1aabd741a7d05657a256c",
  "source": {
    "blob": "9d37bd0a7568d2a7efa593cc80742b38468baa89",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 380,
    "line": 376,
    "path": "GRWTSK/Topology/GeneralTopology/Topology/Varianta0e7c1cb6d5fa16ac86396b19c86c4322032f96ea98503735f323a58bb1a8df9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:92a1aabd741a7d05657a256c29df0b6b535c9195cdcd1ae583652b2487ea3db6",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Topology/Varianta0e7c1cb6d5fa16ac86396b19c86c4322032f96ea98503735f323a58bb1a8df9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a5887b65-48b6-db1e-cdf9-ef032ab691b8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 376–380.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem basicOpen_mul_le_right (f g : A) : basicOpen 𝒜 (f * g) ≤ basicOpen 𝒜 g := by
  rw [basicOpen_mul 𝒜 f g]
  exact inf_le_right

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Topology/Varianta0e7c1cb6d5fa16ac86396b19c86c4322032f96ea98503735f323a58bb1a8df9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Topology/Varianta0e7c1cb6d5fa16ac86396b19c86c4322032f96ea98503735f323a58bb1a8df9.lean#L376).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9d37bd0a7568d2a7efa593cc80742b38468baa89` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
