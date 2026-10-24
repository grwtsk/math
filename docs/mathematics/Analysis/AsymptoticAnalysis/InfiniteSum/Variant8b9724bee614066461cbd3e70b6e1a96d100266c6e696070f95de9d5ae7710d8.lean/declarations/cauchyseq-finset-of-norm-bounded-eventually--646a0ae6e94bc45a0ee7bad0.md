# cauchySeq_finset_of_norm_bounded_eventually

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:376f67a6-c3c4-9fae-efcf-053d83b6bfaf",
  "kind": "theorem",
  "lexical_name": "cauchySeq_finset_of_norm_bounded_eventually",
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
  "slug": "cauchyseq-finset-of-norm-bounded-eventually--646a0ae6e94bc45a0ee7bad0",
  "source": {
    "blob": "08eb33646f78b84708a015c37990d673134be3fd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 77,
    "line": 62,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/InfiniteSum/Variant8b9724bee614066461cbd3e70b6e1a96d100266c6e696070f95de9d5ae7710d8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:646a0ae6e94bc45a0ee7bad0f04d08fcbd512e64e87c9b7837b0c58b2465391d",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/InfiniteSum/Variant8b9724bee614066461cbd3e70b6e1a96d100266c6e696070f95de9d5ae7710d8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:376f67a6-c3c4-9fae-efcf-053d83b6bfaf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 62–77.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cauchySeq_finset_of_norm_bounded_eventually {f : ι → E} {g : ι → ℝ} (hg : Summable g)
    (h : ∀ᶠ i in cofinite, ‖f i‖ ≤ g i) : CauchySeq fun s => ∑ i in s, f i := by
  refine' cauchySeq_finset_iff_vanishing_norm.2 fun ε hε => _
  rcases summable_iff_vanishing_norm.1 hg ε hε with ⟨s, hs⟩
  refine' ⟨s ∪ h.toFinset, fun t ht => _⟩
  have : ∀ i ∈ t, ‖f i‖ ≤ g i := by
    intro i hi
    simp only [disjoint_left, mem_union, not_or, h.mem_toFinset, Set.mem_compl_iff,
      Classical.not_not] at ht
    exact (ht hi).2
  calc
    ‖∑ i in t, f i‖ ≤ ∑ i in t, g i := norm_sum_le_of_le _ this
    _ ≤ ‖∑ i in t, g i‖ := (le_abs_self _)
    _ < ε := hs _ (ht.mono_right le_sup_left)
#align cauchy_seq_finset_of_norm_bounded_eventually cauchySeq_finset_of_norm_bounded_eventually

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/InfiniteSum/Variant8b9724bee614066461cbd3e70b6e1a96d100266c6e696070f95de9d5ae7710d8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/InfiniteSum/Variant8b9724bee614066461cbd3e70b6e1a96d100266c6e696070f95de9d5ae7710d8.lean#L62).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `08eb33646f78b84708a015c37990d673134be3fd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
