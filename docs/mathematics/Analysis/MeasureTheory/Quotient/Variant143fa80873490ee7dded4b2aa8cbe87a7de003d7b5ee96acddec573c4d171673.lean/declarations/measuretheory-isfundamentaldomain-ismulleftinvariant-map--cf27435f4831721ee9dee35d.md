# MeasureTheory.IsFundamentalDomain.isMulLeftInvariant_map

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:14921f68-a474-bca8-a503-aa746aad62fa",
  "kind": "theorem",
  "lexical_name": "MeasureTheory.IsFundamentalDomain.isMulLeftInvariant_map",
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
  "slug": "measuretheory-isfundamentaldomain-ismulleftinvariant-map--cf27435f4831721ee9dee35d",
  "source": {
    "blob": "24af3534b9054bbc8a20eb80d29f2f7786328d5f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 132,
    "line": 108,
    "path": "GRWTSK/Analysis/MeasureTheory/Quotient/Variant143fa80873490ee7dded4b2aa8cbe87a7de003d7b5ee96acddec573c4d171673.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cf27435f4831721ee9dee35dc3b97f7443c6a5173bea60e3aa8409f195372078",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Quotient/Variant143fa80873490ee7dded4b2aa8cbe87a7de003d7b5ee96acddec573c4d171673.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:14921f68-a474-bca8-a503-aa746aad62fa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 108–132.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem MeasureTheory.IsFundamentalDomain.isMulLeftInvariant_map [Subgroup.Normal Γ]
    [μ.IsMulLeftInvariant] [μ.IsMulRightInvariant] :
    (Measure.map (QuotientGroup.mk' Γ) (μ.restrict 𝓕)).IsMulLeftInvariant where
  map_mul_left_eq_self x := by
    apply Measure.ext
    intro A hA
    obtain ⟨x₁, h⟩ := @Quotient.exists_rep _ (QuotientGroup.leftRel Γ) x
    haveI := h𝓕.smulInvariantMeasure_map
    convert measure_preimage_smul x₁ ((Measure.map QuotientGroup.mk) (μ.restrict 𝓕)) A using 1
    rw [← h, Measure.map_apply]
    · rfl
    · exact measurable_const_mul _
    · exact hA
#align measure_theory.is_fundamental_domain.is_mul_left_invariant_map MeasureTheory.IsFundamentalDomain.isMulLeftInvariant_map
#align measure_theory.is_add_fundamental_domain.is_add_left_invariant_map MeasureTheory.IsAddFundamentalDomain.isAddLeftInvariant_map

variable [T2Space (G ⧸ Γ)] [SecondCountableTopology (G ⧸ Γ)] (K : PositiveCompacts (G ⧸ Γ))

/-- Given a normal subgroup `Γ` of a topological group `G` with Haar measure `μ`, which is also
  right-invariant, and a finite volume fundamental domain `𝓕`, the pushforward to the quotient
  group `G ⧸ Γ` of the restriction of `μ` to `𝓕` is a multiple of Haar measure on `G ⧸ Γ`. -/
@[to_additive "Given a normal subgroup `Γ` of an additive topological group `G` with Haar measure
  `μ`, which is also right-invariant, and a finite volume fundamental domain `𝓕`, the pushforward
  to the quotient group `G ⧸ Γ` of the restriction of `μ` to `𝓕` is a multiple of Haar measure on
  `G ⧸ Γ`."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Quotient/Variant143fa80873490ee7dded4b2aa8cbe87a7de003d7b5ee96acddec573c4d171673.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Quotient/Variant143fa80873490ee7dded4b2aa8cbe87a7de003d7b5ee96acddec573c4d171673.lean#L108).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `24af3534b9054bbc8a20eb80d29f2f7786328d5f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
