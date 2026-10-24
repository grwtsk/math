# sublist_iff_exists_orderEmbedding_getElem?_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8c9e2d7f-8945-000d-4076-035a52f80c32",
  "kind": "theorem",
  "lexical_name": "sublist_iff_exists_orderEmbedding_getElem?_eq",
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
  "slug": "sublist-iff-exists-orderembedding-getelem-eq--6c254b12ffd38ddeb9126cd3",
  "source": {
    "blob": "33cf34488191ff9624654d7407ea9b5eff046b93",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 172,
    "line": 145,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NodupEquivFin/Variant428eda16c27b26df262f649ac6e58929f40247817ed58e42dfd4644b29bd07ce.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6c254b12ffd38ddeb9126cd3f9a19ff7d45bbe07e32042157051b6f20e726bc8",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NodupEquivFin/Variant428eda16c27b26df262f649ac6e58929f40247817ed58e42dfd4644b29bd07ce.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8c9e2d7f-8945-000d-4076-035a52f80c32`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 145–172.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sublist_iff_exists_orderEmbedding_getElem?_eq {l l' : List α} :
    l <+ l' ↔ ∃ f : ℕ ↪o ℕ, ∀ ix : ℕ, l[ix]? = l'[f ix]? := by
  constructor
  · intro H
    induction H with
    | slnil => simp
    | cons _ _ IH =>
      obtain ⟨f, hf⟩ := IH
      refine ⟨f.trans (OrderEmbedding.ofStrictMono (· + 1) fun _ => by simp), ?_⟩
      simpa using hf
    | cons₂ _ _ IH =>
      obtain ⟨f, hf⟩ := IH
      refine
        ⟨OrderEmbedding.ofMapLEIff (fun ix : ℕ => if ix = 0 then 0 else (f ix.pred).succ) ?_, ?_⟩
      · rintro ⟨_ | a⟩ ⟨_ | b⟩ <;> simp [Nat.succ_le_succ_iff]
      · rintro ⟨_ | i⟩
        · simp
        · simpa using hf _
  · rintro ⟨f, hf⟩
    exact sublist_of_orderEmbedding_getElem?_eq f hf

@[deprecated (since := "2025-02-15")] alias sublist_iff_exists_orderEmbedding_get?_eq :=
sublist_iff_exists_orderEmbedding_getElem?_eq

/-- A `l : List α` is `Sublist l l'` for `l' : List α` iff
there is `f`, an order-preserving embedding of `Fin l.length` into `Fin l'.length` such that
any element of `l` found at index `ix` can be found at index `f ix` in `l'`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NodupEquivFin/Variant428eda16c27b26df262f649ac6e58929f40247817ed58e42dfd4644b29bd07ce.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NodupEquivFin/Variant428eda16c27b26df262f649ac6e58929f40247817ed58e42dfd4644b29bd07ce.lean#L145).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `33cf34488191ff9624654d7407ea9b5eff046b93` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
