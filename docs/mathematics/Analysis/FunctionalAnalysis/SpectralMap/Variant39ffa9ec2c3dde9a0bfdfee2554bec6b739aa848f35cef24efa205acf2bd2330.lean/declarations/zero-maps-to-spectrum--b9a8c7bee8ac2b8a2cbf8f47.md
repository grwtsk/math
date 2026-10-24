# zero_maps_to_spectrum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8dc4a63335ac39199018c81836576fe3d3f76c15",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 48,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/39/39ffa9ec2c3dde9a0bfdfee2554bec6b739aa848f35cef24efa205acf2bd2330.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:bca5a40b-3778-2dbb-07c7-e59f16d63869",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b46b1b5c-514a-8d31-d9ba-15d75fba0c34",
  "kind": "lemma",
  "lexical_name": "zero_maps_to_spectrum",
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
  "slug": "zero-maps-to-spectrum--b9a8c7bee8ac2b8a2cbf8f47",
  "source": {
    "blob": "8dc4a63335ac39199018c81836576fe3d3f76c15",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 62,
    "line": 48,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/SpectralMap/Variant39ffa9ec2c3dde9a0bfdfee2554bec6b739aa848f35cef24efa205acf2bd2330.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b9a8c7bee8ac2b8a2cbf8f473164109b18965eeb9be3e52562f582bb8bfa2a37",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/SpectralMap/Variant39ffa9ec2c3dde9a0bfdfee2554bec6b739aa848f35cef24efa205acf2bd2330.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b46b1b5c-514a-8d31-d9ba-15d75fba0c34`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 48–62.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma zero_maps_to_spectrum
    (Φ : ℝ → ℂ) (Λπ : ℂ → ℂ) (hϕ : ∃ α > π, ∀ x, ϕ x ≥ α * |x|)
    (ρ : ℂ) (hρ : Λπ ρ = 0) :
    spectralMap ρ ∈ spectrum (Lsym_pi Φ hϕ) := by
  -- Assume canonical determinant identity holds:
  -- det_ζ(I - λ L) = Λπ(½ + iλ)/Λπ(½)
  let λ := spectralMap ρ
  have hdet := canonical_det_identity Φ Λπ hϕ λ
  rw [spectralMap, ← ofReal_div, ← Complex.div_eq_inv_mul] at hdet
  rw [hρ, zero_div, hdet, div_eq_zero_iff] at hdet
  obtain ⟨h, _⟩ := hdet
  -- det_ζ(I - λL) = 0 ⇒ λ ∈ Spec(L) (Fredholm theory)
  exact Spectrum.of_det_zeta_zero λ (Lsym_pi Φ hϕ) h

end SpectralProof.Determinants
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/SpectralMap/Variant39ffa9ec2c3dde9a0bfdfee2554bec6b739aa848f35cef24efa205acf2bd2330.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/SpectralMap/Variant39ffa9ec2c3dde9a0bfdfee2554bec6b739aa848f35cef24efa205acf2bd2330.lean#L48).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8dc4a63335ac39199018c81836576fe3d3f76c15` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
