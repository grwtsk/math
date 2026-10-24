# multiplyLI

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:99a7e08a7b5eeaf27fe0eceecc54b04e7c9b61fe3e6e74625bb0d681a2ae43e2",
  "kind": "def",
  "lexical_name": "multiplyLI",
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
  "slug": "multiplyli--82656bc4cea142fabf27fc92",
  "source": {
    "blob": "57752dfeb1c55413710aa00a3bee993f923d7d9b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 69,
    "line": 46,
    "path": "GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/SourceReflectionDuality/Variant07611ca9654fde2c054a03d1749175de0426b7b8e7e4b4c62554a8422bf74390.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:82656bc4cea142fabf27fc925aeca0245268bf5d013aa29f8536d7d49896ae43",
  "verification": {
    "reference": "docs/verification/Analysis/HarmonicAnalysis/FourierAnalysis/SourceReflectionDuality/Variant07611ca9654fde2c054a03d1749175de0426b7b8e7e4b4c62554a8422bf74390.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:99a7e08a7b5eeaf27fe0eceecc54b04e7c9b61fe3e6e74625bb0d681a2ae43e2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 46–69.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def multiplyLI (φ : ℝ → ℂ) (hm : Measurable φ)
    (hφ : ∀ ξ, ‖φ ξ‖ = 1) : ComplexL2 →ₗᵢ[ℂ] ComplexL2 where
  toFun := multiply φ hm hφ
  map_add' f g := by
    apply Lp.ext
    filter_upwards [multiply_ae φ hm hφ (f+g), multiply_ae φ hm hφ f,
      multiply_ae φ hm hφ g, Lp.coeFn_add f g,
      Lp.coeFn_add (multiply φ hm hφ f) (multiply φ hm hφ g)] with ξ hfg hf hg ha hb
    simp only [hfg, hf, hg, ha, hb, Pi.add_apply]
    ring
  map_smul' a f := by
    apply Lp.ext
    filter_upwards [multiply_ae φ hm hφ (a • f), multiply_ae φ hm hφ f,
      Lp.coeFn_smul a f, Lp.coeFn_smul a (multiply φ hm hφ f)] with ξ haf hf hs ht
    simp only [haf, hf, hs, ht, Pi.smul_apply, smul_eq_mul, RingHom.id_apply]
    ring
  norm_map' f := by
    change ‖(multiply_memLp φ hm hφ f).toLp _‖ = ‖f‖
    rw [Lp.norm_toLp, Lp.norm_def]
    congr 1
    apply eLpNorm_congr_norm_ae
    exact Filter.Eventually.of_forall (fun ξ => by simp [hφ])

/-- The actual pointwise sign-frequency multiplication on complex L². -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/HarmonicAnalysis/FourierAnalysis/SourceReflectionDuality/Variant07611ca9654fde2c054a03d1749175de0426b7b8e7e4b4c62554a8422bf74390.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/SourceReflectionDuality/Variant07611ca9654fde2c054a03d1749175de0426b7b8e7e4b4c62554a8422bf74390.lean#L46).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `57752dfeb1c55413710aa00a3bee993f923d7d9b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
