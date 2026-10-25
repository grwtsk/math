# inductionOn'_sub_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "349f86795102c1cae76a6a03901e769fecc18c3c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 118,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/bd/bd7746943dac6df8d09c5a3ab2ca1cc5a7317167fc8139c57c0bd3689d74f794.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:59884c8e-f6ba-ba0c-f5b9-3ba2884e97d9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6a0edba7-9b3f-b28f-2f30-9f2819580211",
  "kind": "lemma",
  "lexical_name": "inductionOn'_sub_one",
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
  "slug": "inductionon-sub-one--8c72af069a5b19be1b8da0e5",
  "source": {
    "blob": "349f86795102c1cae76a6a03901e769fecc18c3c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 136,
    "line": 118,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Init/Variantbd7746943dac6df8d09c5a3ab2ca1cc5a7317167fc8139c57c0bd3689d74f794.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8c72af069a5b19be1b8da0e5841b0245beee1446e0bcffcc34ee7bf61a17a458",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Init/Variantbd7746943dac6df8d09c5a3ab2ca1cc5a7317167fc8139c57c0bd3689d74f794.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6a0edba7-9b3f-b28f-2f30-9f2819580211`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 118–136.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma inductionOn'_sub_one (hz : z ≤ b) :
    (z - 1).inductionOn' b H0 Hs Hp = Hp z hz (z.inductionOn' b H0 Hs Hp) := by
  apply cast_eq_iff_heq.mpr
  obtain ⟨n, hn⟩ := Int.eq_negSucc_of_lt_zero (show z - 1 - b < 0 by omega)
  rw [hn]
  obtain _|n := n
  · change _ = -1 at hn
    have : z = b := by omega
    subst this; rw [inductionOn'_self]; exact heq_of_eq rfl
  · have : z = b + -[n+1] := by rw [Int.negSucc_eq] at hn ⊢; omega
    subst this
    refine (cast_heq _ _).trans ?_
    congr
    symm
    rw [Int.inductionOn', cast_eq_iff_heq, show b + -[n+1] - b = -[n+1] by omega]

end inductionOn'

/-- Inductively define a function on `ℤ` by defining it on `ℕ` and extending it from `n` to `-n`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/Init/Variantbd7746943dac6df8d09c5a3ab2ca1cc5a7317167fc8139c57c0bd3689d74f794.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Init/Variantbd7746943dac6df8d09c5a3ab2ca1cc5a7317167fc8139c57c0bd3689d74f794.lean#L118).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `349f86795102c1cae76a6a03901e769fecc18c3c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
