# prod_powerset_insert

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:aecd5b44-a880-db87-c987-1a3af7d7162c",
  "kind": "lemma",
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
  "slug": "prod-powerset-insert--9e9242a1ed9ddc0c2ae70f2b",
  "source": {
    "blob": "28dbd2306fc427bef89c18e272b6602e66c2b90a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 50,
    "line": 40,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Powerset/Variant56bdce4c343161371b1f5cf87a306384de7c4af4e6d36b88601ab9c94154a08b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9e9242a1ed9ddc0c2ae70f2b51521d84567998aa0bfd6ac314b3be7f53416198",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Powerset/Variant56bdce4c343161371b1f5cf87a306384de7c4af4e6d36b88601ab9c94154a08b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:aecd5b44-a880-db87-c987-1a3af7d7162c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 40–50.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma prod_powerset_insert [DecidableEq α] (ha : a ∉ s) (f : Finset α → β) :
    ∏ t ∈ (insert a s).powerset, f t =
      (∏ t ∈ s.powerset, f t) * ∏ t ∈ s.powerset, f (insert a t) := by
  rw [powerset_insert, prod_union, prod_image]
  · exact insert_erase_invOn.2.injOn.mono fun t ht ↦ notMem_mono (mem_powerset.1 ht) ha
  · aesop (add simp [disjoint_left, insert_subset_iff])

/-- A product over all subsets of `s ∪ {x}` is obtained by multiplying the product over all subsets
of `s`, and over all subsets of `s` to which one adds `x`. -/
@[to_additive /-- A sum over all subsets of `s ∪ {x}` is obtained by summing the sum over all
subsets of `s`, and over all subsets of `s` to which one adds `x`. -/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Powerset/Variant56bdce4c343161371b1f5cf87a306384de7c4af4e6d36b88601ab9c94154a08b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Powerset/Variant56bdce4c343161371b1f5cf87a306384de7c4af4e6d36b88601ab9c94154a08b.lean#L40).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `28dbd2306fc427bef89c18e272b6602e66c2b90a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
