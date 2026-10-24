# Set.Finite.ciSup_lt_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "118224acb470fe7c28b7f6460ce93f05ad6b6299",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 122,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/37/37df862889e093c16c7c257e58bb9799c5896f7d717bcee1edfd237b89578cdf.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:974d832f-bf16-7cdf-a0de-5b92cd620d1a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:15b9d890-9497-0e7a-f85f-f29289e3f2ea",
  "kind": "theorem",
  "lexical_name": "Set.Finite.ciSup_lt_iff",
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
  "slug": "set-finite-cisup-lt-iff--bfd06f149ca4fdd92785196b",
  "source": {
    "blob": "118224acb470fe7c28b7f6460ce93f05ad6b6299",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 142,
    "line": 122,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Finset/Variant37df862889e093c16c7c257e58bb9799c5896f7d717bcee1edfd237b89578cdf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bfd06f149ca4fdd92785196bbc45bd074a5bbb5df9dadb5b80c5f131a3d273f3",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Finset/Variant37df862889e093c16c7c257e58bb9799c5896f7d717bcee1edfd237b89578cdf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:15b9d890-9497-0e7a-f85f-f29289e3f2ea`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 122–142.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Set.Finite.ciSup_lt_iff {s : Set ι} {f : ι → α} (hs : s.Finite)
    (h : ∃ x ∈ s, sSup ∅ ≤ f x) :
    ⨆ i ∈ s, f i < a ↔ ∀ x ∈ s, f x < a := by
  constructor
  · intro h x hx
    refine h.trans_le' (le_csSup ?_ ?_)
    · classical
      refine (((hs.image f).union (finite_singleton (sSup ∅))).subset ?_).bddAbove
      intro
      simp only [ciSup_eq_ite, dite_eq_ite, mem_range, union_singleton, mem_insert_iff, mem_image,
        forall_exists_index]
      grind
    · simp only [mem_range]
      refine ⟨x, ?_⟩
      simp [hx]
  · have := hs.ciSup_mem_image _ h
    grind

section ListMultiset

@[to_dual iInf_mem_map_of_exists_le_sInf_empty]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Finset/Variant37df862889e093c16c7c257e58bb9799c5896f7d717bcee1edfd237b89578cdf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Finset/Variant37df862889e093c16c7c257e58bb9799c5896f7d717bcee1edfd237b89578cdf.lean#L122).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `118224acb470fe7c28b7f6460ce93f05ad6b6299` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
