# gap_width_le_of_ids_comparison

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:73b7eace-3dda-263d-1fe1-d24915fd5cf7",
  "kind": "theorem",
  "lexical_name": "gap_width_le_of_ids_comparison",
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
  "slug": "gap-width-le-of-ids-comparison--4eb91d2140e57af259167a69",
  "source": {
    "blob": "f34c7760419fbf3b10a7893344baa4a491c8e0ba",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 151,
    "line": 137,
    "path": "GRWTSK/Spectral/GapTransport.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4eb91d2140e57af259167a69f3ba62809df51913d80d975707cf175278d84b0e",
  "verification": {
    "reference": "docs/verification/Analysis/OperatorTheory/SpectralTheory/GapTransport__SourceOccurrence4ed3f77355832fb166b0d318.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:73b7eace-3dda-263d-1fe1-d24915fd5cf7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 137–151.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem gap_width_le_of_ids_comparison {spectrum : Set ℝ} {free ids : ℝ → ℝ}
    {label freeEnergy lower upper a b : ℝ}
    (hcompare : ∀ x, free (x - upper) ≤ ids x ∧ ids x ≤ free (x - lower))
    (hcutLeft : ∀ x, free x ≤ label → x ≤ freeEnergy)
    (hcutRight : ∀ x, label ≤ free x → freeEnergy ≤ x)
    (hgap : OpenLabelGap spectrum ids label a b) :
    0 < b - a ∧ b - a ≤ upper - lower := by
  have ha := labelled_point_bounds_of_ids_comparison hcompare hcutLeft hcutRight
    (hgap.2.2.2.2 a ⟨le_rfl, hgap.1.le⟩)
  have hb := labelled_point_bounds_of_ids_comparison hcompare hcutLeft hcutRight
    (hgap.2.2.2.2 b ⟨hgap.1.le, le_rfl⟩)
  exact ⟨sub_pos.mpr hgap.1, by linarith [ha.1, hb.2]⟩

/-- A generic continuous separation can be positive for every positive parameter
and still collapse exactly at zero. This is not a Sturmian gap-width formula. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/OperatorTheory/SpectralTheory/GapTransport__SourceOccurrence4ed3f77355832fb166b0d318.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Spectral/GapTransport.lean#L137).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f34c7760419fbf3b10a7893344baa4a491c8e0ba` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
