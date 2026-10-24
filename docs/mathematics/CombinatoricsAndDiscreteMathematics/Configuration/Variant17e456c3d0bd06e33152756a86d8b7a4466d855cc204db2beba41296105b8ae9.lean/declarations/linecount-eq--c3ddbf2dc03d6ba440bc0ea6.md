# lineCount_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c5259344d91591aadefbb16e34fc3bed00027a85",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 392,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/17/17e456c3d0bd06e33152756a86d8b7a4466d855cc204db2beba41296105b8ae9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:68c9895f-4bd0-1bc3-c3b1-9e0fb85e2af8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c2b6f8b1-ee8c-c244-3126-5e67e9c8d69f",
  "kind": "theorem",
  "lexical_name": "lineCount_eq",
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
  "slug": "linecount-eq--c3ddbf2dc03d6ba440bc0ea6",
  "source": {
    "blob": "c5259344d91591aadefbb16e34fc3bed00027a85",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 401,
    "line": 392,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Configuration/Variant17e456c3d0bd06e33152756a86d8b7a4466d855cc204db2beba41296105b8ae9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c3ddbf2dc03d6ba440bc0ea600bf5e4e19c53da997f81f5a7dea340641aeeb07",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Configuration/Variant17e456c3d0bd06e33152756a86d8b7a4466d855cc204db2beba41296105b8ae9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c2b6f8b1-ee8c-c244-3126-5e67e9c8d69f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 392–401.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lineCount_eq [Finite P] [Finite L] (p : P) : lineCount L p = order P L + 1 := by
  classical
    obtain ⟨q, -, -, l, -, -, -, -, h, -⟩ := Classical.choose_spec (@exists_config P L _ _)
    cases nonempty_fintype { l : L // q ∈ l }
    rw [order, lineCount_eq_lineCount L p q, lineCount_eq_lineCount L (Classical.choose _) q,
      lineCount, Nat.card_eq_fintype_card, Nat.sub_add_cancel]
    exact Fintype.card_pos_iff.mpr ⟨⟨l, h⟩⟩

variable (P) {L}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Configuration/Variant17e456c3d0bd06e33152756a86d8b7a4466d855cc204db2beba41296105b8ae9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Configuration/Variant17e456c3d0bd06e33152756a86d8b7a4466d855cc204db2beba41296105b8ae9.lean#L392).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c5259344d91591aadefbb16e34fc3bed00027a85` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
