# tendstoUniformlyOn_deriv_of_cthickening_subset

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:83870ffb-29af-a3e3-609b-7d2a8a3f0ef4",
  "kind": "theorem",
  "lexical_name": "tendstoUniformlyOn_deriv_of_cthickening_subset",
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
  "slug": "tendstouniformlyon-deriv-of-cthickening-subset--8dbb39f2c6debdd32b7214e7",
  "source": {
    "blob": "d691113fbecf81a638eac73916f0c2a3e089be78",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 134,
    "line": 122,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/LocallyUniformLimit/Variant412fb6f63ba9c99fda0bcc3945a80b0f42564e76094c0e8a9e2fffaae7ed0591.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8dbb39f2c6debdd32b7214e75211b915bf7e8d9fa7fe22086dfc6596c576fbfc",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/LocallyUniformLimit/Variant412fb6f63ba9c99fda0bcc3945a80b0f42564e76094c0e8a9e2fffaae7ed0591.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:83870ffb-29af-a3e3-609b-7d2a8a3f0ef4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 122–134.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendstoUniformlyOn_deriv_of_cthickening_subset (hf : TendstoLocallyUniformlyOn F f φ U)
    (hF : ∀ᶠ n in φ, DifferentiableOn ℂ (F n) U) {δ : ℝ} (hδ : 0 < δ) (hK : IsCompact K)
    (hU : IsOpen U) (hKU : cthickening δ K ⊆ U) :
    TendstoUniformlyOn (deriv ∘ F) (cderiv δ f) φ K := by
  have h1 : ∀ᶠ n in φ, ContinuousOn (F n) (cthickening δ K) := by
    filter_upwards [hF] with n h using h.continuousOn.mono hKU
  have h2 : IsCompact (cthickening δ K) := hK.cthickening
  have h3 : TendstoUniformlyOn F f φ (cthickening δ K) :=
    (tendstoLocallyUniformlyOn_iff_forall_isCompact hU).mp hf (cthickening δ K) hKU h2
  apply (h3.cderiv hδ h1).congr
  filter_upwards [hF] with n h z hz
  exact cderiv_eq_deriv hU h hδ ((closedBall_subset_cthickening hz δ).trans hKU)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/LocallyUniformLimit/Variant412fb6f63ba9c99fda0bcc3945a80b0f42564e76094c0e8a9e2fffaae7ed0591.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/LocallyUniformLimit/Variant412fb6f63ba9c99fda0bcc3945a80b0f42564e76094c0e8a9e2fffaae7ed0591.lean#L122).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d691113fbecf81a638eac73916f0c2a3e089be78` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
