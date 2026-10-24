# mem_sumIntervals

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:51960e8d-292d-ad98-ecb2-d5e27ab3a61c",
  "kind": "theorem",
  "lexical_name": "mem_sumIntervals",
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
  "slug": "mem-sumintervals--6a7025f74695c2ca0bde2ef6",
  "source": {
    "blob": "6fa8ab3d81c90b359f6a21a834b5c2b55a29e904",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 433,
    "line": 401,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Transformer/Variantef0b630d6e7b8353b809836621e8e5218f883568b85c4a7d8c47f72edac4ac38.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6a7025f74695c2ca0bde2ef65e875f64c712b3c5b0e5422983f4be587cf7e898",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Transformer/Variantef0b630d6e7b8353b809836621e8e5218f883568b85c4a7d8c47f72edac4ac38.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:51960e8d-292d-ad98-ecb2-d5e27ab3a61c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 401–433.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_sumIntervals {xs : List ℝ} {Is : IntervalVector}
    (hlen : xs.length = Is.length)
    (hmem : ∀ i, i < xs.length → xs[i]! ∈ Is[i]!) :
    xs.sum ∈ LayerNormParams.sumIntervals Is := by
  cases xs with
  | nil =>
    cases Is with
    | nil =>
      simp only [List.sum_nil, LayerNormParams.sumIntervals]
      have h := IntervalDyadic.mem_singleton (Core.Dyadic.ofInt 0)
      simp only [Core.Dyadic.toRat_ofInt, Int.cast_zero, Rat.cast_zero] at h
      exact h
    | cons => simp at hlen
  | cons x xs' =>
    cases Is with
    | nil => simp at hlen
    | cons I Is' =>
      simp only [List.sum_cons, LayerNormParams.sumIntervals]
      have hx_mem : x ∈ I := by
        have := hmem 0 (by simp)
        simp only [List.getElem!_cons_zero] at this
        exact this
      have hlen' : xs'.length = Is'.length := by simp at hlen; exact hlen
      have hmem' : ∀ i, i < xs'.length → xs'[i]! ∈ Is'[i]! := by
        intro i hi
        have := hmem (i + 1) (by simp; omega)
        simp only [List.getElem!_cons_succ] at this
        exact this
      exact mem_foldl_add hx_mem hlen' hmem'

/-- Helper: map preserves membership for interval operations.
    Proof: (xs.map f)[i] = f(xs[i]) and (Is.map g)[i] = g(Is[i]),
    so f(xs[i]) ∈ g(Is[i]) follows from hf applied to hmem. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Transformer/Variantef0b630d6e7b8353b809836621e8e5218f883568b85c4a7d8c47f72edac4ac38.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Transformer/Variantef0b630d6e7b8353b809836621e8e5218f883568b85c4a7d8c47f72edac4ac38.lean#L401).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6fa8ab3d81c90b359f6a21a834b5c2b55a29e904` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
