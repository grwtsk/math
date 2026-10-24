# summable_of_summable_hasFDerivAt_of_isPreconnected

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8a38673f-dcc7-bea2-3e9c-8c1212a0397e",
  "kind": "theorem",
  "lexical_name": "summable_of_summable_hasFDerivAt_of_isPreconnected",
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
  "slug": "summable-of-summable-hasfderivat-of-ispreconnected--cd566fc58a391260959e5bb6",
  "source": {
    "blob": "04ba7182ace697c537207e1160d0828bcf2ce096",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 130,
    "line": 114,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Series/Variantb8b63da51523f48a0c6ec907049b6d68d2783fb998c15da6684bc8d8f4fdbe38.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cd566fc58a391260959e5bb63b4c93e279242684eda087771d2b189f27cc162d",
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

Occurrence: `result:8a38673f-dcc7-bea2-3e9c-8c1212a0397e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 114–130.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem summable_of_summable_hasFDerivAt_of_isPreconnected (hu : Summable u) (hs : IsOpen s)
    (h's : IsPreconnected s) (hf : ∀ n x, x ∈ s → HasFDerivAt (f n) (f' n x) x)
    (hf' : ∀ n x, x ∈ s → ‖f' n x‖ ≤ u n) (hx₀ : x₀ ∈ s) (hf0 : Summable (f · x₀)) {x : E}
    (hx : x ∈ s) : Summable fun n => f n x := by
  rw [summable_iff_cauchySeq_finset] at hf0 ⊢
  have A : UniformCauchySeqOn (fun t : Finset α => fun x => ∑ i in t, f' i x) atTop s :=
    (tendstoUniformlyOn_tsum hu hf').uniformCauchySeqOn
  -- porting note: Lean 4 failed to find `f` by unification
  refine cauchy_map_of_uniformCauchySeqOn_fderiv (f := fun t x ↦ ∑ i in t, f i x)
    hs h's A (fun t y hy => ?_) hx₀ hx hf0
  exact HasFDerivAt.sum fun i _ => hf i y hy
#align summable_of_summable_has_fderiv_at_of_is_preconnected summable_of_summable_hasFDerivAt_of_isPreconnected

/-- Consider a series of functions `∑' n, f n x` on a preconnected open set. If the series converges
at a point, and all functions in the series are differentiable with a summable bound on the
derivatives, then the series is differentiable on the set and its derivative is the sum of the
derivatives. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Series/Variantb8b63da51523f48a0c6ec907049b6d68d2783fb998c15da6684bc8d8f4fdbe38.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Series/Variantb8b63da51523f48a0c6ec907049b6d68d2783fb998c15da6684bc8d8f4fdbe38.lean#L114).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `04ba7182ace697c537207e1160d0828bcf2ce096` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
