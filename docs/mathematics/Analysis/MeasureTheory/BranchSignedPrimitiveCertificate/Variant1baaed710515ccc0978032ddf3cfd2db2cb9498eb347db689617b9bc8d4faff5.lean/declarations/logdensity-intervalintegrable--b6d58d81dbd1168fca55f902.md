# logDensity_intervalIntegrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6d2d0e5c-432f-fb87-ce84-6e2e5af93e62",
  "kind": "theorem",
  "lexical_name": "logDensity_intervalIntegrable",
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
  "slug": "logdensity-intervalintegrable--b6d58d81dbd1168fca55f902",
  "source": {
    "blob": "e434c4e7c7ec5f172a0b5dd71fa4af7b22ef7b11",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 121,
    "line": 110,
    "path": "GRWTSK/Analysis/MeasureTheory/BranchSignedPrimitiveCertificate/Variant1baaed710515ccc0978032ddf3cfd2db2cb9498eb347db689617b9bc8d4faff5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b6d58d81dbd1168fca55f9029cdd1684d76d0b2e96b24c44f21a39aed5499147",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/BranchSignedPrimitiveCertificate/Variant1baaed710515ccc0978032ddf3cfd2db2cb9498eb347db689617b9bc8d4faff5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6d2d0e5c-432f-fb87-ce84-6e2e5af93e62`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 110–121.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem logDensity_intervalIntegrable {a b : ℝ} (hab : a ≤ b) :
    IntervalIntegrable logDensity volume a b := by
  have hi : IntervalIntegrable primitiveDensity volume (Real.exp a) (Real.exp b) :=
    (intervalIntegrable_iff_integrableOn_Icc_of_le (Real.exp_le_exp.mpr hab)).2
      (primitiveDensity_integrable (Real.exp_pos a))
  have ht := (intervalIntegral.integrable_comp_mul_deriv_iff_of_deriv_nonneg
    (a := a) (b := b) (f := Real.exp) (f' := Real.exp) (g := primitiveDensity)
    Real.continuous_exp.continuousOn (fun x _ ↦ Real.hasDerivAt_exp x)
    (fun x _ ↦ (Real.exp_pos x).le)).2 hi
  simpa only [Function.comp_apply, logDensity_eq_transported] using ht

/-- The literal first signed primitive is absolutely continuous on its whole source window. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/BranchSignedPrimitiveCertificate/Variant1baaed710515ccc0978032ddf3cfd2db2cb9498eb347db689617b9bc8d4faff5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/BranchSignedPrimitiveCertificate/Variant1baaed710515ccc0978032ddf3cfd2db2cb9498eb347db689617b9bc8d4faff5.lean#L110).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e434c4e7c7ec5f172a0b5dd71fa4af7b22ef7b11` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
