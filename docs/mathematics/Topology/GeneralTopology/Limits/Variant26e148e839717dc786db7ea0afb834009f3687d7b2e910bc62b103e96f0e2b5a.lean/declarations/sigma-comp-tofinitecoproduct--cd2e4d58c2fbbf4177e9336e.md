# Sigma.ι_comp_toFiniteCoproduct

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9bbace37-cc44-a7d2-3d49-e116d247f5db",
  "kind": "theorem",
  "lexical_name": "Sigma.ι_comp_toFiniteCoproduct",
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
  "slug": "sigma-comp-tofinitecoproduct--cd2e4d58c2fbbf4177e9336e",
  "source": {
    "blob": "aa7216b813107a880f73100ab5a34e8d0e0af0fa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 220,
    "line": 213,
    "path": "GRWTSK/Topology/GeneralTopology/Limits/Variant26e148e839717dc786db7ea0afb834009f3687d7b2e910bc62b103e96f0e2b5a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cd2e4d58c2fbbf4177e9336e8ffdb2b9622276789ea965448f4a773f6cabc988",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Limits/Variant26e148e839717dc786db7ea0afb834009f3687d7b2e910bc62b103e96f0e2b5a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9bbace37-cc44-a7d2-3d49-e116d247f5db`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 213–220.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Sigma.ι_comp_toFiniteCoproduct (a : α) :
    (Limits.Sigma.ι X a) ≫ (coproductIsoCoproduct X).inv = finiteCoproduct.ι X a := by
  dsimp [coproductIsoCoproduct]
  simp only [Limits.colimit.comp_coconePointUniqueUpToIso_inv, finiteCoproduct.cocone_pt,
    finiteCoproduct.cocone_ι, Discrete.natTrans_app]

/-- The homeomorphism from the explicit finite coproducts to the abstract coproduct. -/
noncomputable
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Limits/Variant26e148e839717dc786db7ea0afb834009f3687d7b2e910bc62b103e96f0e2b5a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Limits/Variant26e148e839717dc786db7ea0afb834009f3687d7b2e910bc62b103e96f0e2b5a.lean#L213).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aa7216b813107a880f73100ab5a34e8d0e0af0fa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
