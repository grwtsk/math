# integrable_withDensity_iff_integrable_smul₀'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8fe99965-a56f-9a96-2623-eee6513a9f9f",
  "kind": "theorem",
  "lexical_name": "integrable_withDensity_iff_integrable_smul₀'",
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
  "slug": "integrable-withdensity-iff-integrable-smul--99145c027904a337df8b0737",
  "source": {
    "blob": "64ffe648dbd9ee88a982acbaa79369cb7573210a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 846,
    "line": 839,
    "path": "GRWTSK/Analysis/MeasureTheory/Integrable/Variant878f63ec7e132bc28776da0f6fa24f28605cdc905a6d120e0c97717bf8a5f1c5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:99145c027904a337df8b07371125e21e7e2457c861d1cca4976af0768b51f4b2",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Integrable/Variant878f63ec7e132bc28776da0f6fa24f28605cdc905a6d120e0c97717bf8a5f1c5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8fe99965-a56f-9a96-2623-eee6513a9f9f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 839–846.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integrable_withDensity_iff_integrable_smul₀' {f : α → ℝ≥0∞} (hf : AEMeasurable f μ)
    (hflt : ∀ᵐ x ∂μ, f x < ∞) {g : α → E} :
    Integrable g (μ.withDensity f) ↔ Integrable (fun x => (f x).toReal • g x) μ := by
  rw [← withDensity_congr_ae (coe_toNNReal_ae_eq hflt),
    integrable_withDensity_iff_integrable_coe_smul₀]
  · congr!
  · exact hf.ennreal_toNNReal

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Integrable/Variant878f63ec7e132bc28776da0f6fa24f28605cdc905a6d120e0c97717bf8a5f1c5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Integrable/Variant878f63ec7e132bc28776da0f6fa24f28605cdc905a6d120e0c97717bf8a5f1c5.lean#L839).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `64ffe648dbd9ee88a982acbaa79369cb7573210a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
