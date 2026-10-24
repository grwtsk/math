# compactSet_eq_union_aux₁

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:630bd6b3-cd83-8d00-3f49-d72371314a59",
  "kind": "theorem",
  "lexical_name": "compactSet_eq_union_aux₁",
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
  "slug": "compactset-eq-union-aux--c574cf87f33d1f9432e26ccd",
  "source": {
    "blob": "6efea0da50e4f59970871dbfa3bfa287293218b5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 780,
    "line": 760,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/NormLeOne/Variantfbf367b27f6c32669e5853e03cea2d57f637736f72e7b2aeac27ec961cd6ca5e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c574cf87f33d1f9432e26ccd5003407128ccf9805e9f850f739ec6a1752c1cac",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/NormLeOne/Variantfbf367b27f6c32669e5853e03cea2d57f637736f72e7b2aeac27ec961cd6ca5e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:630bd6b3-cd83-8d00-3f49-d72371314a59`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 760–780.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem compactSet_eq_union_aux₁ {x : realSpace K} (hx₀ : x ≠ 0)
    (hx₁ : x ∈ compactSet K) :
    x ∈ expMapBasis '' closure (paramSet K) := by
  classical
  obtain ⟨c, hc, ⟨_, ⟨y, hy, rfl⟩, rfl⟩⟩ := hx₁
  refine ⟨fun w ↦ if w = w₀ then Real.log c else y w, ?_, ?_⟩
  · rw [closure_paramSet, Set.mem_univ_pi]
    intro w
    split_ifs with h
    · refine Real.log_nonpos hc.1 hc.2
    · simpa [h] using hy w (Set.mem_univ _)
  · have hc' : 0 < c := by
      contrapose! hx₀
      rw [le_antisymm hx₀ hc.1, zero_smul]
    rw [expMapBasis_apply'', ite_eq_left rfl, Real.exp_log hc']
    congr with w
    split_ifs with h
    · simpa [h, eq_comm] using hy w₀
    · rfl

variable {K} in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/NormLeOne/Variantfbf367b27f6c32669e5853e03cea2d57f637736f72e7b2aeac27ec961cd6ca5e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/NormLeOne/Variantfbf367b27f6c32669e5853e03cea2d57f637736f72e7b2aeac27ec961cd6ca5e.lean#L760).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6efea0da50e4f59970871dbfa3bfa287293218b5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
