# nnnorm_apply_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:63e300cc-9736-d96c-d4f9-8f163cfc02a8",
  "kind": "lemma",
  "lexical_name": "nnnorm_apply_le",
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
  "slug": "nnnorm-apply-le--4505eba67823d0b9d1232377",
  "source": {
    "blob": "f5a9603fbf1f74769e0c3ea58cc75febad5722c5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 261,
    "line": 247,
    "path": "GRWTSK/Topology/GeneralTopology/Spectrum/Variant22a8cfd2c011b998def47fa0b780aa52cf966406749db669f5e421de31a95ddf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4505eba67823d0b9d1232377db523d3d9cbb94828c33387cfd3983a5aaf013c8",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Spectrum/Variant22a8cfd2c011b998def47fa0b780aa52cf966406749db669f5e421de31a95ddf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:63e300cc-9736-d96c-d4f9-8f163cfc02a8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 247–261.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma nnnorm_apply_le (φ : F) (a : A) : ‖φ a‖₊ ≤ ‖a‖₊ := by
  have h (ψ : Unitization ℂ A →⋆ₐ[ℂ] Unitization ℂ B) (x : Unitization ℂ A) :
      ‖ψ x‖₊ ≤ ‖x‖₊ := by
    suffices ∀ {s}, IsSelfAdjoint s → ‖ψ s‖₊ ≤ ‖s‖₊ by
      refine nonneg_le_nonneg_of_sq_le_sq zero_le' ?_
      simp_rw [← nnnorm_star_mul_self, ← map_star, ← map_mul]
      exact this <| .star_mul_self x
    intro s hs
    suffices this : spectralRadius ℂ (ψ s) ≤ spectralRadius ℂ s by
      rwa [(hs.map ψ).spectralRadius_eq_nnnorm, hs.spectralRadius_eq_nnnorm, coe_le_coe]
        at this
    exact iSup_le_iSup_of_subset (AlgHom.spectrum_apply_subset ψ s)
  simpa [nnnorm_inr] using h (starLift (inrNonUnitalStarAlgHom ℂ B |>.comp (φ : A →⋆ₙₐ[ℂ] B))) a

/-- A non-unital star algebra homomorphism of complex C⋆-algebras is norm contractive. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Spectrum/Variant22a8cfd2c011b998def47fa0b780aa52cf966406749db669f5e421de31a95ddf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Spectrum/Variant22a8cfd2c011b998def47fa0b780aa52cf966406749db669f5e421de31a95ddf.lean#L247).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f5a9603fbf1f74769e0c3ea58cc75febad5722c5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
