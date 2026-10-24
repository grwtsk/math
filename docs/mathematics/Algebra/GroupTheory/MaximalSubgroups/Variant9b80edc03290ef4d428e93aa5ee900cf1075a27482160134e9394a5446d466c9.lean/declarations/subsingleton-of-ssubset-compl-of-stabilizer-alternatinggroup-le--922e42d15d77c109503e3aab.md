# subsingleton_of_ssubset_compl_of_stabilizer_alternatingGroup_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b8a8d377fd703de2e88b733fc1ec376a693e1fae",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 196,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9b/9b80edc03290ef4d428e93aa5ee900cf1075a27482160134e9394a5446d466c9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:46a2b024-ad06-d537-2d49-277f7e2982b1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:49c8f105-3b1c-03b2-0c1f-9c07ea0856e6",
  "kind": "theorem",
  "lexical_name": "subsingleton_of_ssubset_compl_of_stabilizer_alternatingGroup_le",
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
  "slug": "subsingleton-of-ssubset-compl-of-stabilizer-alternatinggroup-le--922e42d15d77c109503e3aab",
  "source": {
    "blob": "b8a8d377fd703de2e88b733fc1ec376a693e1fae",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 216,
    "line": 196,
    "path": "GRWTSK/Algebra/GroupTheory/MaximalSubgroups/Variant9b80edc03290ef4d428e93aa5ee900cf1075a27482160134e9394a5446d466c9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:922e42d15d77c109503e3aab78a2a993168d1d409cc0be8d7891b4f2c400a994",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/MaximalSubgroups/Variant9b80edc03290ef4d428e93aa5ee900cf1075a27482160134e9394a5446d466c9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:49c8f105-3b1c-03b2-0c1f-9c07ea0856e6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 196–216.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem subsingleton_of_ssubset_compl_of_stabilizer_alternatingGroup_le
    {s B : Set α} {G : Subgroup (alternatingGroup α)}
    (hs : s.Nontrivial) (hB_ss_sc : B ⊂ sᶜ) (hG : stabilizer (alternatingGroup α) s ≤ G)
    (hB : IsBlock G B) :
    B.Subsingleton := by
  apply hB.subsingleton_of_ssubset_of_stabilizer_le hB_ss_sc
  intro g
  obtain ⟨⟨k, hk⟩, rfl⟩ := alternatingGroup.stabilizer.surjective_toPerm (by rwa [compl_compl]) g
  rw [stabilizer_compl] at hk
  exact ⟨⟨⟨k, hG hk⟩, by aesop⟩, rfl⟩

end MulAction.IsBlock

namespace alternatingGroup

/-- Note : The proof of this statement is close to that
of `Equiv.Perm.isCoatom_stabilizer_of_ncard_lt_ncard_compl`,
and while it would not be absolutely impossible to abstract both proofs,
the result would be slightly awkward because the
details of the results involved in the proof differ in annoying details.
And it would be used only twice. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/MaximalSubgroups/Variant9b80edc03290ef4d428e93aa5ee900cf1075a27482160134e9394a5446d466c9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/MaximalSubgroups/Variant9b80edc03290ef4d428e93aa5ee900cf1075a27482160134e9394a5446d466c9.lean#L196).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b8a8d377fd703de2e88b733fc1ec376a693e1fae` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
