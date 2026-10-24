# detects_visible

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "40af4306e486d98e6be1f0ba47db9ddc28645349",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 147,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f6/f619ef218cfcb94758ec76076ceb8126c34b9260a52393ab1cf736e69793a2f7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c82e6f6d-48a6-1f43-9dd4-24ff68d86b3b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3f613951-eb38-832e-8c94-2b62c53d9ef4",
  "kind": "theorem",
  "lexical_name": "detects_visible",
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
  "slug": "detects-visible--eb9504f50e07ae80977c3c06",
  "source": {
    "blob": "40af4306e486d98e6be1f0ba47db9ddc28645349",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 163,
    "line": 147,
    "path": "GRWTSK/Algebra/LinearAlgebra/ComparatorMargin/Variantf619ef218cfcb94758ec76076ceb8126c34b9260a52393ab1cf736e69793a2f7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:eb9504f50e07ae80977c3c0643b3a36ccc998e7fe5e365c08492ee1c660f70ab",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/ComparatorMargin/Variantf619ef218cfcb94758ec76076ceb8126c34b9260a52393ab1cf736e69793a2f7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3f613951-eb38-832e-8c94-2b62c53d9ef4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 147–163.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem detects_visible
    (R : C.ComparatorMarginRegime Q I) (x : X)
    (hvisible : G.Visible (C.projectedDifferential I x)) :
    C.ComparatorDetectsAt Q I x := by
  have hsensitivity :
      0 < C.interventionSensitivity I x :=
    (C.interventionSensitivity_pos_iff_visible I x).2 hvisible
  have hgap : 0 < Q.comparatorGap I x :=
    R.positive_sensitivity_implies_positive_gap x hsensitivity
  have hgap_projected :
      0 < (Q.readout (C.projectedDifferential I x)) ^ 2 := by
    rw [← C.comparatorGap_eq_projected_sq Q I R.sector_complete x]
    exact hgap
  simpa [ComparatorDetectsAt, sq_pos_iff] using hgap_projected

/-- Every quantitative margin regime induces the qualitative complete comparator
regime from the preceding Phase-IV layer. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/ComparatorMargin/Variantf619ef218cfcb94758ec76076ceb8126c34b9260a52393ab1cf736e69793a2f7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/ComparatorMargin/Variantf619ef218cfcb94758ec76076ceb8126c34b9260a52393ab1cf736e69793a2f7.lean#L147).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `40af4306e486d98e6be1f0ba47db9ddc28645349` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
