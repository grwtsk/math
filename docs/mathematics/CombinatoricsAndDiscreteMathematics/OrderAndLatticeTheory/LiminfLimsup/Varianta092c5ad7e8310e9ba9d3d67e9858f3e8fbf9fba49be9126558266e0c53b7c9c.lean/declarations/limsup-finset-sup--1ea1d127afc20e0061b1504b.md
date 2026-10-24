# limsup_finset_sup'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "20eefdbb07984ea175bd4677819c1ea4a0c1f6f0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 916,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a0/a092c5ad7e8310e9ba9d3d67e9858f3e8fbf9fba49be9126558266e0c53b7c9c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:12eac3cc-31d8-d540-a5e2-bdd3386957cd",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d4767cec-cd72-5c52-f079-31cba3865c9a",
  "kind": "theorem",
  "lexical_name": "limsup_finset_sup'",
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
  "slug": "limsup-finset-sup--1ea1d127afc20e0061b1504b",
  "source": {
    "blob": "20eefdbb07984ea175bd4677819c1ea4a0c1f6f0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 936,
    "line": 916,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LiminfLimsup/Varianta092c5ad7e8310e9ba9d3d67e9858f3e8fbf9fba49be9126558266e0c53b7c9c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1ea1d127afc20e0061b1504be10850280e00e9b94cb159bf2c387afbd1ab1f45",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LiminfLimsup/Varianta092c5ad7e8310e9ba9d3d67e9858f3e8fbf9fba49be9126558266e0c53b7c9c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d4767cec-cd72-5c52-f079-31cba3865c9a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 916–936.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem limsup_finset_sup' [ConditionallyCompleteLinearOrder β] {f : Filter α}
    {F : ι → α → β} {s : Finset ι} (hs : s.Nonempty)
    (h₁ : ∀ i ∈ s, f.IsCoboundedUnder (· ≤ ·) (F i) := by exact fun _ _ ↦ by isBoundedDefault)
    (h₂ : ∀ i ∈ s, f.IsBoundedUnder (· ≤ ·) (F i) := by exact fun _ _ ↦ by isBoundedDefault) :
    limsup (fun a ↦ sup' s hs (fun i ↦ F i a)) f = sup' s hs (fun i ↦ limsup (F i) f) := by
  have bddsup := isBoundedUnder_le_finset_sup' hs h₂
  apply le_antisymm
  · have h₃ : ∃ i ∈ s, f.IsCoboundedUnder (· ≤ ·) (F i) := by
      rcases hs with ⟨i, i_s⟩
      use i, i_s
      exact h₁ i i_s
    have cobddsup := isCoboundedUnder_le_finset_sup' hs h₃
    refine (limsup_le_iff cobddsup bddsup).2 (fun b hb ↦ ?_)
    simp only [sup'_lt_iff, eventually_all_finset] at hb ⊢
    exact fun i i_s ↦ eventually_lt_of_limsup_lt (hb i i_s) (h₂ i i_s)
  · apply Finset.sup'_le hs (fun i ↦ limsup (F i) f)
    refine fun i i_s ↦ limsup_le_limsup (Eventually.of_forall (fun a ↦ ?_)) (h₁ i i_s) bddsup
    simp only [le_sup'_iff]
    use i, i_s

@[to_dual]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LiminfLimsup/Varianta092c5ad7e8310e9ba9d3d67e9858f3e8fbf9fba49be9126558266e0c53b7c9c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LiminfLimsup/Varianta092c5ad7e8310e9ba9d3d67e9858f3e8fbf9fba49be9126558266e0c53b7c9c.lean#L916).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `20eefdbb07984ea175bd4677819c1ea4a0c1f6f0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
