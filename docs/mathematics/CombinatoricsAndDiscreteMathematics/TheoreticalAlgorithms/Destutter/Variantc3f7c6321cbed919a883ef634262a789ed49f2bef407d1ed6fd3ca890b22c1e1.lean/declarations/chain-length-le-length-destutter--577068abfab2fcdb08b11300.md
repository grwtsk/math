# Chain'.length_le_length_destutter

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f021d2425e7a018f6a53c92e5c2d0e5a2fe0b79a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 239,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c3/c3f7c6321cbed919a883ef634262a789ed49f2bef407d1ed6fd3ca890b22c1e1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:29e1256a-ecbc-c624-19bc-2578f1b9bff3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1cbd74a6-b890-ffdf-0a6f-acbfbdfff8d1",
  "kind": "lemma",
  "lexical_name": "Chain'.length_le_length_destutter",
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
  "slug": "chain-length-le-length-destutter--577068abfab2fcdb08b11300",
  "source": {
    "blob": "f021d2425e7a018f6a53c92e5c2d0e5a2fe0b79a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 261,
    "line": 239,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Destutter/Variantc3f7c6321cbed919a883ef634262a789ed49f2bef407d1ed6fd3ca890b22c1e1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:577068abfab2fcdb08b113003c7c1eb2692223de7df1d349819e289654d67d2f",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Destutter/Variantc3f7c6321cbed919a883ef634262a789ed49f2bef407d1ed6fd3ca890b22c1e1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1cbd74a6-b890-ffdf-0a6f-acbfbdfff8d1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 239–261.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Chain'.length_le_length_destutter [IsEquiv α Rᶜ] :
    ∀ {l₁ l₂ : List α}, l₁ <+ l₂ → l₁.Chain' R → l₁.length ≤ (l₂.destutter R).length
  -- `l₁ := []`, `l₂ := []`
  | [], [], _, _ => by simp
  -- `l₁ := l₁`, `l₂ := a :: l₂`
  | l₁, _, .cons (l₂ := l₂) a hl, hl₁ =>
    (hl₁.length_le_length_destutter hl).trans length_destutter_le_length_destutter_cons
  -- `l₁ := [a]`, `l₂ := a :: l₂`
  | _, _, .cons₂ (l₁ := []) (l₂ := l₁) a hl, hl₁ => by simp [Nat.one_le_iff_ne_zero]
  -- `l₁ := a :: l₁`, `l₂ := a :: b :: l₂`
  | _, _, .cons₂ a <| .cons (l₁ := l₁) (l₂ := l₂) b hl, hl₁ => by
    by_cases hab : R a b
    · simpa [destutter_cons_cons, hab] using hl₁.tail.length_le_length_destutter (hl.cons _)
    · simpa [destutter_cons_cons, hab] using hl₁.length_le_length_destutter (hl.cons₂ _)
  -- `l₁ := a :: b :: l₁`, `l₂ := a :: b :: l₂`
  | _, _, .cons₂ a <| .cons₂ (l₁ := l₁) (l₂ := l₂) b hl, hl₁ => by
    simpa [destutter_cons_cons, rel_of_chain_cons hl₁]
      using hl₁.tail.length_le_length_destutter (hl.cons₂ _)

/-- `destutter` of `≠` gives a list of maximal length over any chain.

In other words, `l.destutter (· ≠ ·)` is a `≠`-chain sublist of `l`, and is at least as long as any
other `≠`-chain sublist. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Destutter/Variantc3f7c6321cbed919a883ef634262a789ed49f2bef407d1ed6fd3ca890b22c1e1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Destutter/Variantc3f7c6321cbed919a883ef634262a789ed49f2bef407d1ed6fd3ca890b22c1e1.lean#L239).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f021d2425e7a018f6a53c92e5c2d0e5a2fe0b79a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
