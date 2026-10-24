# exists_isChain_of_le_chainHeight

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a3730fbc6acb252757566089e22619493314f492",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 55,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/99/9916f85bded405eef471dbc579b485dd24033ac2f4f07a65b6677d69aef4b731.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:717fedbc-f0d3-5516-65ae-5f6eabae02eb",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1d2fb140-0d1c-4f8f-7593-a15dc94603d1",
  "kind": "theorem",
  "lexical_name": "exists_isChain_of_le_chainHeight",
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
  "slug": "exists-ischain-of-le-chainheight--51703cc4e9a181749f473fa3",
  "source": {
    "blob": "a3730fbc6acb252757566089e22619493314f492",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 65,
    "line": 55,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Height/Variant9916f85bded405eef471dbc579b485dd24033ac2f4f07a65b6677d69aef4b731.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:51703cc4e9a181749f473fa31e98eceba5ced5ccf841667134a0add1dda89380",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Height/Variant9916f85bded405eef471dbc579b485dd24033ac2f4f07a65b6677d69aef4b731.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1d2fb140-0d1c-4f8f-7593-a15dc94603d1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 55–65.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_isChain_of_le_chainHeight {r} {s : Set α} (n : ℕ) (h : n ≤ s.chainHeight r) :
    ∃ t ⊆ s, t.encard = n ∧ IsChain r t := by
  by_cases h' : n = 0
  · exact ⟨∅, by simp [h']⟩
  · obtain ⟨t, ht₁, ht₂, ht₃⟩ : ∃ t ⊆ s, IsChain r t ∧ n ≤ t.encard := by
      contrapose! h
      refine iSup_lt_iff.mpr ⟨n - 1, ?_, fun m ↦ ENat.le_sub_one_of_lt <| h m.1 m.2.1 m.2.2⟩
      exact_mod_cast Nat.sub_one_lt h'
    obtain ⟨u, hu₁, hu₂⟩ := exists_subset_encard_eq ht₃
    exact ⟨u, hu₁.trans ht₁, hu₂, ht₂.mono hu₁⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Height/Variant9916f85bded405eef471dbc579b485dd24033ac2f4f07a65b6677d69aef4b731.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Height/Variant9916f85bded405eef471dbc579b485dd24033ac2f4f07a65b6677d69aef4b731.lean#L55).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a3730fbc6acb252757566089e22619493314f492` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
