# posIndex_eq_rank_of_posSemidef

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7c04c5ff371bf6b1ef722a0188a1740aeedd7ac2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 59,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e0/e07fdb5ba552308fd859248133464a2a3610d55521ff56716515a050ddd6e167.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:94f1740b-799a-67f8-0bd6-9565d05af526",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:af3e4222-4936-4165-b8b3-6d7ee1c91ff2",
  "kind": "lemma",
  "lexical_name": "posIndex_eq_rank_of_posSemidef",
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
  "slug": "posindex-eq-rank-of-possemidef--e3bcad0a457c5a5ca1a33de4",
  "source": {
    "blob": "7c04c5ff371bf6b1ef722a0188a1740aeedd7ac2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 69,
    "line": 59,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/PosIndex/Variante07fdb5ba552308fd859248133464a2a3610d55521ff56716515a050ddd6e167.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e3bcad0a457c5a5ca1a33de463c4a4b590861328d8f5731f24c7a2b76c087910",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/PosIndex/Variante07fdb5ba552308fd859248133464a2a3610d55521ff56716515a050ddd6e167.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:af3e4222-4936-4165-b8b3-6d7ee1c91ff2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 59–69.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma posIndex_eq_rank_of_posSemidef {A : Matrix n n 𝕜} (hA : A.PosSemidef) :
    posIndex hA.isHermitian = A.rank := by
  rw [hA.isHermitian.rank_eq_card_non_zero_eigs, Fintype.card_subtype]
  unfold posIndex
  congr 1
  ext i
  simp only [mem_filter, mem_univ, true_and, ne_eq]
  exact ⟨fun h => h.ne', fun h => (hA.eigenvalues_nonneg i).lt_of_ne' h⟩

/-- Real part of the trace. For a Hermitian matrix this is the full trace,
since the trace of a Hermitian matrix is real. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/PosIndex/Variante07fdb5ba552308fd859248133464a2a3610d55521ff56716515a050ddd6e167.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/PosIndex/Variante07fdb5ba552308fd859248133464a2a3610d55521ff56716515a050ddd6e167.lean#L59).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7c04c5ff371bf6b1ef722a0188a1740aeedd7ac2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
