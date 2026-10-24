# diagonal_coefficient_error_le_tail

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0fa4369f15f6dcc05d08a8ba913bc2ac0ca43054",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 44,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e0/e0c144f5d55a7b000bcfa23b51d94eb67448b07e29949d435f9dbf3dbcddd9fe.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3305a3d0-bc42-52b2-e5c4-db0bd58aefd1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:35f20838-cb82-c029-5ddf-58f9e61f9657",
  "kind": "theorem",
  "lexical_name": "diagonal_coefficient_error_le_tail",
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
  "slug": "diagonal-coefficient-error-le-tail--3cfed8c504824dd06ad59045",
  "source": {
    "blob": "0fa4369f15f6dcc05d08a8ba913bc2ac0ca43054",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 56,
    "line": 44,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/SourceProperPowerDiagonal/Variante0c144f5d55a7b000bcfa23b51d94eb67448b07e29949d435f9dbf3dbcddd9fe.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3cfed8c504824dd06ad59045bdc777d49ac0c2068ebc897b07c65baf808177d1",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/SourceProperPowerDiagonal/Variante0c144f5d55a7b000bcfa23b51d94eb67448b07e29949d435f9dbf3dbcddd9fe.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:35f20838-cb82-c029-5ddf-58f9e61f9657`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 44–56.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem diagonal_coefficient_error_le_tail (A : ℝ) (hA : 1 ≤ A)
    (U m : ℕ) (hm : U < m) :
    |(if U < m.minFac then vonMangoldt m / (m : ℝ) * diagonalCorrelation A (Real.log m) else 0) -
      (if m.Prime then Real.log (m : ℝ) / (m : ℝ) * diagonalCorrelation A (Real.log m) else 0)| ≤
      (if U < m.minFac then properPowerCoefficient m / (m : ℝ) else 0) := by
  by_cases hb : U < m.minFac
  · simpa [hb] using diagonal_coefficient_error_le A hA U m hm
  · by_cases hp : m.Prime
    · exact False.elim (hb (by simpa [hp.minFac_eq] using hm))
    · simp [hb, hp]

/-- All small-base prime powers vanish in the exact diagonal; the full large-base
proper-power train has the same explicit finite budget. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/SourceProperPowerDiagonal/Variante0c144f5d55a7b000bcfa23b51d94eb67448b07e29949d435f9dbf3dbcddd9fe.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/SourceProperPowerDiagonal/Variante0c144f5d55a7b000bcfa23b51d94eb67448b07e29949d435f9dbf3dbcddd9fe.lean#L44).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0fa4369f15f6dcc05d08a8ba913bc2ac0ca43054` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
