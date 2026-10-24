# sublist_iff_exists_orderEmbedding_getElem?_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e505a1df92012d1a458ec76c3962090f12605757",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 137,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/09/09840a3aaff8506384c75f796224a65bed267266986f8241084924b08297d9ff.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4c1d6ee2-e502-72b4-207a-9e92e972c3f3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:fae0dba9-ba9f-87b0-eb0e-a23087abcdbe",
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
  "slug": "sublist-iff-exists-orderembedding-getelem-eq--e4160ce08fc66754e9e4a307",
  "source": {
    "blob": "e505a1df92012d1a458ec76c3962090f12605757",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 164,
    "line": 137,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NodupEquivFin/Variant09840a3aaff8506384c75f796224a65bed267266986f8241084924b08297d9ff.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e4160ce08fc66754e9e4a307dde2a384631222562a72eec52278741d43b102e8",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NodupEquivFin/Variant09840a3aaff8506384c75f796224a65bed267266986f8241084924b08297d9ff.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fae0dba9-ba9f-87b0-eb0e-a23087abcdbe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 137–164.

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

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NodupEquivFin/Variant09840a3aaff8506384c75f796224a65bed267266986f8241084924b08297d9ff.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NodupEquivFin/Variant09840a3aaff8506384c75f796224a65bed267266986f8241084924b08297d9ff.lean#L137).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e505a1df92012d1a458ec76c3962090f12605757` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
