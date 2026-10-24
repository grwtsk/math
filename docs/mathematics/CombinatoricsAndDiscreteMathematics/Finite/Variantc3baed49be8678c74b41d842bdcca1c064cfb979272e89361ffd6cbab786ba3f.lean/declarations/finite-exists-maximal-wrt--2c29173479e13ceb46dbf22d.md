# Finite.exists_maximal_wrt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e03796f1-61de-367a-30bc-359a2f52a84a",
  "kind": "theorem",
  "lexical_name": "Finite.exists_maximal_wrt",
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
  "slug": "finite-exists-maximal-wrt--2c29173479e13ceb46dbf22d",
  "source": {
    "blob": "91e9e74de56a472ce436c89dd0191da474ff2c9d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1603,
    "line": 1582,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Finite/Variantc3baed49be8678c74b41d842bdcca1c064cfb979272e89361ffd6cbab786ba3f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2c29173479e13ceb46dbf22d9b343574ab336450cead510422dbab80ecbde378",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Finite/Variantc3baed49be8678c74b41d842bdcca1c064cfb979272e89361ffd6cbab786ba3f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e03796f1-61de-367a-30bc-359a2f52a84a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1582–1603.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Finite.exists_maximal_wrt [PartialOrder β] (f : α → β) (s : Set α) (h : s.Finite)
    (hs : s.Nonempty) : ∃ a ∈ s, ∀ a' ∈ s, f a ≤ f a' → f a = f a' := by
  induction s, h using Set.Finite.dinduction_on with
  | H0 => exact absurd hs not_nonempty_empty
  | @H1 a s his _ ih =>
    cases' s.eq_empty_or_nonempty with h h
    · use a
      simp [h]
    rcases ih h with ⟨b, hb, ih⟩
    by_cases h : f b ≤ f a
    · refine' ⟨a, Set.mem_insert _ _, fun c hc hac => le_antisymm hac _⟩
      rcases Set.mem_insert_iff.1 hc with (rfl | hcs)
      · rfl
      · rwa [← ih c hcs (le_trans h hac)]
    · refine' ⟨b, Set.mem_insert_of_mem _ hb, fun c hc hbc => _⟩
      rcases Set.mem_insert_iff.1 hc with (rfl | hcs)
      · exact (h hbc).elim
      · exact ih c hcs hbc
#align set.finite.exists_maximal_wrt Set.Finite.exists_maximal_wrt

/-- A version of `Finite.exists_maximal_wrt` with the (weaker) hypothesis that the image of `s`
  is finite rather than `s` itself. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Finite/Variantc3baed49be8678c74b41d842bdcca1c064cfb979272e89361ffd6cbab786ba3f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Finite/Variantc3baed49be8678c74b41d842bdcca1c064cfb979272e89361ffd6cbab786ba3f.lean#L1582).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `91e9e74de56a472ce436c89dd0191da474ff2c9d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
