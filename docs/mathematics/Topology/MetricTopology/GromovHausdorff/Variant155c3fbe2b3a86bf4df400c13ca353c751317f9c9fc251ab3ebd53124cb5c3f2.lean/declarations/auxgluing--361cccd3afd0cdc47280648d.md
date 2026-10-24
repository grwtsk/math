# auxGluing

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bc1f8217c72d5a64ac61a351c6da145c0facf5b7571cd53f26323bbc76f45138",
  "kind": "def",
  "lexical_name": "auxGluing",
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
  "slug": "auxgluing--361cccd3afd0cdc47280648d",
  "source": {
    "blob": "56c1b85953815730c1ae4ca2fcb47b663936378d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 971,
    "line": 963,
    "path": "GRWTSK/Topology/MetricTopology/GromovHausdorff/Variant155c3fbe2b3a86bf4df400c13ca353c751317f9c9fc251ab3ebd53124cb5c3f2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:361cccd3afd0cdc47280648dae8776a5a8697d71eedd74d5cf06ef937ce38d24",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/GromovHausdorff/Variant155c3fbe2b3a86bf4df400c13ca353c751317f9c9fc251ab3ebd53124cb5c3f2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bc1f8217c72d5a64ac61a351c6da145c0facf5b7571cd53f26323bbc76f45138`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 963–971.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def auxGluing (n : ℕ) : AuxGluingStruct (X n) :=
  Nat.recOn n default fun n Y =>
    { Space := GlueSpace Y.isom (isometry_optimalGHInjl (X n) (X (n + 1)))
      metric := by infer_instance
      embed :=
        toGlueR Y.isom (isometry_optimalGHInjl (X n) (X (n + 1))) ∘ optimalGHInjr (X n) (X (n + 1))
      isom := (toGlueR_isometry _ _).comp (isometry_optimalGHInjr (X n) (X (n + 1))) }

/-- The Gromov-Hausdorff space is complete. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/GromovHausdorff/Variant155c3fbe2b3a86bf4df400c13ca353c751317f9c9fc251ab3ebd53124cb5c3f2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/GromovHausdorff/Variant155c3fbe2b3a86bf4df400c13ca353c751317f9c9fc251ab3ebd53124cb5c3f2.lean#L963).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `56c1b85953815730c1ae4ca2fcb47b663936378d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
