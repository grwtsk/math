# countableInterFilter_residual

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4f4f23b69285b9c31d5326ea5281afbea4bb3599fd96e542884e55242d52acac",
  "kind": "instance",
  "lexical_name": "countableInterFilter_residual",
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
  "slug": "countableinterfilter-residual--4523976bc40308b02371847d",
  "source": {
    "blob": "d55def4aab338b7a765993d04ea8ad343cd2708a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 205,
    "line": 201,
    "path": "GRWTSK/Topology/GeneralTopology/GDelta/Variantd1a4d2a0da70ba6cecc978bd4895c8eaec23def00445ea783fe029d7985df590.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4523976bc40308b02371847dad43fffc40279ceb72545859c583ad13179e3b08",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/GDelta/Variantd1a4d2a0da70ba6cecc978bd4895c8eaec23def00445ea783fe029d7985df590.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4f4f23b69285b9c31d5326ea5281afbea4bb3599fd96e542884e55242d52acac`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 201–205.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance countableInterFilter_residual : CountableInterFilter (residual α) := by
  rw [residual]; infer_instance
#align countable_Inter_filter_residual countableInterFilter_residual

/-- Dense open sets are residual. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/GDelta/Variantd1a4d2a0da70ba6cecc978bd4895c8eaec23def00445ea783fe029d7985df590.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/GDelta/Variantd1a4d2a0da70ba6cecc978bd4895c8eaec23def00445ea783fe029d7985df590.lean#L201).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d55def4aab338b7a765993d04ea8ad343cd2708a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
