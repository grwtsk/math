# detects_visible

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5632bcea-3948-41d5-6e5e-a59cf512f621",
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
  "slug": "detects-visible--0412493ab1c38630fada4e50",
  "source": {
    "blob": "ec83de9c90234d62a752d97b73c4085b13863e80",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 174,
    "line": 158,
    "path": "GRWTSK/Algebra/LinearAlgebra/ComparatorMargin/Variant4641da03774caf32967c24382011dfefb46a71df3811cf0b8f29c2e1232fff96.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0412493ab1c38630fada4e50986a1bd2d6076f5cdcf5d9f1b301db834ff97cee",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/ComparatorMargin/Variant4641da03774caf32967c24382011dfefb46a71df3811cf0b8f29c2e1232fff96.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5632bcea-3948-41d5-6e5e-a59cf512f621`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 158–174.

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

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/ComparatorMargin/Variant4641da03774caf32967c24382011dfefb46a71df3811cf0b8f29c2e1232fff96.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/ComparatorMargin/Variant4641da03774caf32967c24382011dfefb46a71df3811cf0b8f29c2e1232fff96.lean#L158).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ec83de9c90234d62a752d97b73c4085b13863e80` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
