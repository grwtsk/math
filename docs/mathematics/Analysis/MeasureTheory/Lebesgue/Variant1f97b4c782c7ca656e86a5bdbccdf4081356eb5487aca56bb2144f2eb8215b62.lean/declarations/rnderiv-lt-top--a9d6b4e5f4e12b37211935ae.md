# rnDeriv_lt_top

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "883724233c3fd89322f8347adcc92d1cab190c27",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 384,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1f/1f97b4c782c7ca656e86a5bdbccdf4081356eb5487aca56bb2144f2eb8215b62.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0798ee44-2179-9421-b647-c51148eea868",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5842ce2d-c12d-78f1-da0a-3f7c06e75371",
  "kind": "theorem",
  "lexical_name": "rnDeriv_lt_top",
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
  "slug": "rnderiv-lt-top--a9d6b4e5f4e12b37211935ae",
  "source": {
    "blob": "883724233c3fd89322f8347adcc92d1cab190c27",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 392,
    "line": 384,
    "path": "GRWTSK/Analysis/MeasureTheory/Lebesgue/Variant1f97b4c782c7ca656e86a5bdbccdf4081356eb5487aca56bb2144f2eb8215b62.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a9d6b4e5f4e12b37211935aedf7be74bbdaa55fdef2c11240024d7dd79137e66",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Lebesgue/Variant1f97b4c782c7ca656e86a5bdbccdf4081356eb5487aca56bb2144f2eb8215b62.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5842ce2d-c12d-78f1-da0a-3f7c06e75371`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 384–392.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rnDeriv_lt_top (μ ν : Measure α) [SigmaFinite μ] : ∀ᵐ x ∂ν, μ.rnDeriv ν x < ∞ := by
  suffices ∀ n, ∀ᵐ x ∂ν, x ∈ spanningSets μ n → μ.rnDeriv ν x < ∞ by
    filter_upwards [ae_all_iff.2 this] with _ hx using hx _ (mem_spanningSetsIndex _ _)
  intro n
  rw [← ae_restrict_iff' (measurableSet_spanningSets _ _)]
  apply ae_lt_top (measurable_rnDeriv _ _)
  refine (lintegral_rnDeriv_lt_top_of_measure_ne_top _ ?_).ne
  exact (measure_spanningSets_lt_top _ _).ne

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Lebesgue/Variant1f97b4c782c7ca656e86a5bdbccdf4081356eb5487aca56bb2144f2eb8215b62.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Lebesgue/Variant1f97b4c782c7ca656e86a5bdbccdf4081356eb5487aca56bb2144f2eb8215b62.lean#L384).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `883724233c3fd89322f8347adcc92d1cab190c27` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
