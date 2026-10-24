# Measurable.iSup

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6ff86dfe-c682-cf2a-1168-252f07e55c5e",
  "kind": "theorem",
  "lexical_name": "Measurable.iSup",
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
  "slug": "measurable-isup--2737655d4dde84a216d66f33",
  "source": {
    "blob": "92836497e9d56f47a80a1027b3d598575c1c5761",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 787,
    "line": 761,
    "path": "GRWTSK/Analysis/MeasureTheory/Order/Variant49d2edd2474e12e4707a4fe9054f8427a5e7a8576ad6eda5fd2eb1f4295576d3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2737655d4dde84a216d66f3350315d775a9b212f1447d766bceca77e447bd9d8",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Order/Variant49d2edd2474e12e4707a4fe9054f8427a5e7a8576ad6eda5fd2eb1f4295576d3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6ff86dfe-c682-cf2a-1168-252f07e55c5e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 761–787.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem Measurable.iSup {ι} [Countable ι] {f : ι → δ → α} (hf : ∀ i, Measurable (f i)) :
    Measurable (fun b ↦ ⨆ i, f i b) := by
  rcases isEmpty_or_nonempty ι with hι|hι
  · simp [iSup_of_empty']
  have A : MeasurableSet {b | BddAbove (range (fun i ↦ f i b))} :=
    measurableSet_bddAbove_range hf
  have : Measurable (fun (_b : δ) ↦ sSup (∅ : Set α)) := measurable_const
  apply Measurable.isLUB_of_mem hf A _ _ this
  · rintro b ⟨c, hc⟩
    apply isLUB_ciSup
    refine ⟨c, ?_⟩
    rintro d ⟨i, rfl⟩
    exact hc (mem_range_self i)
  · intro b hb
    apply csSup_of_not_bddAbove
    exact hb

-- TODO: Why does this error?
-- /-- Compositional version of `Measurable.iSup` for use by `fun_prop`. -/
-- @[fun_prop]
-- protected lemma Measurable.iSup'' {_ : MeasurableSpace γ} {ι : Sort*} [Countable ι]
--     {f : ι → γ → δ → α} {h : γ → δ} (hf : ∀ i, Measurable ↿(f i)) (hh : Measurable h) :
--     Measurable fun a ↦ (⨆ i, f i a) (h a) := by
--   simp_rw [iSup_apply]
--   exact .iSup fun i ↦ by fun_prop

@[measurability, fun_prop]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Order/Variant49d2edd2474e12e4707a4fe9054f8427a5e7a8576ad6eda5fd2eb1f4295576d3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Order/Variant49d2edd2474e12e4707a4fe9054f8427a5e7a8576ad6eda5fd2eb1f4295576d3.lean#L761).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `92836497e9d56f47a80a1027b3d598575c1c5761` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
