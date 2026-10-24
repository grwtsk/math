# exists_mem_iterate_mem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c7903f36-1d1c-e8b5-9343-02f39a54e90d",
  "kind": "theorem",
  "lexical_name": "exists_mem_iterate_mem",
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
  "slug": "exists-mem-iterate-mem--aa55ce1599783bbc3118b7c8",
  "source": {
    "blob": "d4e4102946ed9d02d11f8333ee166bd42a076e0d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 109,
    "line": 100,
    "path": "GRWTSK/Analysis/MeasureTheory/Conservative/Variant6b62464c9c5bac136679b8b340a8aff01fa1c5c2d82d84a2af014f9f52f3fac3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:aa55ce1599783bbc3118b7c8a0c010046cd57f9a2e5c23dc21ca1a4a784a773f",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Conservative/Variant6b62464c9c5bac136679b8b340a8aff01fa1c5c2d82d84a2af014f9f52f3fac3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c7903f36-1d1c-e8b5-9343-02f39a54e90d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 100–109.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_mem_iterate_mem (hf : Conservative f μ)
    (hsm : NullMeasurableSet s μ) (hs₀ : μ s ≠ 0) :
    ∃ x ∈ s, ∃ m ≠ 0, f^[m] x ∈ s := by
  rcases hsm.exists_measurable_subset_ae_eq with ⟨t, hsub, htm, hts⟩
  rcases hf.exists_mem_iterate_mem' htm (by rwa [measure_congr hts]) with ⟨x, hxt, m, hm₀, hmt⟩
  exact ⟨x, hsub hxt, m, hm₀, hsub hmt⟩

/-- If `f` is a conservative map and `s` is a measurable set of nonzero measure, then
for infinitely many values of `m` a positive measure of points `x ∈ s` returns back to `s`
after `m` iterations of `f`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Conservative/Variant6b62464c9c5bac136679b8b340a8aff01fa1c5c2d82d84a2af014f9f52f3fac3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Conservative/Variant6b62464c9c5bac136679b8b340a8aff01fa1c5c2d82d84a2af014f9f52f3fac3.lean#L100).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d4e4102946ed9d02d11f8333ee166bd42a076e0d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
