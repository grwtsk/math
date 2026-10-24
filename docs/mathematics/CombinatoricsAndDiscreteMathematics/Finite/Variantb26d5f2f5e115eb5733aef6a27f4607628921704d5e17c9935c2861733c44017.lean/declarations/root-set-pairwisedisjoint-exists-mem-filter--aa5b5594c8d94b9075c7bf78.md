# _root_.Set.PairwiseDisjoint.exists_mem_filter

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "082a3c0286ce09cae3fddfa7fd3404a44c1bcdb1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 164,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b2/b26d5f2f5e115eb5733aef6a27f4607628921704d5e17c9935c2861733c44017.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:72221ca6-beac-9c86-0799-9b9db6befa97",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4bd50a26-6e8c-8970-153b-47b2814ccbd8",
  "kind": "theorem",
  "lexical_name": "_root_.Set.PairwiseDisjoint.exists_mem_filter",
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
  "slug": "root-set-pairwisedisjoint-exists-mem-filter--aa5b5594c8d94b9075c7bf78",
  "source": {
    "blob": "082a3c0286ce09cae3fddfa7fd3404a44c1bcdb1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 173,
    "line": 164,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Finite/Variantb26d5f2f5e115eb5733aef6a27f4607628921704d5e17c9935c2861733c44017.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:aa5b5594c8d94b9075c7bf78eceb5217b6bf7c0755183731fca2c9f087a2331f",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Finite/Variantb26d5f2f5e115eb5733aef6a27f4607628921704d5e17c9935c2861733c44017.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4bd50a26-6e8c-8970-153b-47b2814ccbd8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 164–173.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.Set.PairwiseDisjoint.exists_mem_filter {ι : Type*} {l : ι → Filter α} {t : Set ι}
    (hd : t.PairwiseDisjoint l) (ht : t.Finite) :
    ∃ s : ι → Set α, (∀ i, s i ∈ l i) ∧ t.PairwiseDisjoint s := by
  have := ht.to_subtype
  rcases (hd.subtype _ _).exists_mem_filter_of_disjoint with ⟨s, hsl, hsd⟩
  lift s to (i : t) → {s // s ∈ l i} using hsl
  rcases @Subtype.exists_pi_extension ι (fun i => { s // s ∈ l i }) _ _ s with ⟨s, rfl⟩
  exact ⟨fun i => s i, fun i => (s i).2, hsd.set_of_subtype _ _⟩


```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Finite/Variantb26d5f2f5e115eb5733aef6a27f4607628921704d5e17c9935c2861733c44017.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Finite/Variantb26d5f2f5e115eb5733aef6a27f4607628921704d5e17c9935c2861733c44017.lean#L164).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `082a3c0286ce09cae3fddfa7fd3404a44c1bcdb1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
