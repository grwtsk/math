# upperWeight_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cee95c1f-a58b-02f7-4e7d-0cd329a27307",
  "kind": "theorem",
  "lexical_name": "upperWeight_integrable",
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
  "slug": "upperweight-integrable--0d95067d32bb28f7f65aafa3",
  "source": {
    "blob": "b7adc52e947ca02359816f3b56a279967bf69c02",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 38,
    "line": 29,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Ab7842ccd58622dc71d4UpperSampling/Variante4fa2b5c8792d9641f603a3c78b3bc3d9bddb40732a0ce71f171a18036b7cf18.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0d95067d32bb28f7f65aafa34a7b589855ec74e7626e826c428063a11d418b3b",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Ab7842ccd58622dc71d4UpperSampling/Variante4fa2b5c8792d9641f603a3c78b3bc3d9bddb40732a0ce71f171a18036b7cf18.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cee95c1f-a58b-02f7-4e7d-0cd329a27307`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 29–38.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem upperWeight_integrable (j : ℕ) : IntegrableOn (upperWeight j) (Ioi 1) := by
  have h := integrableOn_image_iff_integrableOn_abs_deriv_smul
    (s := Ioi (0 : ℝ)) (f := Real.exp) (f' := Real.exp) measurableSet_Ioi
    (fun t _ => (Real.hasDerivAt_exp t).hasDerivWithinAt)
    Real.exp_injective.injOn (upperWeight j)
  rw [Real.image_exp_Ioi, Real.exp_zero] at h
  apply h.mpr
  simpa only [abs_of_pos (Real.exp_pos _), smul_eq_mul, upperWeight_exp] using
    exponential_half_integrable j

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Ab7842ccd58622dc71d4UpperSampling/Variante4fa2b5c8792d9641f603a3c78b3bc3d9bddb40732a0ce71f171a18036b7cf18.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Ab7842ccd58622dc71d4UpperSampling/Variante4fa2b5c8792d9641f603a3c78b3bc3d9bddb40732a0ce71f171a18036b7cf18.lean#L29).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b7adc52e947ca02359816f3b56a279967bf69c02` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
