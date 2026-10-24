# eLpNormEssSup_le_eLpNorm_top

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:55a2b7fd-112d-b644-db49-2717e3d02786",
  "kind": "theorem",
  "lexical_name": "eLpNormEssSup_le_eLpNorm_top",
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
  "slug": "elpnormesssup-le-elpnorm-top--75609b2b9bc28401c20fcb61",
  "source": {
    "blob": "03e2c87f3564d68e73e47cce5111990ca20845c9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 159,
    "line": 152,
    "path": "GRWTSK/Analysis/MeasureTheory/Defs/Variant4294765b7e5996fb5d03aee7dfedd29c96ac418f5531fb1479de68a0c7170344.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:75609b2b9bc28401c20fcb619fb6193046d6811d7b8557b728e276a9a634f1cd",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Defs/Variant4294765b7e5996fb5d03aee7dfedd29c96ac418f5531fb1479de68a0c7170344.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:55a2b7fd-112d-b644-db49-2717e3d02786`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 152–159.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eLpNormEssSup_le_eLpNorm_top [TopologicalSpace ε] {f : α → ε} :
    eLpNormEssSup f μ ≤ eLpNorm f ∞ μ := by
  by_cases hf : AEStronglyMeasurable f μ
  · simp [hf]
  · simp [eLpNorm_of_not_aestronglyMeasurable, hf]

/-- The property that `f : α → E` is a.e. strongly measurable and `(∫ ‖f a‖ ^ p ∂μ) ^ (1/p)`
is finite if `p < ∞`, or `essSup ‖f‖ < ∞` if `p = ∞`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Defs/Variant4294765b7e5996fb5d03aee7dfedd29c96ac418f5531fb1479de68a0c7170344.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Defs/Variant4294765b7e5996fb5d03aee7dfedd29c96ac418f5531fb1479de68a0c7170344.lean#L152).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `03e2c87f3564d68e73e47cce5111990ca20845c9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
