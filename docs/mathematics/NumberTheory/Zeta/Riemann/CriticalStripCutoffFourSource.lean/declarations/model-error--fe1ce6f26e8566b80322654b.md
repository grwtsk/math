# model_error

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1de4b211-6a59-782f-fe57-83c495bd1764",
  "kind": "theorem",
  "lexical_name": "model_error",
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
  "slug": "model-error--fe1ce6f26e8566b80322654b",
  "source": {
    "blob": "e7a1820ab8718eee5c0f8f3db51f16381d9804fd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 122,
    "line": 103,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripCutoffFourSource.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fe1ce6f26e8566b80322654b982d9fdebd3e2da4ce574a9b6fcb02a451a15f55",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CriticalStripCutoffFourSource.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1de4b211-6a59-782f-fe57-83c495bd1764`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 103–122.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem model_error {s : ℂ} (hs : Band s) : ‖finiteModel 4 s - model s‖ ≤ (25 / 1024 : ℝ) := by
  have hd := band_distance hs
  have h2 := FourteenJet.jet_encloses 0 hd
  have h3 := FourteenJet.jet_encloses 1 hd
  have h4 := FourteenJet.jet_encloses 2 hd
  norm_num [FourteenJet.base] at h2 h3 h4
  have heq : finiteModel 4 s - model s =
      (s - 1) * (((2 : ℂ) ^ (-s) - FourteenJet.jet 0 s) +
        ((3 : ℂ) ^ (-s) - FourteenJet.jet 1 s)) +
      ((4 : ℂ) ^ (-s) - FourteenJet.jet 2 s) * coefficient s := by
    rw [finiteModel_four, model]
    ring
  rw [heq]
  apply (norm_add_le _ _).trans
  rw [norm_mul, norm_mul]
  have hp := (norm_add_le _ _).trans (add_le_add h2 h3)
  have hm1 := mul_le_mul (band_norms hs).2 hp (norm_nonneg _) (by norm_num : (0 : ℝ) ≤ 15)
  have hm2 := mul_le_mul h4 (coefficient_norm hs) (norm_nonneg _) (by norm_num : (0 : ℝ) ≤ 1 / 2048)
  linarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CriticalStripCutoffFourSource.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripCutoffFourSource.lean#L103).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e7a1820ab8718eee5c0f8f3db51f16381d9804fd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
