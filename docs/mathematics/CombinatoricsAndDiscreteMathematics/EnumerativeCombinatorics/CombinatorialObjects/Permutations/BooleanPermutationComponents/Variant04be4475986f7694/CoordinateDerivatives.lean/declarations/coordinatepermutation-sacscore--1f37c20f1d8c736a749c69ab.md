# coordinatePermutation_sacScore

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:811c08a5-7911-867d-f1fa-257cc8382ed1",
  "kind": "theorem",
  "lexical_name": "coordinatePermutation_sacScore",
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
  "slug": "coordinatepermutation-sacscore--1f37c20f1d8c736a749c69ab",
  "source": {
    "blob": "1e8efd9793c81f5f51ab1d9c3896f567d0b169df",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 163,
    "line": 149,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CombinatorialObjects/Permutations/BooleanPermutationComponents/Variant04be4475986f7694/CoordinateDerivatives.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1f37c20f1d8c736a749c69abf4286e38041963a8b6bd44f5145c44f68e6ab76a",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CombinatorialObjects/Permutations/BooleanPermutationComponents/Variant04be4475986f7694/CoordinateDerivatives.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:811c08a5-7911-867d-f1fa-257cc8382ed1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 149–163.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coordinatePermutation_sacScore {n : Nat}
    (π : Equiv.Perm (Fin n)) (hn : 0 < n) :
    sacScore (coordinatePermutation π) = 0 := by
  have hterm (i j : Fin n) :
      |2 * sacEntry (coordinatePermutation π) i j - 1| = 1 := by
    rw [coordinatePermutation_sacEntry]
    by_cases hij : π i = j
    · rw [if_pos hij]
      norm_num
    · rw [if_neg hij]
      norm_num
  rw [sacScore, if_neg (Nat.ne_of_gt hn)]
  simp [hterm, Nat.ne_of_gt hn]

/-- Every positive-width coordinate permutation has zero variance score. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../verification/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CombinatorialObjects/Permutations/BooleanPermutationComponents/Variant04be4475986f7694/CoordinateDerivatives.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CombinatorialObjects/Permutations/BooleanPermutationComponents/Variant04be4475986f7694/CoordinateDerivatives.lean#L149).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1e8efd9793c81f5f51ab1d9c3896f567d0b169df` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
