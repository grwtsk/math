# hasDerivAt_Efun

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6d3ece8d57d60fa3ab47657e589d10dc8d18d12e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 261,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/53/533497cb55448f996abb226cb728ec736ddda8257004fe7d6354b3aebf69ee88.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c53a8ed1-dcf2-8b93-4fe2-684d810bc57b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f4f14ddf-3006-2b74-a883-df8a239b6a7a",
  "kind": "lemma",
  "lexical_name": "hasDerivAt_Efun",
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
  "slug": "hasderivat-efun--6f18039ebbffda1e34d76577",
  "source": {
    "blob": "6d3ece8d57d60fa3ab47657e589d10dc8d18d12e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 274,
    "line": 261,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Stability/Variant533497cb55448f996abb226cb728ec736ddda8257004fe7d6354b3aebf69ee88.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6f18039ebbffda1e34d76577a42806de81b591f5dd5e84b8d234d94211ec69c8",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Stability/Variant533497cb55448f996abb226cb728ec736ddda8257004fe7d6354b3aebf69ee88.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f4f14ddf-3006-2b74-a883-df8a239b6a7a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 261–274.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma hasDerivAt_Efun (hN : 0 < N) {x : ℝ} (hx : x ∈ Ioo (0:ℝ) 1 \ grid N) :
    HasDerivAt (Efun s N) (Dfun s N x) x := by
  obtain ⟨m, hm, hxm⟩ := exists_cell hN hx
  have hI : IntervalIntegrable (Dfun s N) volume 0 x :=
    (intervalIntegrable_Dfun hN).mono_set (by
      rw [uIcc_of_le zero_le_one, uIcc_of_le hx.1.1.le]; exact Icc_subset_Icc le_rfl hx.1.2.le)
  have hmeas : StronglyMeasurableAtFilter (Dfun s N) (nhds x) volume :=
    measurable_Dfun.stronglyMeasurable.stronglyMeasurableAtFilter
  exact intervalIntegral.integral_hasDerivAt_right hI hmeas (continuousAt_Dfun hN hx)

/-! ### 5. second-order identity and the ceiling-stability bound -/

/-- **(2) SECOND-ORDER IDENTITY.** If additionally g is differentiable off a countable set T ⊆ ℝ with derivative h,
h interval-integrable on [0,1]:  Σ s_j r(j/N) − ∫₀¹ r x·x = r(1)·D(1) − g(1)·E(1) + ∫₀¹ h·E. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Stability/Variant533497cb55448f996abb226cb728ec736ddda8257004fe7d6354b3aebf69ee88.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Stability/Variant533497cb55448f996abb226cb728ec736ddda8257004fe7d6354b3aebf69ee88.lean#L261).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6d3ece8d57d60fa3ab47657e589d10dc8d18d12e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
