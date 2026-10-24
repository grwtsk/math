# AECover.integral_tendsto_of_countably_generated

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:18229021-c7d0-4e3f-db0e-24cf8dac5b8c",
  "kind": "theorem",
  "lexical_name": "AECover.integral_tendsto_of_countably_generated",
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
  "slug": "aecover-integral-tendsto-of-countably-generated--415b1da3d706608de16c8784",
  "source": {
    "blob": "a9cd29cd83cffc82b346ff6c62d50ebd2c26c519",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 498,
    "line": 487,
    "path": "GRWTSK/Analysis/MeasureTheory/IntegralEqImproper/Variant8f4a39d00352ec8ed5bbf4027f600ae72b5f6c85e85105d6b4155d82e0c3ac92.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:415b1da3d706608de16c87843f5a28ae34dfa9cbd48ca333396eeb8541f2d4d6",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/IntegralEqImproper/Variant8f4a39d00352ec8ed5bbf4027f600ae72b5f6c85e85105d6b4155d82e0c3ac92.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:18229021-c7d0-4e3f-db0e-24cf8dac5b8c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 487–498.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem AECover.integral_tendsto_of_countably_generated [l.IsCountablyGenerated] {φ : ι → Set α}
    (hφ : AECover μ l φ) {f : α → E} (hfi : Integrable f μ) :
    Tendsto (fun i => ∫ x in φ i, f x ∂μ) l (𝓝 <| ∫ x, f x ∂μ) :=
  suffices h : Tendsto (fun i => ∫ x : α, (φ i).indicator f x ∂μ) l (𝓝 (∫ x : α, f x ∂μ)) from by
    convert h using 2; rw [integral_indicator (hφ.measurableSet _)]
  tendsto_integral_filter_of_dominated_convergence (fun x => ‖f x‖)
    (Eventually.of_forall fun i => hfi.aestronglyMeasurable.indicator <| hφ.measurableSet i)
    (Eventually.of_forall fun _ => ae_of_all _ fun _ => norm_indicator_le_norm_self _ _) hfi.norm
    (hφ.ae_tendsto_indicator f)

/-- Slight reformulation of
    `MeasureTheory.AECover.integral_tendsto_of_countably_generated`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/IntegralEqImproper/Variant8f4a39d00352ec8ed5bbf4027f600ae72b5f6c85e85105d6b4155d82e0c3ac92.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/IntegralEqImproper/Variant8f4a39d00352ec8ed5bbf4027f600ae72b5f6c85e85105d6b4155d82e0c3ac92.lean#L487).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a9cd29cd83cffc82b346ff6c62d50ebd2c26c519` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
