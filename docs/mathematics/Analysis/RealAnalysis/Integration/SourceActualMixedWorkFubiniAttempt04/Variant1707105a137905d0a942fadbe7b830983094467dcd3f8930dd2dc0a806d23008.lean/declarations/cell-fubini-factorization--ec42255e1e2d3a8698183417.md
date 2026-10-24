# cell_fubini_factorization

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b2a9a45b3cda4ae535cda0b11ae5ace720c3f0f0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 147,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/17/1707105a137905d0a942fadbe7b830983094467dcd3f8930dd2dc0a806d23008.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:35ce9e8f-8986-1dc1-cf98-9e915a651f37",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:bddde9cc-49b1-3d87-df43-f4d6ccaadd27",
  "kind": "theorem",
  "lexical_name": "cell_fubini_factorization",
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
  "slug": "cell-fubini-factorization--ec42255e1e2d3a8698183417",
  "source": {
    "blob": "b2a9a45b3cda4ae535cda0b11ae5ace720c3f0f0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 172,
    "line": 147,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceActualMixedWorkFubiniAttempt04/Variant1707105a137905d0a942fadbe7b830983094467dcd3f8930dd2dc0a806d23008.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ec42255e1e2d3a8698183417158b2010270953729da92c8252f34b8501eee3b4",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceActualMixedWorkFubiniAttempt04/Variant1707105a137905d0a942fadbe7b830983094467dcd3f8930dd2dc0a806d23008.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bddde9cc-49b1-3d87-df43-f4d6ccaadd27`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 147–172.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem cell_fubini_factorization
    (r : ℝ → ℝ) (hc : Continuous r) {A l b k : ℝ} (hlb : l ≤ b)
    (hk : 0 < k) (hs : tsupport r ⊆ Icc (-A) A) :
    (∫ t in l..b, ∫ u in k..(k + 1), ∫ v : ℝ,
      errorExp t * r (v - t) * (r (v + Real.log u) / (u * Real.sqrt u))) =
      ∫ v : ℝ, (∫ t in l..b, errorExp t * r (v - t)) *
        (∫ u in k..(k + 1), r (v + Real.log u) / (u * Real.sqrt u)) := by
  let μt := volume.restrict (Ioc l b)
  let μu := volume.restrict (Ioc k (k + 1))
  have hf := cellKernel_integrable r hc hlb hk hs
  have hout := integral_prod
    (fun z : ℝ × ℝ => ∫ v : ℝ, cellKernel r (z, v)) hf.integral_prod_left
  have hswap := integral_integral_swap
    (f := fun z : ℝ × ℝ => fun v : ℝ => cellKernel r (z, v)) hf
  simp only [intervalIntegral.integral_of_le hlb,
    intervalIntegral.integral_of_le (le_add_of_nonneg_right (by norm_num : (0 : ℝ) ≤ 1))]
  change (∫ t, (∫ u, (∫ v : ℝ, cellKernel r ((t, u), v)) ∂μu) ∂μt) =
    ∫ v : ℝ, (∫ t, errorExp t * r (v - t) ∂μt) *
      (∫ u, r (v + Real.log u) / (u * Real.sqrt u) ∂μu)
  rw [← hout, hswap]
  apply integral_congr_ae
  filter_upwards [] with v
  exact integral_prod_mul
    (fun t : ℝ => errorExp t * r (v - t))
    (fun u : ℝ => r (v + Real.log u) / (u * Real.sqrt u))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceActualMixedWorkFubiniAttempt04/Variant1707105a137905d0a942fadbe7b830983094467dcd3f8930dd2dc0a806d23008.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceActualMixedWorkFubiniAttempt04/Variant1707105a137905d0a942fadbe7b830983094467dcd3f8930dd2dc0a806d23008.lean#L147).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b2a9a45b3cda4ae535cda0b11ae5ace720c3f0f0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
