# residual

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:16ca4a489b5abc829b246ac445472ad0e2533d7e8d9116c21d57d40670e9ee1f",
  "kind": "def",
  "lexical_name": "residual",
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
  "slug": "residual--aaca5b5c140b04ee62c7d3ff",
  "source": {
    "blob": "d55def4aab338b7a765993d04ea8ad343cd2708a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 200,
    "line": 197,
    "path": "GRWTSK/Topology/GeneralTopology/GDelta/Variantd1a4d2a0da70ba6cecc978bd4895c8eaec23def00445ea783fe029d7985df590.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:aaca5b5c140b04ee62c7d3ffe3a1f15b10161b7df4410b33e73cdb2737a2783c",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/GDelta/Variantd1a4d2a0da70ba6cecc978bd4895c8eaec23def00445ea783fe029d7985df590.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:16ca4a489b5abc829b246ac445472ad0e2533d7e8d9116c21d57d40670e9ee1f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 197–200.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def residual (α : Type*) [TopologicalSpace α] : Filter α :=
  Filter.countableGenerate { t | IsOpen t ∧ Dense t }
#align residual residual

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/GDelta/Variantd1a4d2a0da70ba6cecc978bd4895c8eaec23def00445ea783fe029d7985df590.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/GDelta/Variantd1a4d2a0da70ba6cecc978bd4895c8eaec23def00445ea783fe029d7985df590.lean#L197).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d55def4aab338b7a765993d04ea8ad343cd2708a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
