# tendstoUniformlyOn_tsum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:630e4bdc-43af-8b7a-8f1d-bb8dc56a2338",
  "kind": "theorem",
  "lexical_name": "tendstoUniformlyOn_tsum",
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
  "slug": "tendstouniformlyon-tsum--2dc8932a0844f6c6993aa97c",
  "source": {
    "blob": "04ba7182ace697c537207e1160d0828bcf2ce096",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 62,
    "line": 47,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Series/Variantb8b63da51523f48a0c6ec907049b6d68d2783fb998c15da6684bc8d8f4fdbe38.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2dc8932a0844f6c6993aa97c5f036333103d0e9db068082372b6b0e123d27d2c",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Series/Variantb8b63da51523f48a0c6ec907049b6d68d2783fb998c15da6684bc8d8f4fdbe38.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:630e4bdc-43af-8b7a-8f1d-bb8dc56a2338`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 47–62.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendstoUniformlyOn_tsum {f : α → β → F} (hu : Summable u) {s : Set β}
    (hfu : ∀ n x, x ∈ s → ‖f n x‖ ≤ u n) :
    TendstoUniformlyOn (fun t : Finset α => fun x => ∑ n in t, f n x) (fun x => ∑' n, f n x) atTop
      s := by
  refine' tendstoUniformlyOn_iff.2 fun ε εpos => _
  filter_upwards [(tendsto_order.1 (tendsto_tsum_compl_atTop_zero u)).2 _ εpos]with t ht x hx
  have A : Summable fun n => ‖f n x‖ :=
    summable_of_nonneg_of_le (fun n => norm_nonneg _) (fun n => hfu n x hx) hu
  rw [dist_eq_norm, ← sum_add_tsum_subtype_compl (summable_of_summable_norm A) t, add_sub_cancel']
  apply lt_of_le_of_lt _ ht
  apply (norm_tsum_le_tsum_norm (A.subtype _)).trans
  exact tsum_le_tsum (fun n => hfu _ _ hx) (A.subtype _) (hu.subtype _)
#align tendsto_uniformly_on_tsum tendstoUniformlyOn_tsum

/-- An infinite sum of functions with summable sup norm is the uniform limit of its partial sums.
Version relative to a set, with index set `ℕ`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Series/Variantb8b63da51523f48a0c6ec907049b6d68d2783fb998c15da6684bc8d8f4fdbe38.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Series/Variantb8b63da51523f48a0c6ec907049b6d68d2783fb998c15da6684bc8d8f4fdbe38.lean#L47).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `04ba7182ace697c537207e1160d0828bcf2ce096` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
