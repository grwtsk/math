# MemLp.mono_exponent_of_measure_support_ne_top

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ca89c56b1e589d63ce7c4f6721177ccf1e147411",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 168,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d8/d83a3fa7bb5dd8ff0549784e22aeaf3809242b7a1691925f0afe97d60bfc0c30.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:86e0518a-cc50-1a4f-d754-6ffbde13a097",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5023df91-3f59-6986-a292-8bc682f62593",
  "kind": "lemma",
  "lexical_name": "MemLp.mono_exponent_of_measure_support_ne_top",
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
  "slug": "memlp-mono-exponent-of-measure-support-ne-top--a0e3fdda2e81c7fa1e6b6ce0",
  "source": {
    "blob": "ca89c56b1e589d63ce7c4f6721177ccf1e147411",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 198,
    "line": 168,
    "path": "GRWTSK/Analysis/MeasureTheory/CompareExp/Variantd83a3fa7bb5dd8ff0549784e22aeaf3809242b7a1691925f0afe97d60bfc0c30.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a0e3fdda2e81c7fa1e6b6ce00cb7d7f65fe3b068778a6e12ce75fc94e133d4f6",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/CompareExp/Variantd83a3fa7bb5dd8ff0549784e22aeaf3809242b7a1691925f0afe97d60bfc0c30.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5023df91-3f59-6986-a292-8bc682f62593`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 168–198.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma MemLp.mono_exponent_of_measure_support_ne_top {p q : ℝ≥0∞} {f : α → ε'} (hfq : MemLp f q μ)
    {s : Set α} (hf : ∀ x, x ∉ s → f x = 0) (hs : μ s ≠ ∞) (hpq : p ≤ q) : MemLp f p μ := by
  have : (toMeasurable μ s).indicator f = f := by
    apply Set.indicator_eq_self.2
    apply Function.support_subset_iff'.2 fun x hx ↦ hf x ?_
    contrapose hx
    exact subset_toMeasurable μ s hx
  rw [← this, memLp_indicator_iff_restrict (measurableSet_toMeasurable μ s)] at hfq ⊢
  have : Fact (μ (toMeasurable μ s) < ∞) := ⟨by simpa [lt_top_iff_ne_top] using hs⟩
  exact hfq.mono_exponent hpq

end SameSpace

section Bilinear

/-!
In this section, we show that `‖fg‖_{L^r} ≤ ‖f‖_{L^p} ‖g‖_{L^q}` when `1/r = 1/p + 1/q`, in a more
general version involving a general bilinear form.

There is one edge case where this formula does not hold with our conventions: if `r = p = 0`, `f`
is measurable but `fg` is not, then `‖fg‖_{L^r} = ∞` while `‖f‖_{L^p} ‖g‖_{L^q} = 0 * ∞ = 0`.
So, we should either assume that `r` is nonzero, or the functions are measurable. Most lemmas
are given in the two versions, with the main one assuming measurability, and the other version
(suffixed with `of_pos`) assume `0 < r`. -/

variable {α E F G : Type*} {m : MeasurableSpace α}
  [NormedAddCommGroup E] [NormedAddCommGroup F] [NormedAddCommGroup G] {μ : Measure α}
  {f : α → E} {g : α → F}

open NNReal

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/CompareExp/Variantd83a3fa7bb5dd8ff0549784e22aeaf3809242b7a1691925f0afe97d60bfc0c30.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/CompareExp/Variantd83a3fa7bb5dd8ff0549784e22aeaf3809242b7a1691925f0afe97d60bfc0c30.lean#L168).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ca89c56b1e589d63ce7c4f6721177ccf1e147411` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
