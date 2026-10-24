# sum_ne_zero_of_injOn_supDegree'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fc2c9868-bd42-9710-1fe7-beb6a21c3b39",
  "kind": "lemma",
  "lexical_name": "sum_ne_zero_of_injOn_supDegree'",
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
  "slug": "sum-ne-zero-of-injon-supdegree--455fd4d0993381fab2d3d6d5",
  "source": {
    "blob": "a635e211d305433b2ea705c510342ead9c29ea0e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 498,
    "line": 484,
    "path": "GRWTSK/Algebra/Degree/Variantbaef09d3937497184515472ba472a7acc68f3645a4de719f8f361ab0990f4f00.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:455fd4d0993381fab2d3d6d52c36a816757151701547290f4492ae71f169af24",
  "verification": {
    "reference": "docs/verification/Algebra/Degree/Variantbaef09d3937497184515472ba472a7acc68f3645a4de719f8f361ab0990f4f00.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fc2c9868-bd42-9710-1fe7-beb6a21c3b39`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 484–498.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma sum_ne_zero_of_injOn_supDegree' (hs : ∃ i ∈ s, f i ≠ 0)
    (hd : (s : Set ι).InjOn (supDegree D ∘ f)) :
    ∑ i ∈ s, f i ≠ 0 := by
  obtain ⟨j, hj, hne⟩ := hs
  obtain ⟨i, hi, he⟩ := exists_mem_eq_sup _ ⟨j, hj⟩ (supDegree D ∘ f)
  by_cases! h : ∀ k ∈ s, k = i
  · refine (sum_eq_single_of_mem j hj (fun k hk hne => ?_)).trans_ne hne
    rw [h k hk, h j hj] at hne; exact hne.irrefl.elim
  obtain ⟨j, hj, hne⟩ := h
  apply ne_zero_of_supDegree_ne_bot (D := D)
  have (k) (hk : k ∈ s) (hne : k ≠ i) : supDegree D (f k) < supDegree D (f i) :=
    ((le_sup hk).trans_eq he).lt_of_ne (hd.ne hk hi hne)
  rw [(supDegree_leadingCoeff_sum_eq hi this).1]
  exact (this j hj hne).ne_bot

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Degree/Variantbaef09d3937497184515472ba472a7acc68f3645a4de719f8f361ab0990f4f00.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Degree/Variantbaef09d3937497184515472ba472a7acc68f3645a4de719f8f361ab0990f4f00.lean#L484).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a635e211d305433b2ea705c510342ead9c29ea0e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
