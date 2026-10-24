# nnnorm_apply_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fc558213-4e4a-5948-7c48-1713652267fc",
  "kind": "theorem",
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
  "slug": "nnnorm-apply-le--0f9f1f244f13238b0a5b827f",
  "source": {
    "blob": "e651fc55442d4b551f57f09ce683bd5288cb991f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 152,
    "line": 140,
    "path": "GRWTSK/Topology/GeneralTopology/Spectrum/Variantca4dcc21745935b768bb0688f41b879fee8677463f24a00850712e0f787d1bd4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0f9f1f244f13238b0a5b827f6beb70ab238e9ea8d8fb6f28f1d006e2418a6ff7",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Spectrum/Variantca4dcc21745935b768bb0688f41b879fee8677463f24a00850712e0f787d1bd4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fc558213-4e4a-5948-7c48-1713652267fc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 140–152.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem nnnorm_apply_le (a : A) : ‖(φ a : B)‖₊ ≤ ‖a‖₊ := by
  suffices ∀ s : A, IsSelfAdjoint s → ‖φ s‖₊ ≤ ‖s‖₊ by
    exact nonneg_le_nonneg_of_sq_le_sq zero_le' <| by
      simpa only [nnnorm_star_mul_self, map_star, map_mul]
      using this _ (IsSelfAdjoint.star_mul_self a)
  · intro s hs
    simpa only [hs.spectralRadius_eq_nnnorm, (hs.starHom_apply φ).spectralRadius_eq_nnnorm,
      coe_le_coe] using
      show spectralRadius ℂ (φ s) ≤ spectralRadius ℂ s from
        iSup_le_iSup_of_subset (AlgHom.spectrum_apply_subset φ s)
#align star_alg_hom.nnnorm_apply_le StarAlgHom.nnnorm_apply_le

/-- A star algebra homomorphism of complex C⋆-algebras is norm contractive. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Spectrum/Variantca4dcc21745935b768bb0688f41b879fee8677463f24a00850712e0f787d1bd4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Spectrum/Variantca4dcc21745935b768bb0688f41b879fee8677463f24a00850712e0f787d1bd4.lean#L140).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e651fc55442d4b551f57f09ce683bd5288cb991f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
