# lintegral_preimage

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1eef7768-3be0-1817-e5db-350f85d4dabc",
  "kind": "theorem",
  "lexical_name": "lintegral_preimage",
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
  "slug": "lintegral-preimage--47e33877ae4a88d0b6eefb2e",
  "source": {
    "blob": "1bce6106f3aebf44b66be58d8a8f82ff3650dd41",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 176,
    "line": 155,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Periodic/Variant80dafdb789f27bd70b56e4d30c561779590fe9accfe28d3892e24f97361924ea.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:47e33877ae4a88d0b6eefb2e298a2f2084211f579af2f464e2ddc7206c57410e",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Periodic/Variant80dafdb789f27bd70b56e4d30c561779590fe9accfe28d3892e24f97361924ea.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1eef7768-3be0-1817-e5db-350f85d4dabc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 155–176.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem lintegral_preimage (t : ℝ) (f : AddCircle T → ℝ≥0∞) :
    (∫⁻ a in Ioc t (t + T), f a) = ∫⁻ b : AddCircle T, f b := by
  have m : MeasurableSet (Ioc t (t + T)) := measurableSet_Ioc
  have := lintegral_map_equiv (μ := volume) f (measurableEquivIoc T t).symm
  simp only [measurableEquivIoc, equivIoc, QuotientAddGroup.equivIocMod, MeasurableEquiv.symm_mk,
    MeasurableEquiv.coe_mk, Equiv.coe_fn_symm_mk] at this
  rw [← (AddCircle.measurePreserving_mk T t).map_eq]
  convert this.symm using 1
  · rw [← map_comap_subtype_coe m _]
    exact MeasurableEmbedding.lintegral_map (MeasurableEmbedding.subtype_coe m) _
  · congr 1
    have : ((↑) : Ioc t (t + T) → AddCircle T) = ((↑) : ℝ → AddCircle T) ∘ ((↑) : _ → ℝ) := by
      ext1 x; rfl
    simp_rw [this]
    rw [← map_map AddCircle.measurable_mk' measurable_subtype_coe, ← map_comap_subtype_coe m]
    rfl

variable {E : Type*} [NormedAddCommGroup E] [NormedSpace ℝ E]

attribute [local instance] Subtype.measureSpace in
/-- The integral of an almost-everywhere strongly measurable function over `AddCircle T` is equal
to the integral over an interval (t, t + T] in `ℝ` of its lift to `ℝ`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Periodic/Variant80dafdb789f27bd70b56e4d30c561779590fe9accfe28d3892e24f97361924ea.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Periodic/Variant80dafdb789f27bd70b56e4d30c561779590fe9accfe28d3892e24f97361924ea.lean#L155).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1bce6106f3aebf44b66be58d8a8f82ff3650dd41` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
