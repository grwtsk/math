# existsUnique_one_in_row

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a8c7c5d2-b1b4-ebd7-786c-c6efdfc174c2",
  "kind": "theorem",
  "lexical_name": "existsUnique_one_in_row",
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
  "slug": "existsunique-one-in-row--492ddb9f2a8748bae47a2c58",
  "source": {
    "blob": "bc36fd64350981ecf4760e9c85f7c545cd0769ad",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 127,
    "line": 113,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/ExactPermutationMatrix/Variant0323ff970530f4e86d16c23b9b722e8fa9e4e4e72c2d4868df5136dfc813bcb7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:492ddb9f2a8748bae47a2c58f360947f5ecf1a7fa43abc3ec907cec823e21cdc",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/ExactPermutationMatrix/Variant0323ff970530f4e86d16c23b9b722e8fa9e4e4e72c2d4868df5136dfc813bcb7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a8c7c5d2-b1b4-ebd7-786c-c6efdfc174c2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 113–127.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem existsUnique_one_in_row
    (representation : ExactPermutationMatrix X)
    (i : X) :
    ∃! j : X, representation.matrix i j = 1 := by
  refine ⟨representation.permutation i, ?_, ?_⟩
  · rw [representation.matrix_eq]
    simp [permutationMatrix]
  · intro j hj
    rw [representation.matrix_eq] at hj
    have hImage : representation.permutation i = j := by
      by_contra hne
      simp [permutationMatrix, hne] at hj
    exact hImage.symm

/-- Every column contains exactly one coefficient equal to one. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/ExactPermutationMatrix/Variant0323ff970530f4e86d16c23b9b722e8fa9e4e4e72c2d4868df5136dfc813bcb7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/ExactPermutationMatrix/Variant0323ff970530f4e86d16c23b9b722e8fa9e4e4e72c2d4868df5136dfc813bcb7.lean#L113).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bc36fd64350981ecf4760e9c85f7c545cd0769ad` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
