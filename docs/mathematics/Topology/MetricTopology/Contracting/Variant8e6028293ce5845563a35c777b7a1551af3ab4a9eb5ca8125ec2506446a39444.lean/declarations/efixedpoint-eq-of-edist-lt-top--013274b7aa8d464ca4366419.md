# efixedPoint_eq_of_edist_lt_top

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:df25cbfc-6ec9-b4c6-6f9d-ca4cb6b92f5a",
  "kind": "theorem",
  "lexical_name": "efixedPoint_eq_of_edist_lt_top",
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
  "slug": "efixedpoint-eq-of-edist-lt-top--013274b7aa8d464ca4366419",
  "source": {
    "blob": "f5e688618d6c0ad2d635ec5c79e78294aec6a101",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 161,
    "line": 147,
    "path": "GRWTSK/Topology/MetricTopology/Contracting/Variant8e6028293ce5845563a35c777b7a1551af3ab4a9eb5ca8125ec2506446a39444.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:013274b7aa8d464ca436641966f42f962ab979db6ee736d769207714da3b6ffd",
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

Occurrence: `result:df25cbfc-6ec9-b4c6-6f9d-ca4cb6b92f5a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 147–161.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem efixedPoint_eq_of_edist_lt_top (hf : ContractingWith K f) {x : α} (hx : edist x (f x) ≠ ∞)
    {y : α} (hy : edist y (f y) ≠ ∞) (h : edist x y ≠ ∞) :
    efixedPoint f hf x hx = efixedPoint f hf y hy := by
  refine (hf.eq_or_edist_eq_top_of_fixedPoints ?_ ?_).elim id fun h' ↦ False.elim (ne_of_lt ?_ h')
    <;> try apply efixedPoint_isFixedPt
  change Metric.edistLtTopSetoid _ _
  trans x
  · apply Setoid.symm'
    exact hf.edist_efixedPoint_lt_top hx
  trans y
  exacts [lt_top_iff_ne_top.2 h, hf.edist_efixedPoint_lt_top hy]

end

/-- Banach fixed-point theorem for maps contracting on a complete subset. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Contracting/Variant8e6028293ce5845563a35c777b7a1551af3ab4a9eb5ca8125ec2506446a39444.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Contracting/Variant8e6028293ce5845563a35c777b7a1551af3ab4a9eb5ca8125ec2506446a39444.lean#L147).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f5e688618d6c0ad2d635ec5c79e78294aec6a101` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
