# exactCarrier_iff_axis_membership

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:020b3dab-6ca0-0a27-64cd-5bc99278ddf4",
  "kind": "theorem",
  "lexical_name": "exactCarrier_iff_axis_membership",
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
  "slug": "exactcarrier-iff-axis-membership--1092a6818028c63fb0c02642",
  "source": {
    "blob": "ef862603cb95ceb119d5977afaa20f841d512341",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 95,
    "line": 87,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/CarrierGrid/Variantc724f1d21999e794135694f3595a78396504d24a30a904217ae1c655c7797fd4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1092a6818028c63fb0c02642d84611c8e805017873097533d886909caaa5031c",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/CarrierGrid/Variantc724f1d21999e794135694f3595a78396504d24a30a904217ae1c655c7797fd4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:020b3dab-6ca0-0a27-64cd-5bc99278ddf4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 87–95.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exactCarrier_iff_axis_membership {size : Nat}
    (point : NormalizedPoint) (cell : GridCell size size) :
    ExactCarrier size point cell ↔
      cell.row ∈ axisCarriers size point.y ∧
      cell.column ∈ axisCarriers size point.x := by
  simp [ExactCarrier]

/-- Exact two-dimensional carriers are precisely independent choices of a
supporting row and supporting column. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/CarrierGrid/Variantc724f1d21999e794135694f3595a78396504d24a30a904217ae1c655c7797fd4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/CarrierGrid/Variantc724f1d21999e794135694f3595a78396504d24a30a904217ae1c655c7797fd4.lean#L87).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ef862603cb95ceb119d5977afaa20f841d512341` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
