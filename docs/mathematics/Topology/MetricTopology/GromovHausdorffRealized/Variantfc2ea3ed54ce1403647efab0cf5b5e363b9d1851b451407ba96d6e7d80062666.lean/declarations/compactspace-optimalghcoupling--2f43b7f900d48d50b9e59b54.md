# compactSpace_optimalGHCoupling

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3c6e1323e9d6839ce346bb0a1aef707418275fcbca9dfcf247fafce245dbe6a2",
  "kind": "instance",
  "lexical_name": "compactSpace_optimalGHCoupling",
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
  "slug": "compactspace-optimalghcoupling--2f43b7f900d48d50b9e59b54",
  "source": {
    "blob": "82f907a1e1323a2487d6bab6c1fa2cf06a775609",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 475,
    "line": 467,
    "path": "GRWTSK/Topology/MetricTopology/GromovHausdorffRealized/Variantfc2ea3ed54ce1403647efab0cf5b5e363b9d1851b451407ba96d6e7d80062666.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2f43b7f900d48d50b9e59b5483e886ebdeb9e8b5ebfa180be76e3209855eec8b",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/GromovHausdorffRealized/Variantfc2ea3ed54ce1403647efab0cf5b5e363b9d1851b451407ba96d6e7d80062666.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3c6e1323e9d6839ce346bb0a1aef707418275fcbca9dfcf247fafce245dbe6a2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 467–475.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance compactSpace_optimalGHCoupling : CompactSpace (OptimalGHCoupling X Y) := ⟨by
  rw [← range_quotient_mk']
  exact isCompact_range (continuous_sum_dom.2
    ⟨(isometry_optimalGHInjl X Y).continuous, (isometry_optimalGHInjr X Y).continuous⟩)⟩

/-- For any candidate `f`, `HD(f)` is larger than or equal to the Hausdorff distance in the
optimal coupling. This follows from the fact that `HD` of the optimal candidate is exactly
the Hausdorff distance in the optimal coupling, although we only prove here the inequality
we need. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/GromovHausdorffRealized/Variantfc2ea3ed54ce1403647efab0cf5b5e363b9d1851b451407ba96d6e7d80062666.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/GromovHausdorffRealized/Variantfc2ea3ed54ce1403647efab0cf5b5e363b9d1851b451407ba96d6e7d80062666.lean#L467).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `82f907a1e1323a2487d6bab6c1fa2cf06a775609` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
