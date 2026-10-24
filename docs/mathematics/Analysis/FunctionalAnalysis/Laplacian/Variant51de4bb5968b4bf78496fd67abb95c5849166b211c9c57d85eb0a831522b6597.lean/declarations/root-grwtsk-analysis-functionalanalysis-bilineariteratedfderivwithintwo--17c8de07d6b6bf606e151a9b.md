# _root_.GRWTSK.Analysis.FunctionalAnalysis.BilinearIteratedFDerivWithinTwo.Variant095462454e91ffe43c6b3a190f7643e52d6664cbbbb44cbb49ef44308c521715.ContDiffAt.laplacianWithin_add_nhdsWithin

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0682cbef-4fdd-a72c-48d4-1e31a232ad34",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.Analysis.FunctionalAnalysis.BilinearIteratedFDerivWithinTwo.Variant095462454e91ffe43c6b3a190f7643e52d6664cbbbb44cbb49ef44308c521715.ContDiffAt.laplacianWithin_add_nhdsWithin",
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
  "slug": "root-grwtsk-analysis-functionalanalysis-bilineariteratedfderivwithintwo--17c8de07d6b6bf606e151a9b",
  "source": {
    "blob": "9cb7e7ba0e5566e47a0a3aa04feaf3135c1437ef",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 302,
    "line": 293,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/Laplacian/Variant51de4bb5968b4bf78496fd67abb95c5849166b211c9c57d85eb0a831522b6597.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:17c8de07d6b6bf606e151a9b1b3011090bcd9868c7757ce40c263b6e673ae3b2",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/Laplacian/Variant51de4bb5968b4bf78496fd67abb95c5849166b211c9c57d85eb0a831522b6597.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0682cbef-4fdd-a72c-48d4-1e31a232ad34`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 293–302.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.Analysis.FunctionalAnalysis.BilinearIteratedFDerivWithinTwo.Variant095462454e91ffe43c6b3a190f7643e52d6664cbbbb44cbb49ef44308c521715.ContDiffAt.laplacianWithin_add_nhdsWithin (h₁ : ContDiffWithinAt ℝ 2 f₁ s x)
    (h₂ : ContDiffWithinAt ℝ 2 f₂ s x) (hs : UniqueDiffOn ℝ s) (hx : x ∈ s) :
    Δ[s] (f₁ + f₂) =ᶠ[𝓝[s] x] (Δ[s] f₁) + Δ[s] f₂ := by
  nth_rw 1 [← s.insert_eq_of_mem hx]
  filter_upwards [h₁.eventually (by simp), h₂.eventually (by simp),
    eventually_mem_nhdsWithin] with y h₁y h₂y h₃y
  rw [s.insert_eq_of_mem hx] at h₃y
  simp [h₁y.laplacianWithin_add h₂y hs h₃y]

/-- The Laplacian commutes with addition. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/Laplacian/Variant51de4bb5968b4bf78496fd67abb95c5849166b211c9c57d85eb0a831522b6597.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/Laplacian/Variant51de4bb5968b4bf78496fd67abb95c5849166b211c9c57d85eb0a831522b6597.lean#L293).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9cb7e7ba0e5566e47a0a3aa04feaf3135c1437ef` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
