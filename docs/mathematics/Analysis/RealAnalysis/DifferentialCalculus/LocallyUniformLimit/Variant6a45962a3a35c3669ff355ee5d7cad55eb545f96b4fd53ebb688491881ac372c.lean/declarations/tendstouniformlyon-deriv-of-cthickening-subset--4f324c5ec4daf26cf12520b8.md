# tendstoUniformlyOn_deriv_of_cthickening_subset

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b4a9947620884b5c98eb2aefbbf1a9e39f34244a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 114,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6a/6a45962a3a35c3669ff355ee5d7cad55eb545f96b4fd53ebb688491881ac372c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:35ba102d-6174-c557-0c8c-c9dbafd93f4d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3684c0de-3ba0-606e-31ad-a19480800338",
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
  "slug": "tendstouniformlyon-deriv-of-cthickening-subset--4f324c5ec4daf26cf12520b8",
  "source": {
    "blob": "b4a9947620884b5c98eb2aefbbf1a9e39f34244a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 126,
    "line": 114,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/LocallyUniformLimit/Variant6a45962a3a35c3669ff355ee5d7cad55eb545f96b4fd53ebb688491881ac372c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4f324c5ec4daf26cf12520b8aac0b01d844f375a1c13d21602e51b93abd7a671",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/LocallyUniformLimit/Variant6a45962a3a35c3669ff355ee5d7cad55eb545f96b4fd53ebb688491881ac372c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3684c0de-3ba0-606e-31ad-a19480800338`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 114–126.

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

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/LocallyUniformLimit/Variant6a45962a3a35c3669ff355ee5d7cad55eb545f96b4fd53ebb688491881ac372c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/LocallyUniformLimit/Variant6a45962a3a35c3669ff355ee5d7cad55eb545f96b4fd53ebb688491881ac372c.lean#L114).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b4a9947620884b5c98eb2aefbbf1a9e39f34244a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
