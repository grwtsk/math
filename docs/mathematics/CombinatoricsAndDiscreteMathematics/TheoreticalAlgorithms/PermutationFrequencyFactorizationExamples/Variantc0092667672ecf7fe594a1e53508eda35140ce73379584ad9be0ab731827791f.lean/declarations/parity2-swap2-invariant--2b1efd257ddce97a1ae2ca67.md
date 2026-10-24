# parity2_swap2_invariant

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:98a4806a-62b3-fbb9-9957-23ee03f516c9",
  "kind": "theorem",
  "lexical_name": "parity2_swap2_invariant",
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
  "slug": "parity2-swap2-invariant--2b1efd257ddce97a1ae2ca67",
  "source": {
    "blob": "e4a635936e72196bcd22ce28f256c52932c5b9dd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 129,
    "line": 114,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PermutationFrequencyFactorizationExamples/Variantc0092667672ecf7fe594a1e53508eda35140ce73379584ad9be0ab731827791f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2b1efd257ddce97a1ae2ca673d8070f326a6deab8a38289808848399bdc78589",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PermutationFrequencyFactorizationExamples/Variantc0092667672ecf7fe594a1e53508eda35140ce73379584ad9be0ab731827791f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:98a4806a-62b3-fbb9-9957-23ee03f516c9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 114–129.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem parity2_swap2_invariant :
    permuteFunction swap2 parity2 = parity2 := by
  funext x
  have hswap0 :
      permutePoint (CoordinatePermutation.symm swap2) x bit0 = x bit1 := rfl
  have hswap1 :
      permutePoint (CoordinatePermutation.symm swap2) x bit1 = x bit0 := rfl
  show
    (if permutePoint (CoordinatePermutation.symm swap2) x bit0 =
        permutePoint (CoordinatePermutation.symm swap2) x bit1 then
      (1 : Int) else -1) =
      (if x bit0 = x bit1 then (1 : Int) else -1)
  rw [hswap0, hswap1]
  cases h0 : x bit0 <;> cases h1 : x bit1 <;> rfl

/-- Every function in the orbit of `parity2` is `parity2` itself. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PermutationFrequencyFactorizationExamples/Variantc0092667672ecf7fe594a1e53508eda35140ce73379584ad9be0ab731827791f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PermutationFrequencyFactorizationExamples/Variantc0092667672ecf7fe594a1e53508eda35140ce73379584ad9be0ab731827791f.lean#L114).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e4a635936e72196bcd22ce28f256c52932c5b9dd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
