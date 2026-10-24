# card_nsmul_le_card_nsmul'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "da048a809660cc2e218204f2b9bfd9006dc49420",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 107,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2d/2d5b84a9783e226eaf99e8de4883d19c639d0fc0de381eeb112e0a3253d58071.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1eb8070a-fd15-a687-2f23-3a799cbc4cf3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7b7f5721-31c8-ceeb-5420-bb5ec776e2da",
  "kind": "theorem",
  "lexical_name": "card_nsmul_le_card_nsmul'",
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
  "slug": "card-nsmul-le-card-nsmul--f12dfe8f8dbc86940afebcbd",
  "source": {
    "blob": "da048a809660cc2e218204f2b9bfd9006dc49420",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 121,
    "line": 107,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/DoubleCounting/Variant2d5b84a9783e226eaf99e8de4883d19c639d0fc0de381eeb112e0a3253d58071.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f12dfe8f8dbc86940afebcbd42f8603ea977772ca0adb1c970e63cb6419b9b70",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/DoubleCounting/Variant2d5b84a9783e226eaf99e8de4883d19c639d0fc0de381eeb112e0a3253d58071.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7b7f5721-31c8-ceeb-5420-bb5ec776e2da`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 107–121.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem card_nsmul_le_card_nsmul' [∀ a b, Decidable (r a b)]
    (hn : ∀ b ∈ t, n ≤ #(s.bipartiteBelow r b))
    (hm : ∀ a ∈ s, #(t.bipartiteAbove r a) ≤ m) : #t • n ≤ #s • m :=
  card_nsmul_le_card_nsmul (swap r) hn hm

end OrderedSemiring

section StrictOrderedSemiring
variable [Semiring R] [PartialOrder R] [IsStrictOrderedRing R] (r : α → β → Prop)
  {s : Finset α} {t : Finset β} (a b) {m n : R}

/-- **Double counting** argument.

Considering `r` as a bipartite graph, the LHS is a strict lower bound on the number of edges while
the RHS is an upper bound. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/DoubleCounting/Variant2d5b84a9783e226eaf99e8de4883d19c639d0fc0de381eeb112e0a3253d58071.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/DoubleCounting/Variant2d5b84a9783e226eaf99e8de4883d19c639d0fc0de381eeb112e0a3253d58071.lean#L107).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `da048a809660cc2e218204f2b9bfd9006dc49420` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
