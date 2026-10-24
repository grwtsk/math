# splitAux_of_valid

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "83c312bcd600c0b0f830fc5041f1efbc2f111c31",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 416,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6b/6b83e8126ccbc0e0b1724d8b22173a488d19d7a9755042567091d6e8f958cca2.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4cdd4152-b9d5-546a-e1a8-8fd64acd4770",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:918e72a9-fa55-62cf-d2c5-2d9336447ee6",
  "kind": "theorem",
  "lexical_name": "splitAux_of_valid",
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
  "slug": "splitaux-of-valid--10c41deb7e19f992000db69c",
  "source": {
    "blob": "83c312bcd600c0b0f830fc5041f1efbc2f111c31",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 435,
    "line": 416,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant6b83e8126ccbc0e0b1724d8b22173a488d19d7a9755042567091d6e8f958cca2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:10c41deb7e19f992000db69ca82f348dfe63c6d56b011a90888ebc1e5fdf14d9",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant6b83e8126ccbc0e0b1724d8b22173a488d19d7a9755042567091d6e8f958cca2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:918e72a9-fa55-62cf-d2c5-2d9336447ee6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 416–435.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem splitAux_of_valid (p l m r acc) :
    splitAux ⟨l ++ m ++ r⟩ p ⟨utf8Len l⟩ ⟨utf8Len l + utf8Len m⟩ acc =
      acc.reverse ++ (List.splitOnP.go p r m.reverse).map mk := by
  unfold splitAux
  simp only [List.append_assoc, atEnd_iff, endPos_eq, utf8Len_append, Pos.mk_le_mk,
    Nat.add_le_add_iff_left, by simpa using atEnd_of_valid (l ++ m) r, List.reverse_cons,
    dite_eq_ite]
  split
  · subst r; simpa [List.splitOnP.go] using extract_of_valid l m []
  · obtain ⟨c, r, rfl⟩ := r.exists_cons_of_ne_nil ‹_›
    simp only [by
      simpa using
        (⟨get_of_valid (l ++ m) (c :: r), next_of_valid (l ++ m) c r,
            extract_of_valid l m (c :: r)⟩ :
          _ ∧ _ ∧ _),
      List.splitOnP.go, List.reverse_reverse]
    split <;> rename_i h
    · simpa [Nat.add_assoc] using splitAux_of_valid p (l++m++[c]) [] r (⟨m⟩::acc)
    · simpa [Nat.add_assoc] using splitAux_of_valid p l (m++[c]) r acc

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant6b83e8126ccbc0e0b1724d8b22173a488d19d7a9755042567091d6e8f958cca2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant6b83e8126ccbc0e0b1724d8b22173a488d19d7a9755042567091d6e8f958cca2.lean#L416).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `83c312bcd600c0b0f830fc5041f1efbc2f111c31` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
