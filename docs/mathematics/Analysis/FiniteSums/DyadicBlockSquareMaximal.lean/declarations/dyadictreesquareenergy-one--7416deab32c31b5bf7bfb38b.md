# dyadicTreeSquareEnergy_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e649a379-c0cd-03fc-25c0-9b6d474ca459",
  "kind": "theorem",
  "lexical_name": "dyadicTreeSquareEnergy_one",
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
  "slug": "dyadictreesquareenergy-one--7416deab32c31b5bf7bfb38b",
  "source": {
    "blob": "b18f90584b0f3e181a90fe40dd127c04fc20d844",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 318,
    "line": 309,
    "path": "GRWTSK/Analysis/FiniteSum/DyadicBlockSquareMaximal.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7416deab32c31b5bf7bfb38b5f5d476439e0a422deca6e688c02f30afbcde210",
  "verification": {
    "reference": "docs/verification/Analysis/FiniteSums/DyadicBlockSquareMaximal.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e649a379-c0cd-03fc-25c0-9b6d474ca459`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 309–318.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem dyadicTreeSquareEnergy_one (a : ℕ → ℝ) :
    dyadicTreeSquareEnergy 1 a =
      (a 0 + a 1) ^ 2 + a 0 ^ 2 + a 1 ^ 2 := by
  norm_num [dyadicTreeSquareEnergy, alignedDyadicBlockSum,
    finitePrefixSum, shiftedSequence, Finset.sum_range_succ]

end GRWTSK.Analysis.FiniteSum.DyadicBlockSquareMaximal

#print axioms GRWTSK.Analysis.FiniteSum.DyadicBlockSquareMaximal.finitePrefixSum_sq_le_dyadicTreeSquareEnergy
#print axioms GRWTSK.Analysis.FiniteSum.DyadicBlockSquareMaximal.dyadicPrefixMaximum_sq_le_dyadicTreeSquareEnergy
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/FiniteSums/DyadicBlockSquareMaximal.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FiniteSum/DyadicBlockSquareMaximal.lean#L309).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b18f90584b0f3e181a90fe40dd127c04fc20d844` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
