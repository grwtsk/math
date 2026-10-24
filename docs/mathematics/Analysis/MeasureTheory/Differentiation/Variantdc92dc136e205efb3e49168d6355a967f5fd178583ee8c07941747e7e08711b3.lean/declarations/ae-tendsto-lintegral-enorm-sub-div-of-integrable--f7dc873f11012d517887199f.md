# ae_tendsto_lintegral_enorm_sub_div_of_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ef9bdcbe-9d0f-c367-973c-4fa899a3121e",
  "kind": "theorem",
  "lexical_name": "ae_tendsto_lintegral_enorm_sub_div_of_integrable",
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
  "slug": "ae-tendsto-lintegral-enorm-sub-div-of-integrable--f7dc873f11012d517887199f",
  "source": {
    "blob": "08b01aabb0be218e9f62e2fbc1deb6099d1dc2f8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 870,
    "line": 854,
    "path": "GRWTSK/Analysis/MeasureTheory/Differentiation/Variantdc92dc136e205efb3e49168d6355a967f5fd178583ee8c07941747e7e08711b3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f7dc873f11012d517887199fddc067842474f18bd136be99e553d5ff441ef1b9",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Differentiation/Variantdc92dc136e205efb3e49168d6355a967f5fd178583ee8c07941747e7e08711b3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ef9bdcbe-9d0f-c367-973c-4fa899a3121e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 854–870.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ae_tendsto_lintegral_enorm_sub_div_of_integrable {f : α → E} (hf : Integrable f μ) :
    ∀ᵐ x ∂μ, Tendsto (fun a => (∫⁻ y in a, ‖f y - f x‖ₑ ∂μ) / μ a) (v.filterAt x) (𝓝 0) := by
  have I : Integrable (hf.1.mk f) μ := hf.congr hf.1.ae_eq_mk
  filter_upwards [v.ae_tendsto_lintegral_enorm_sub_div'_of_integrable I hf.1.stronglyMeasurable_mk,
    hf.1.ae_eq_mk] with x hx h'x
  apply hx.congr _
  intro a
  congr 1
  apply lintegral_congr_ae
  apply ae_restrict_of_ae
  filter_upwards [hf.1.ae_eq_mk] with y hy
  rw [hy, h'x]

@[deprecated (since := "2025-01-22")]
alias ae_tendsto_lintegral_nnnorm_sub_div_of_integrable :=
  ae_tendsto_lintegral_enorm_sub_div_of_integrable

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Differentiation/Variantdc92dc136e205efb3e49168d6355a967f5fd178583ee8c07941747e7e08711b3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Differentiation/Variantdc92dc136e205efb3e49168d6355a967f5fd178583ee8c07941747e7e08711b3.lean#L854).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `08b01aabb0be218e9f62e2fbc1deb6099d1dc2f8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
