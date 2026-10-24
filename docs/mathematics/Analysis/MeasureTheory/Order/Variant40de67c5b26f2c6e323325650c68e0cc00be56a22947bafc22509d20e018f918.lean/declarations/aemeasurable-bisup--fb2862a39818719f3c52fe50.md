# AEMeasurable.biSup

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:337a7337-75a2-82b1-9c9a-1a57f9318720",
  "kind": "theorem",
  "lexical_name": "AEMeasurable.biSup",
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
  "slug": "aemeasurable-bisup--fb2862a39818719f3c52fe50",
  "source": {
    "blob": "564a2158f1d13b2b598a3dd79fc37c180fa8130c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 995,
    "line": 983,
    "path": "GRWTSK/Analysis/MeasureTheory/Order/Variant40de67c5b26f2c6e323325650c68e0cc00be56a22947bafc22509d20e018f918.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fb2862a39818719f3c52fe50bd55136638546d836eecfb6ba2072d0d18f1e63b",
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

Occurrence: `result:337a7337-75a2-82b1-9c9a-1a57f9318720`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 983–995.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem AEMeasurable.biSup {ι} {μ : Measure δ} (s : Set ι) {f : ι → δ → α} (hs : s.Countable)
    (hf : ∀ i ∈ s, AEMeasurable (f i) μ) : AEMeasurable (fun b => ⨆ i ∈ s, f i b) μ := by
  classical
  let g : ι → δ → α := fun i ↦ if hi : i ∈ s then (hf i hi).mk (f i) else fun _b ↦ sSup ∅
  have : ∀ i ∈ s, Measurable (g i) := by
    intro i hi
    simpa [g, hi] using! (hf i hi).measurable_mk
  refine ⟨fun b ↦ ⨆ (i) (_ : i ∈ s), g i b, .biSup s hs this, ?_⟩
  have : ∀ i ∈ s, ∀ᵐ b ∂μ, f i b = g i b :=
    fun i hi ↦ by simpa [g, hi] using! (hf i hi).ae_eq_mk
  filter_upwards [(ae_ball_iff hs).2 this] with b hb
  exact iSup_congr fun i => iSup_congr (hb i)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Order/Variant40de67c5b26f2c6e323325650c68e0cc00be56a22947bafc22509d20e018f918.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Order/Variant40de67c5b26f2c6e323325650c68e0cc00be56a22947bafc22509d20e018f918.lean#L983).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `564a2158f1d13b2b598a3dd79fc37c180fa8130c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
