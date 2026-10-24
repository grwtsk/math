# Set.Infinite.exists_accPt_principal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:50b6c5fb-6c5c-9b3d-5e67-eea63fbfe66b",
  "kind": "lemma",
  "lexical_name": "Set.Infinite.exists_accPt_principal",
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
  "slug": "set-infinite-exists-accpt-principal--afe3e644eed7fa83dc79d23e",
  "source": {
    "blob": "27af4af59e3a778358fce087bbe1c024f6c5d810",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 940,
    "line": 938,
    "path": "GRWTSK/Topology/GeneralTopology/Compact/Variant14f8cde85c7b69f8f4c2e0aad98e93c7e198857a89f905daa1e881f7f08899b3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:afe3e644eed7fa83dc79d23e20ce7230efacb5bdeb66a0451afb4947087f216f",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Compact/Variant14f8cde85c7b69f8f4c2e0aad98e93c7e198857a89f905daa1e881f7f08899b3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:50b6c5fb-6c5c-9b3d-5e67-eea63fbfe66b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 938–940.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Set.Infinite.exists_accPt_principal [CompactSpace X] (hs : s.Infinite) : ∃ x, AccPt x (𝓟 s) :=
  hs.exists_accPt_cofinite_inf_principal.imp fun _x hx ↦ hx.mono inf_le_right

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Compact/Variant14f8cde85c7b69f8f4c2e0aad98e93c7e198857a89f905daa1e881f7f08899b3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Compact/Variant14f8cde85c7b69f8f4c2e0aad98e93c7e198857a89f905daa1e881f7f08899b3.lean#L938).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `27af4af59e3a778358fce087bbe1c024f6c5d810` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
