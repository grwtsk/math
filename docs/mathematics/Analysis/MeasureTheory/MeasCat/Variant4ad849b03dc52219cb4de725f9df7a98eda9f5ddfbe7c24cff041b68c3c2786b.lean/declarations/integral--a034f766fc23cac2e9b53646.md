# Integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0e79ab274dfd384d833bf54d50cad8038d496ef3f8b3e7d8af5e52d39ffc5bcc",
  "kind": "def",
  "lexical_name": "Integral",
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
  "slug": "integral--a034f766fc23cac2e9b53646",
  "source": {
    "blob": "b910c45ebd1b53c8fd02ed091dbe841b0f2f0c1a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 114,
    "line": 104,
    "path": "GRWTSK/Analysis/MeasureTheory/MeasCat/Variant4ad849b03dc52219cb4de725f9df7a98eda9f5ddfbe7c24cff041b68c3c2786b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a034f766fc23cac2e9b53646f446d531ce87d2aee05e259b025f7a7ded30989a",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/MeasCat/Variant4ad849b03dc52219cb4de725f9df7a98eda9f5ddfbe7c24cff041b68c3c2786b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0e79ab274dfd384d833bf54d50cad8038d496ef3f8b3e7d8af5e52d39ffc5bcc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 104–114.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Integral : Giry.Algebra where
  A := MeasCat.of ℝ≥0∞
  a := ⟨fun m : MeasureTheory.Measure ℝ≥0∞ ↦ ∫⁻ x, x ∂m, Measure.measurable_lintegral measurable_id⟩
  unit := Subtype.eq <| funext fun _ : ℝ≥0∞ => lintegral_dirac' _ measurable_id
  assoc := Subtype.eq <| funext fun μ : MeasureTheory.Measure (MeasureTheory.Measure ℝ≥0∞) ↦
    show ∫⁻ x, x ∂μ.join = ∫⁻ x, x ∂Measure.map (fun m => ∫⁻ x, x ∂m) μ by
      rw [Measure.lintegral_join, lintegral_map] <;>
        apply_rules [Measurable.aemeasurable, measurable_id, Measure.measurable_lintegral]

end MeasCat

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/MeasCat/Variant4ad849b03dc52219cb4de725f9df7a98eda9f5ddfbe7c24cff041b68c3c2786b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/MeasCat/Variant4ad849b03dc52219cb4de725f9df7a98eda9f5ddfbe7c24cff041b68c3c2786b.lean#L104).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b910c45ebd1b53c8fd02ed091dbe841b0f2f0c1a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
