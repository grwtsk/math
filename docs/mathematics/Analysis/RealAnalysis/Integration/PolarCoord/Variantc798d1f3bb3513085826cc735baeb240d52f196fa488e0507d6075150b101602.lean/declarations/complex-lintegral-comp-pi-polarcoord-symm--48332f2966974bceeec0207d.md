# Complex.lintegral_comp_pi_polarCoord_symm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fca55888-370a-7c29-73a9-23ef3ac67536",
  "kind": "theorem",
  "lexical_name": "Complex.lintegral_comp_pi_polarCoord_symm",
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
  "slug": "complex-lintegral-comp-pi-polarcoord-symm--48332f2966974bceeec0207d",
  "source": {
    "blob": "3d97b2c8f2de125fda46237e7a714ffcb93bbd04",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 310,
    "line": 302,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/PolarCoord/Variantc798d1f3bb3513085826cc735baeb240d52f196fa488e0507d6075150b101602.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:48332f2966974bceeec0207d42959c1e9e556029c1ff2126b5543fefe4d98fbc",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/PolarCoord/Variantc798d1f3bb3513085826cc735baeb240d52f196fa488e0507d6075150b101602.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fca55888-370a-7c29-73a9-23ef3ac67536`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 302–310.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem Complex.lintegral_comp_pi_polarCoord_symm (f : (ι → ℂ) → ℝ≥0∞) :
    ∫⁻ p in (Set.univ.pi fun _ : ι ↦ Complex.polarCoord.target),
      (∏ i, .ofReal (p i).1) * f (fun i ↦ Complex.polarCoord.symm (p i)) = ∫⁻ p, f p := by
  let e := MeasurableEquiv.piCongrRight (fun _ : ι ↦ measurableEquivRealProd.symm)
  have := volume_preserving_pi (fun _ : ι ↦ Complex.volume_preserving_equiv_real_prod.symm)
  rw [← MeasurePreserving.lintegral_comp_emb this e.measurableEmbedding]
  exact lintegral_comp_pi_polarCoord_symm (f ∘ e)

end Pi
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/PolarCoord/Variantc798d1f3bb3513085826cc735baeb240d52f196fa488e0507d6075150b101602.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/PolarCoord/Variantc798d1f3bb3513085826cc735baeb240d52f196fa488e0507d6075150b101602.lean#L302).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3d97b2c8f2de125fda46237e7a714ffcb93bbd04` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
