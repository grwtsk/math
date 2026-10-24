# aemeasurable_indicator_iff₀

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:af671dc3-0954-692e-b5bf-b1bbe9ce1fa3",
  "kind": "theorem",
  "lexical_name": "aemeasurable_indicator_iff₀",
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
  "slug": "aemeasurable-indicator-iff--c2bc3110701074041af3438e",
  "source": {
    "blob": "46d74f74a00b9241d19a76deea1fe1efdfeff99a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 343,
    "line": 336,
    "path": "GRWTSK/Analysis/MeasureTheory/AEMeasurable/Variant785a45f0870dc5086bdffc4129d6426a851563fd40d9aafc0adf57422f888e9d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c2bc3110701074041af3438ee7e072e022b035c320e91338fb835039ed8432ff",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/AEMeasurable/Variant785a45f0870dc5086bdffc4129d6426a851563fd40d9aafc0adf57422f888e9d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:af671dc3-0954-692e-b5bf-b1bbe9ce1fa3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 336–343.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem aemeasurable_indicator_iff₀ {s} (hs : NullMeasurableSet s μ) :
    AEMeasurable (indicator s f) μ ↔ AEMeasurable f (μ.restrict s) := by
  rcases hs with ⟨t, ht, hst⟩
  rw [← aemeasurable_congr (indicator_ae_eq_of_ae_eq_set hst.symm), aemeasurable_indicator_iff ht,
      restrict_congr_set hst]

/-- A characterization of the a.e.-measurability of the indicator function which takes a constant
value `b` on a set `A` and `0` elsewhere. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/AEMeasurable/Variant785a45f0870dc5086bdffc4129d6426a851563fd40d9aafc0adf57422f888e9d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/AEMeasurable/Variant785a45f0870dc5086bdffc4129d6426a851563fd40d9aafc0adf57422f888e9d.lean#L336).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `46d74f74a00b9241d19a76deea1fe1efdfeff99a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
