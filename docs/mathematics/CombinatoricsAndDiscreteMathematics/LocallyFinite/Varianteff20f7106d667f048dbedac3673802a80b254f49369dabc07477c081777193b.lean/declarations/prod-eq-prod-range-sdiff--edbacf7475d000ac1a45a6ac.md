# prod_eq_prod_range_sdiff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:28547d30-e679-0ba8-62e1-e6a20afef621",
  "kind": "lemma",
  "lexical_name": "prod_eq_prod_range_sdiff",
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
  "slug": "prod-eq-prod-range-sdiff--edbacf7475d000ac1a45a6ac",
  "source": {
    "blob": "24aa4c31f6ed0051908e3df3f942053002602177",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 179,
    "line": 168,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/LocallyFinite/Varianteff20f7106d667f048dbedac3673802a80b254f49369dabc07477c081777193b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:edbacf7475d000ac1a45a6ac0db5e0a19782e2260bc28b40f301dfb35d061bbf",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/LocallyFinite/Varianteff20f7106d667f048dbedac3673802a80b254f49369dabc07477c081777193b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:28547d30-e679-0ba8-62e1-e6a20afef621`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 168–179.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma prod_eq_prod_range_sdiff
    {α β : Type*} [DecidableEq α] [CommMonoid β] (s : ℕ → Finset α) (hs : Monotone s)
    (g : α → β) (n : ℕ) :
    ∏ i ∈ s n, g i = (∏ i ∈ s 0, g i) * ∏ i ∈ range n, ∏ j ∈ s (i + 1) \ s i, g j := by
  conv_lhs => rw [← hs.partialSups_eq, ← disjiUnion_Iic_disjointed, Iic_eq_Icc,
    prod_disjiUnion, Nat.bot_eq_zero, ← Nat.range_succ_eq_Icc_zero, prod_range_succ', mul_comm]
  congrm (∏ x ∈ ?_, g x) * ∏ k ∈ range n, ∏ x ∈ s (k + 1) \ ?_, g x
  · simp
  · change (Iic k).sup (s ∘ id) = s k
    rw [← apply_sup_eq_sup_comp_of_nonempty hs nonempty_Iic, sup_Iic]

end Finset
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/LocallyFinite/Varianteff20f7106d667f048dbedac3673802a80b254f49369dabc07477c081777193b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/LocallyFinite/Varianteff20f7106d667f048dbedac3673802a80b254f49369dabc07477c081777193b.lean#L168).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `24aa4c31f6ed0051908e3df3f942053002602177` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
