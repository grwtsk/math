# eq_or_edist_eq_top_of_fixedPoints

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:36e6a00f-d16d-291b-9f48-7ad29ef3d2b6",
  "kind": "theorem",
  "lexical_name": "eq_or_edist_eq_top_of_fixedPoints",
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
  "slug": "eq-or-edist-eq-top-of-fixedpoints--3c52ad4bd376002338294837",
  "source": {
    "blob": "f5e688618d6c0ad2d635ec5c79e78294aec6a101",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 90,
    "line": 84,
    "path": "GRWTSK/Topology/MetricTopology/Contracting/Variant8e6028293ce5845563a35c777b7a1551af3ab4a9eb5ca8125ec2506446a39444.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3c52ad4bd376002338294837cd36473bbca8f4157f6b93fd5c945c8c0117c89a",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Contracting/Variant8e6028293ce5845563a35c777b7a1551af3ab4a9eb5ca8125ec2506446a39444.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:36e6a00f-d16d-291b-9f48-7ad29ef3d2b6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 84–90.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eq_or_edist_eq_top_of_fixedPoints (hf : ContractingWith K f) {x y} (hx : IsFixedPt f x)
    (hy : IsFixedPt f y) : x = y ∨ edist x y = ∞ := by
  refine or_iff_not_imp_right.2 fun h ↦ edist_le_zero.1 ?_
  simpa only [hx.eq, edist_self, add_zero, ENNReal.zero_div] using hf.edist_le_of_fixedPoint h hy

/-- If a map `f` is `ContractingWith K`, and `s` is a forward-invariant set, then
restriction of `f` to `s` is `ContractingWith K` as well. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Contracting/Variant8e6028293ce5845563a35c777b7a1551af3ab4a9eb5ca8125ec2506446a39444.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Contracting/Variant8e6028293ce5845563a35c777b7a1551af3ab4a9eb5ca8125ec2506446a39444.lean#L84).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f5e688618d6c0ad2d635ec5c79e78294aec6a101` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
