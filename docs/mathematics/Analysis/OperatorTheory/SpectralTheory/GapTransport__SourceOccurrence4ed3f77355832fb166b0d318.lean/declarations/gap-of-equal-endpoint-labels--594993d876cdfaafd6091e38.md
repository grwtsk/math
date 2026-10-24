# gap_of_equal_endpoint_labels

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:60cd82f6-95e2-b099-7231-2d4a652ed63e",
  "kind": "theorem",
  "lexical_name": "gap_of_equal_endpoint_labels",
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
  "slug": "gap-of-equal-endpoint-labels--594993d876cdfaafd6091e38",
  "source": {
    "blob": "f34c7760419fbf3b10a7893344baa4a491c8e0ba",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 58,
    "line": 37,
    "path": "GRWTSK/Spectral/GapTransport.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:594993d876cdfaafd6091e38102b6846100ef0f92e48a3de2de82a52c41c2a22",
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

Occurrence: `result:60cd82f6-95e2-b099-7231-2d4a652ed63e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 37–58.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem gap_of_equal_endpoint_labels {spectrum : Set ℝ} {ids : ℝ → ℝ}
    (hmono : Monotone ids) (hlocal : LocalPlateauCharacterization spectrum ids)
    {label a b : ℝ} (hab : a < b) (ha : a ∈ spectrum) (hb : b ∈ spectrum)
    (hla : ids a = label) (hlb : ids b = label) :
    OpenLabelGap spectrum ids label a b := by
  have plateau := plateau_on_Icc hmono (hla.trans hlb.symm)
  refine ⟨hab, ha, hb, ?_, ?_⟩
  · intro E hE
    apply (hlocal E).2
    let δ := min (E - a) (b - E)
    have hδ : 0 < δ := lt_min (sub_pos.mpr hE.1) (sub_pos.mpr hE.2)
    refine ⟨δ, hδ, ?_⟩
    intro x hx
    have hleft : δ ≤ E - a := min_le_left _ _
    have hright : δ ≤ b - E := min_le_right _ _
    have hx' : x ∈ Icc a b := ⟨by linarith [hx.1], by linarith [hx.2]⟩
    exact (plateau x hx').trans (plateau E ⟨hE.1.le, hE.2.le⟩).symm
  · intro x hx
    exact (plateau x hx).trans hla

/-- The exact coding premises consumed by gap transport. Constructing the actual
Sturmian tree and proving its energy injectivity are separate obligations. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/OperatorTheory/SpectralTheory/GapTransport__SourceOccurrence4ed3f77355832fb166b0d318.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Spectral/GapTransport.lean#L37).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f34c7760419fbf3b10a7893344baa4a491c8e0ba` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
