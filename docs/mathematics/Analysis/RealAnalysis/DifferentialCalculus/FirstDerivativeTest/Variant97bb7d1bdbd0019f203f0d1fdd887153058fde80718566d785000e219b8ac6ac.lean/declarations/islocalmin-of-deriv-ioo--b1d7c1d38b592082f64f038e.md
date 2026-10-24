# isLocalMin_of_deriv_Ioo

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "16e95ec805e2c28520907cd2576082d3036d9572",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 63,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/97/97bb7d1bdbd0019f203f0d1fdd887153058fde80718566d785000e219b8ac6ac.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3016a42c-c7d1-e38d-aa4d-e2741af77e93",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9414e61f-3a83-86a3-05a5-f5f604b1c5c2",
  "kind": "lemma",
  "lexical_name": "isLocalMin_of_deriv_Ioo",
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
  "slug": "islocalmin-of-deriv-ioo--b1d7c1d38b592082f64f038e",
  "source": {
    "blob": "16e95ec805e2c28520907cd2576082d3036d9572",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 75,
    "line": 63,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FirstDerivativeTest/Variant97bb7d1bdbd0019f203f0d1fdd887153058fde80718566d785000e219b8ac6ac.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b1d7c1d38b592082f64f038ea406a4ba37335e20c98dd8a36cc1f5ad115f84d2",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/FirstDerivativeTest/Variant97bb7d1bdbd0019f203f0d1fdd887153058fde80718566d785000e219b8ac6ac.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9414e61f-3a83-86a3-05a5-f5f604b1c5c2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 63–75.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isLocalMin_of_deriv_Ioo {f : ℝ → ℝ} {a b c : ℝ}
    (g₀ : a < b) (g₁ : b < c) (h : ContinuousAt f b)
    (hd₀ : DifferentiableOn ℝ f (Ioo a b)) (hd₁ : DifferentiableOn ℝ f (Ioo b c))
    (h₀ : ∀ x ∈ Ioo a b, deriv f x ≤ 0)
    (h₁ : ∀ x ∈ Ioo b c, 0 ≤ deriv f x) : IsLocalMin f b := by
  have := isLocalMax_of_deriv_Ioo (f := -f) g₀ g₁
    (by simp_all) hd₀.neg hd₁.neg
    (fun x hx => deriv.neg (f := f) ▸ Left.nonneg_neg_iff.mpr <|h₀ x hx)
    (fun x hx => deriv.neg (f := f) ▸ Left.neg_nonpos_iff.mpr <|h₁ x hx)
  exact (neg_neg f) ▸ IsLocalMax.neg this

/-- The First-Derivative Test from calculus, maxima version,
expressed in terms of left and right filters. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/FirstDerivativeTest/Variant97bb7d1bdbd0019f203f0d1fdd887153058fde80718566d785000e219b8ac6ac.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FirstDerivativeTest/Variant97bb7d1bdbd0019f203f0d1fdd887153058fde80718566d785000e219b8ac6ac.lean#L63).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `16e95ec805e2c28520907cd2576082d3036d9572` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
