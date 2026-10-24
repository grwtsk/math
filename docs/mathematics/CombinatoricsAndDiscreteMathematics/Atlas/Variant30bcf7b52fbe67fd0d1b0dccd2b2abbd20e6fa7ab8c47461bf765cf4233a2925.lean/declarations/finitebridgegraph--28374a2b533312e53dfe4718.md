# FiniteBridgeGraph

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fafa630d163a521e1dbe8d9d0818cc471602333796e173903bb8868848e50829",
  "kind": "structure",
  "lexical_name": "FiniteBridgeGraph",
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
  "slug": "finitebridgegraph--28374a2b533312e53dfe4718",
  "source": {
    "blob": "52e64fa0670caa71a59b490e2c597fb0f4c355f6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 242,
    "line": 226,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Atlas/Variant30bcf7b52fbe67fd0d1b0dccd2b2abbd20e6fa7ab8c47461bf765cf4233a2925.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:28374a2b533312e53dfe471866f204984db9b33d6c72414fb6694cdc7ecd9cf5",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Atlas/Variant30bcf7b52fbe67fd0d1b0dccd2b2abbd20e6fa7ab8c47461bf765cf4233a2925.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fafa630d163a521e1dbe8d9d0818cc471602333796e173903bb8868848e50829`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 226–242.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure FiniteBridgeGraph (V : Type v) (E : Type w)
    [Fintype V] [DecidableEq V] [Fintype E] [DecidableEq E] where
  /-- Selected finite node inventory. -/
  nodes : Finset V
  /-- Selected finite edge identities whose checked records are admitted. -/
  bridges : Finset E
  /-- Mathematical interface assigned to each node identity. -/
  interface : V → Interface.{u}
  /-- Checked bridge record associated with each edge identity. -/
  admitted : E → VerifiedBridge interface
  /-- Every selected edge has both endpoints in the selected node inventory. -/
  endpoints_mem : ∀ e ∈ bridges,
    (admitted e).source ∈ nodes ∧ (admitted e).target ∈ nodes

/-- A fixed checked signature binds each finite edge ID to its interfaces,
endpoints, evidence and provenance. Attachments select from this catalog;
changing its semantics requires a new checked catalog. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Atlas/Variant30bcf7b52fbe67fd0d1b0dccd2b2abbd20e6fa7ab8c47461bf765cf4233a2925.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Atlas/Variant30bcf7b52fbe67fd0d1b0dccd2b2abbd20e6fa7ab8c47461bf765cf4233a2925.lean#L226).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `52e64fa0670caa71a59b490e2c597fb0f4c355f6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
