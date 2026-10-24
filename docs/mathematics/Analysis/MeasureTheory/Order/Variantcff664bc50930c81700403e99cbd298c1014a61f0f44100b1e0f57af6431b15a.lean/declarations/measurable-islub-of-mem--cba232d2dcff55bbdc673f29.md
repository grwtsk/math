# Measurable.isLUB_of_mem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "373362a90f7b59d21ae884ceadb84fc51fcae514",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 713,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/cf/cff664bc50930c81700403e99cbd298c1014a61f0f44100b1e0f57af6431b15a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c85600af-f703-25e2-5538-e6d840e737e1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d49c4236-6337-508a-a409-3bc41a5f1fd5",
  "kind": "theorem",
  "lexical_name": "Measurable.isLUB_of_mem",
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
  "slug": "measurable-islub-of-mem--cba232d2dcff55bbdc673f29",
  "source": {
    "blob": "373362a90f7b59d21ae884ceadb84fc51fcae514",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 743,
    "line": 713,
    "path": "GRWTSK/Analysis/MeasureTheory/Order/Variantcff664bc50930c81700403e99cbd298c1014a61f0f44100b1e0f57af6431b15a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cba232d2dcff55bbdc673f29bcca635ac937644ad8f9972d0162ef1f47509cc5",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Order/Variantcff664bc50930c81700403e99cbd298c1014a61f0f44100b1e0f57af6431b15a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d49c4236-6337-508a-a409-3bc41a5f1fd5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 713–743.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Measurable.isLUB_of_mem {ι} [Countable ι] {f : ι → δ → α} {g g' : δ → α}
    (hf : ∀ i, Measurable (f i))
    {s : Set δ} (hs : MeasurableSet s) (hg : ∀ b ∈ s, IsLUB { a | ∃ i, f i b = a } (g b))
    (hg' : EqOn g g' sᶜ) (g'_meas : Measurable g') : Measurable g := by
  classical
  rcases isEmpty_or_nonempty ι with hι | ⟨⟨i⟩⟩
  · rcases eq_empty_or_nonempty s with rfl | ⟨x, hx⟩
    · convert! g'_meas
      rwa [compl_empty, eqOn_univ] at hg'
    · have A : ∀ b ∈ s, IsBot (g b) := by simpa using hg
      have B : ∀ b ∈ s, g b = g x := by
        intro b hb
        apply le_antisymm (A b hb (g x)) (A x hx (g b))
      have : g = s.piecewise (fun _y ↦ g x) g' := by
        ext b
        by_cases hb : b ∈ s
        · simp [hb, B]
        · simp [hb, hg' hb]
      rw [this]
      exact Measurable.piecewise hs measurable_const g'_meas
  · have : Nonempty ι := ⟨i⟩
    let f' : ι → δ → α := fun i ↦ s.piecewise (f i) g'
    suffices ∀ b, IsLUB { a | ∃ i, f' i b = a } (g b) from
      Measurable.isLUB (fun i ↦ Measurable.piecewise hs (hf i) g'_meas) this
    intro b
    by_cases hb : b ∈ s
    · have A : ∀ i, f' i b = f i b := fun i ↦ by simp [f', hb]
      simpa [A] using hg b hb
    · have A : ∀ i, f' i b = g' b := fun i ↦ by simp [f', hb]
      simp [A, hg' hb, isLUB_singleton]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Order/Variantcff664bc50930c81700403e99cbd298c1014a61f0f44100b1e0f57af6431b15a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Order/Variantcff664bc50930c81700403e99cbd298c1014a61f0f44100b1e0f57af6431b15a.lean#L713).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `373362a90f7b59d21ae884ceadb84fc51fcae514` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
