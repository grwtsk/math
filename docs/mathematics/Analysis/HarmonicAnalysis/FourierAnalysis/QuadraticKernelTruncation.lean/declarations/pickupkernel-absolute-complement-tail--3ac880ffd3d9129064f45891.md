# pickupKernel_absolute_complement_tail

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f6a86ceb1bdbde45ed63abe1a007d25b835c9962",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 191,
      "path": "GRWTSK/Analysis/Fourier/QuadraticKernelTruncation.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0cf21a2d-2788-e606-4640-3fee9302a8ef",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8b246fe3-b8fb-40ba-88b8-3810e7fa2ce1",
  "kind": "theorem",
  "lexical_name": "pickupKernel_absolute_complement_tail",
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
  "slug": "pickupkernel-absolute-complement-tail--3ac880ffd3d9129064f45891",
  "source": {
    "blob": "f6a86ceb1bdbde45ed63abe1a007d25b835c9962",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 217,
    "line": 191,
    "path": "GRWTSK/Analysis/Fourier/QuadraticKernelTruncation.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3ac880ffd3d9129064f4589174a5a545f3c6923419cda285f5ef62343f2fdc67",
  "verification": {
    "reference": "docs/verification/Analysis/HarmonicAnalysis/FourierAnalysis/QuadraticKernelTruncation.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8b246fe3-b8fb-40ba-88b8-3810e7fa2ce1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 191–217.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pickupKernel_absolute_complement_tail {c H : ℝ} (hc : 1 < c) (hH : 1 ≤ H) :
    (∫ t : ℝ in (Icc (-H) H)ᶜ, ‖pickupKernel c t‖) ≤
      2*absoluteDirichletBudget c/H := by
  have hl := pickupKernel_absolute_left_tail hc hH
  have hr := pickupKernel_absolute_right_tail hc hH
  have hs : (Icc (-H) H)ᶜ = Iio (-H) ∪ Ioi H := by
    ext t
    simp only [mem_compl_iff, mem_Icc, mem_union, mem_Iio, mem_Ioi]
    constructor
    · intro ht
      by_cases hx : -H ≤ t
      · exact Or.inr (lt_of_not_ge (fun hy => ht ⟨hx,hy⟩))
      · exact Or.inl (lt_of_not_ge hx)
    · rintro (ht | ht) ⟨hx,hy⟩
      · exact (not_lt_of_ge hx) ht
      · exact (not_lt_of_ge hy) ht
  have hd : Disjoint (Iio (-H)) (Ioi H) := by
    apply Set.disjoint_left.mpr
    intro t ht hs
    simp only [mem_Iio,mem_Ioi] at ht hs
    linarith
  rw [hs,setIntegral_union hd measurableSet_Ioi hl.1 hr.1]
  calc
    _ ≤ absoluteDirichletBudget c/H+absoluteDirichletBudget c/H := add_le_add hl.2 hr.2
    _ = _ := by ring

/-- Explicit c-dependent constant, independent of T and H. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/HarmonicAnalysis/FourierAnalysis/QuadraticKernelTruncation.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Fourier/QuadraticKernelTruncation.lean#L191).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f6a86ceb1bdbde45ed63abe1a007d25b835c9962` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
