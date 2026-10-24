# eLpNorm_smul_measure_of_ne_top

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:79b2e7af-96f2-8051-34c3-7ba113c33f91",
  "kind": "theorem",
  "lexical_name": "eLpNorm_smul_measure_of_ne_top",
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
  "slug": "elpnorm-smul-measure-of-ne-top--de3ffd3a55e0c6574d21d2f3",
  "source": {
    "blob": "8fcf4a49f25efe1ab9f50139de711ac97c531135",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 785,
    "line": 778,
    "path": "GRWTSK/Analysis/MeasureTheory/Basic/Variantdecb9671e851ec691f505a424069357e4a5f4fe7157be436b9be54f7dc2becf2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:de3ffd3a55e0c6574d21d2f34b08fe630dcbc8d23b0e8978929fa352b06e810f",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Basic/Variantdecb9671e851ec691f505a424069357e4a5f4fe7157be436b9be54f7dc2becf2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:79b2e7af-96f2-8051-34c3-7ba113c33f91`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 778–785.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eLpNorm_smul_measure_of_ne_top {p : ℝ≥0∞} (hp_ne_top : p ≠ ∞) (f : α → ε)
    (c : ℝ≥0∞) (hf : AEStronglyMeasurable f μ) :
    eLpNorm f p (c • μ) = c ^ (1 / p).toReal • eLpNorm f p μ := by
  by_cases hp0 : p = 0
  · simp [hp0, hf.smul_measure c, hf]
  · apply eLpNorm_smul_measure_of_ne_zero_of_ne_top hp0 hp_ne_top

/-- See `eLpNorm_smul_measure_of_ne_top'` for a version with scalar multiplication by `ℝ≥0∞`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Basic/Variantdecb9671e851ec691f505a424069357e4a5f4fe7157be436b9be54f7dc2becf2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Basic/Variantdecb9671e851ec691f505a424069357e4a5f4fe7157be436b9be54f7dc2becf2.lean#L778).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8fcf4a49f25efe1ab9f50139de711ac97c531135` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
