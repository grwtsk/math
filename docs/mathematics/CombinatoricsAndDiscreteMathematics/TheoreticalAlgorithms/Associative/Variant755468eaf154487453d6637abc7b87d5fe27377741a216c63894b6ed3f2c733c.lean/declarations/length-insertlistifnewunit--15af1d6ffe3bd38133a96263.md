# length_insertListIfNewUnit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "dbbf8b921dbaa720483377d3c4810f060d70f676",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 4170,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/75/755468eaf154487453d6637abc7b87d5fe27377741a216c63894b6ed3f2c733c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7c728f3c-7041-8923-dbb4-9cca5c30b73c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:fe121fa2-14ba-0163-515f-88ee6540bfd1",
  "kind": "theorem",
  "lexical_name": "length_insertListIfNewUnit",
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
  "slug": "length-insertlistifnewunit--15af1d6ffe3bd38133a96263",
  "source": {
    "blob": "dbbf8b921dbaa720483377d3c4810f060d70f676",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 4214,
    "line": 4170,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Associative/Variant755468eaf154487453d6637abc7b87d5fe27377741a216c63894b6ed3f2c733c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:15af1d6ffe3bd38133a962630c63906fb839037ac0a8407fb84ea030745d950c",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Associative/Variant755468eaf154487453d6637abc7b87d5fe27377741a216c63894b6ed3f2c733c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fe121fa2-14ba-0163-515f-88ee6540bfd1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 4170–4214.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem length_insertListIfNewUnit [BEq α] [EquivBEq α]
    {l : List ((_ : α) × Unit)} {toInsert : List α}
    (distinct_l : DistinctKeys l)
    (distinct_toInsert : toInsert.Pairwise (fun a b => (a == b) = false))
    (distinct_both : ∀ (a : α), containsKey a l → toInsert.contains a = false) :
    (insertListIfNewUnit l toInsert).length = l.length + toInsert.length := by
  induction toInsert generalizing l with
  | nil => simp [insertListIfNewUnit]
  | cons hd tl ih =>
    simp only [insertListIfNewUnit, List.length_cons]
    rw [ih]
    · rw [length_insertEntryIfNew]
      specialize distinct_both hd
      simp only [List.contains_cons, BEq.rfl, Bool.true_or,
        ] at distinct_both
      cases eq : containsKey hd l with
      | true => simp [eq] at distinct_both
      | false =>
        simp only [Bool.false_eq_true, ↓reduceIte]
        rw [Nat.add_assoc, Nat.add_comm 1 _]
    · apply DistinctKeys.insertEntryIfNew distinct_l
    · simp only [pairwise_cons] at distinct_toInsert
      apply And.right distinct_toInsert
    · intro a
      simp only [List.contains_cons,
        ] at distinct_both
      rw [containsKey_insertEntryIfNew]
      simp only [Bool.or_eq_true]
      intro h
      cases h with
      | inl h =>
        simp only [pairwise_cons] at distinct_toInsert
        rw [List.contains_eq_any_beq]
        simp only [List.any_eq_false, Bool.not_eq_true]
        intro x x_mem
        rcases distinct_toInsert with ⟨left,_⟩
        specialize left x x_mem
        apply BEq.neq_of_beq_of_neq
        apply BEq.symm h
        exact left
      | inr h =>
        specialize distinct_both a h
        rw [Bool.or_eq_false_iff] at distinct_both
        apply And.right distinct_both

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Associative/Variant755468eaf154487453d6637abc7b87d5fe27377741a216c63894b6ed3f2c733c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Associative/Variant755468eaf154487453d6637abc7b87d5fe27377741a216c63894b6ed3f2c733c.lean#L4170).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dbbf8b921dbaa720483377d3c4810f060d70f676` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
