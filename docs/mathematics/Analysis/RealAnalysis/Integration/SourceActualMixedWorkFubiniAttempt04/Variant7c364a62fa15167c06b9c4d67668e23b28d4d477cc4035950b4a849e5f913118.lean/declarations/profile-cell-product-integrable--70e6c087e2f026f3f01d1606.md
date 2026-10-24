# profile_cell_product_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b8ad6844-4e9b-315b-8c2b-80d850278e61",
  "kind": "theorem",
  "lexical_name": "profile_cell_product_integrable",
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
  "slug": "profile-cell-product-integrable--70e6c087e2f026f3f01d1606",
  "source": {
    "blob": "ad1e9acdc6338957231265ba5093d677e93d0e95",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 470,
    "line": 456,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceActualMixedWorkFubiniAttempt04/Variant7c364a62fa15167c06b9c4d67668e23b28d4d477cc4035950b4a849e5f913118.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:70e6c087e2f026f3f01d1606550995ad895640cbbba3addcc8e7a3e324ef734a",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceActualMixedWorkFubiniAttempt04/Variant7c364a62fa15167c06b9c4d67668e23b28d4d477cc4035950b4a849e5f913118.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b8ad6844-4e9b-315b-8c2b-80d850278e61`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 456–470.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem profile_cell_product_integrable
    (r : ℝ → ℝ) (hc : Continuous r) {A l b k : ℝ} (hlb : l ≤ b)
    (hk : 0 < k) (hs : tsupport r ⊆ Icc (-A) A) :
    Integrable (fun v => profileX r l b v * profileYCell r k v) := by
  have hf := (cellKernel_integrable r hc hlb hk hs).integral_prod_right
  convert hf using 1
  funext v
  unfold profileX profileYCell
  simp only [intervalIntegral.integral_of_le hlb,
    intervalIntegral.integral_of_le (le_add_of_nonneg_right (by norm_num : (0 : ℝ) ≤ 1))]
  symm
  exact integral_prod_mul
    (fun t : ℝ => errorExp t * r (v - t))
    (fun u : ℝ => r (v + Real.log u) / (u * Real.sqrt u))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceActualMixedWorkFubiniAttempt04/Variant7c364a62fa15167c06b9c4d67668e23b28d4d477cc4035950b4a849e5f913118.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceActualMixedWorkFubiniAttempt04/Variant7c364a62fa15167c06b9c4d67668e23b28d4d477cc4035950b4a849e5f913118.lean#L456).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ad1e9acdc6338957231265ba5093d677e93d0e95` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
