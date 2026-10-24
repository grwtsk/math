# prod_powerset_insert

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "65186bfe8cd4979a8232a2a5315e060d64249de2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 243,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/00/005d122e1d9a51ae7841853e1ce26f711a315bf51244925c60785082ff15525f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:dc599d64-3240-49db-4ad9-fd880ce391e5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:bb23af0b-0d09-3461-14af-1bcf46a814a9",
  "kind": "theorem",
  "lexical_name": "prod_powerset_insert",
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
  "slug": "prod-powerset-insert--5f33220f702b1e75ee671168",
  "source": {
    "blob": "65186bfe8cd4979a8232a2a5315e060d64249de2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 263,
    "line": 243,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Ring/Variant005d122e1d9a51ae7841853e1ce26f711a315bf51244925c60785082ff15525f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5f33220f702b1e75ee671168534e6911b45e44a98bd91f090e31bebbede1c51d",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Ring/Variant005d122e1d9a51ae7841853e1ce26f711a315bf51244925c60785082ff15525f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bb23af0b-0d09-3461-14af-1bcf46a814a9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 243–263.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem prod_powerset_insert [DecidableEq α] [CommMonoid β] {s : Finset α} {x : α} (h : x ∉ s)
    (f : Finset α → β) :
    (∏ a in (insert x s).powerset, f a) =
      (∏ a in s.powerset, f a) * ∏ t in s.powerset, f (insert x t) := by
  rw [powerset_insert, Finset.prod_union, Finset.prod_image]
  · intro t₁ h₁ t₂ h₂ heq
    rw [← Finset.erase_insert (not_mem_of_mem_powerset_of_not_mem h₁ h), ←
      Finset.erase_insert (not_mem_of_mem_powerset_of_not_mem h₂ h), heq]
  · rw [Finset.disjoint_iff_ne]
    intro t₁ h₁ t₂ h₂
    rcases Finset.mem_image.1 h₂ with ⟨t₃, _h₃, H₃₂⟩
    rw [← H₃₂]
    exact ne_insert_of_not_mem _ _ (not_mem_of_mem_powerset_of_not_mem h₁ h)
#align finset.prod_powerset_insert Finset.prod_powerset_insert
#align finset.sum_powerset_insert Finset.sum_powerset_insert

/-- A product over `powerset s` is equal to the double product over sets of subsets of `s` with
`card s = k`, for `k = 1, ..., card s`. -/
@[to_additive
      "A sum over `powerset s` is equal to the double sum over sets of subsets of `s` with
      `card s = k`, for `k = 1, ..., card s`"]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Ring/Variant005d122e1d9a51ae7841853e1ce26f711a315bf51244925c60785082ff15525f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Ring/Variant005d122e1d9a51ae7841853e1ce26f711a315bf51244925c60785082ff15525f.lean#L243).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `65186bfe8cd4979a8232a2a5315e060d64249de2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
