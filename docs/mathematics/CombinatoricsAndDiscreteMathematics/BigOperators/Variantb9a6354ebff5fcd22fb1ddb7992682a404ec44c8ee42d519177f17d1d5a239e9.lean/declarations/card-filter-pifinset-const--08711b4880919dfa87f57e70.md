# card_filter_piFinset_const

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "917939a39bc342d238acc0cebaee1ef3bce5f100",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 190,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b9/b9a6354ebff5fcd22fb1ddb7992682a404ec44c8ee42d519177f17d1d5a239e9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0a98ba8c-4063-dae1-66b6-9ab707194436",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:661d3ebc-ce0b-5eff-afe3-8d95b2b867e3",
  "kind": "lemma",
  "lexical_name": "card_filter_piFinset_const",
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
  "slug": "card-filter-pifinset-const--08711b4880919dfa87f57e70",
  "source": {
    "blob": "917939a39bc342d238acc0cebaee1ef3bce5f100",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 199,
    "line": 190,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/BigOperators/Variantb9a6354ebff5fcd22fb1ddb7992682a404ec44c8ee42d519177f17d1d5a239e9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:08711b4880919dfa87f57e708a7318b2359a657e40bcfd57efa1973b510fa1ba",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/BigOperators/Variantb9a6354ebff5fcd22fb1ddb7992682a404ec44c8ee42d519177f17d1d5a239e9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:661d3ebc-ce0b-5eff-afe3-8d95b2b867e3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 190–199.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma card_filter_piFinset_const (s : Finset κ) (i : ι) (j : κ) :
    #{f ∈ piFinset fun _ ↦ s | f i = j} = if j ∈ s then #s ^ (card ι - 1) else 0 :=
  (card_filter_piFinset_eq _ _ _).trans <| by
    rw [prod_const #s, card_erase_of_mem (mem_univ _), card_univ]

end Fintype
end Pi

-- TODO: this is a basic theorem about `Fintype.card`,
-- and ideally could be moved to `Mathlib/Data/Fintype/Card.lean`.
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/BigOperators/Variantb9a6354ebff5fcd22fb1ddb7992682a404ec44c8ee42d519177f17d1d5a239e9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/BigOperators/Variantb9a6354ebff5fcd22fb1ddb7992682a404ec44c8ee42d519177f17d1d5a239e9.lean#L190).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `917939a39bc342d238acc0cebaee1ef3bce5f100` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
