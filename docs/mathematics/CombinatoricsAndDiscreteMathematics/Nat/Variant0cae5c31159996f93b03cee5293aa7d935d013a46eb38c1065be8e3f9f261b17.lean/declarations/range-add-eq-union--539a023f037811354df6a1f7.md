# range_add_eq_union

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ca717d8ba4e7dca9939748c367dc2211321f6b19",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 233,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0c/0cae5c31159996f93b03cee5293aa7d935d013a46eb38c1065be8e3f9f261b17.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:149354d8-99df-8c45-a7be-794a13a8067e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:018198ca-ab83-5c5f-7f79-f4e06c2b8599",
  "kind": "theorem",
  "lexical_name": "range_add_eq_union",
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
  "slug": "range-add-eq-union--539a023f037811354df6a1f7",
  "source": {
    "blob": "ca717d8ba4e7dca9939748c367dc2211321f6b19",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 248,
    "line": 233,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Nat/Variant0cae5c31159996f93b03cee5293aa7d935d013a46eb38c1065be8e3f9f261b17.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:539a023f037811354df6a1f709d899c035d28dc39c967f6da5b470ea87ee9050",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Nat/Variant0cae5c31159996f93b03cee5293aa7d935d013a46eb38c1065be8e3f9f261b17.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:018198ca-ab83-5c5f-7f79-f4e06c2b8599`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 233–248.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem range_add_eq_union : range (a + b) = range a ∪ (range b).map (addLeftEmbedding a) := by
  simp_rw [Finset.range_eq_Ico, map_eq_image]
  convert! (Ico_union_Ico_eq_Ico a.zero_le (a.le_add_right b)).symm
  ext x
  simp only [Ico_zero_eq_range, mem_image, mem_range, addLeftEmbedding_apply, mem_Ico]
  constructor
  · lia
  · rintro h
    exact ⟨x - a, by lia⟩

end Finset

section Induction

variable {P : ℕ → Prop}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Nat/Variant0cae5c31159996f93b03cee5293aa7d935d013a46eb38c1065be8e3f9f261b17.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Nat/Variant0cae5c31159996f93b03cee5293aa7d935d013a46eb38c1065be8e3f9f261b17.lean#L233).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ca717d8ba4e7dca9939748c367dc2211321f6b19` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
