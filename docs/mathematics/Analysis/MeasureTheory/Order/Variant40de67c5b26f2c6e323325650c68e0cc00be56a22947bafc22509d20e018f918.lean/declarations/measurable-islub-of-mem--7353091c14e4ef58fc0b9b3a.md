# Measurable.isLUB_of_mem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3a7942c2-bbfb-46ee-4510-1ea510b131e8",
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
  "slug": "measurable-islub-of-mem--7353091c14e4ef58fc0b9b3a",
  "source": {
    "blob": "564a2158f1d13b2b598a3dd79fc37c180fa8130c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 751,
    "line": 721,
    "path": "GRWTSK/Analysis/MeasureTheory/Order/Variant40de67c5b26f2c6e323325650c68e0cc00be56a22947bafc22509d20e018f918.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7353091c14e4ef58fc0b9b3ab5aaceccf277fccd5714ddf41658ead0648edef3",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Order/Variant40de67c5b26f2c6e323325650c68e0cc00be56a22947bafc22509d20e018f918.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3a7942c2-bbfb-46ee-4510-1ea510b131e8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 721–751.

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

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Order/Variant40de67c5b26f2c6e323325650c68e0cc00be56a22947bafc22509d20e018f918.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Order/Variant40de67c5b26f2c6e323325650c68e0cc00be56a22947bafc22509d20e018f918.lean#L721).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `564a2158f1d13b2b598a3dd79fc37c180fa8130c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
