# _root_.GRWTSK.Analysis.MeasureTheory.Ae.Variant4268b197e092c8db090343d1b105944d89c83c26793b01b9392fd37be8d7ba71.Set.mulIndicator_ae_eq_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c584b16a-c5ec-29d7-1e49-f457d24aae11",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.Analysis.MeasureTheory.Ae.Variant4268b197e092c8db090343d1b105944d89c83c26793b01b9392fd37be8d7ba71.Set.mulIndicator_ae_eq_one",
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
  "slug": "root-grwtsk-analysis-measuretheory-ae-variant4268b197e092c8db090343d1b10--a4ba521080dc8d7db5be2e0f",
  "source": {
    "blob": "cf1a04fe1b1353cacaca394e9cc736a55238b108",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 246,
    "line": 241,
    "path": "GRWTSK/Analysis/MeasureTheory/AE/Variantd3a811013e6d236a174c7a832d10a25ad16092cd7a1d57601b6f171d405172d3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a4ba521080dc8d7db5be2e0f8e2b870ab82e4246b471604957972bc69767b515",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/AE/Variantd3a811013e6d236a174c7a832d10a25ad16092cd7a1d57601b6f171d405172d3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c584b16a-c5ec-29d7-1e49-f457d24aae11`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 241–246.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.Analysis.MeasureTheory.Ae.Variant4268b197e092c8db090343d1b105944d89c83c26793b01b9392fd37be8d7ba71.Set.mulIndicator_ae_eq_one {M : Type*} [One M] {f : α → M} {s : Set α} :
    s.mulIndicator f =ᵐ[μ] 1 ↔ μ (s ∩ f.mulSupport) = 0 := by
  simp [EventuallyEq, eventually_iff, ae, compl_setOf]; rfl

/-- If `s ⊆ t` modulo a set of measure `0`, then `μ s ≤ μ t`. -/
@[mono]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/AE/Variantd3a811013e6d236a174c7a832d10a25ad16092cd7a1d57601b6f171d405172d3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/AE/Variantd3a811013e6d236a174c7a832d10a25ad16092cd7a1d57601b6f171d405172d3.lean#L241).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cf1a04fe1b1353cacaca394e9cc736a55238b108` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
