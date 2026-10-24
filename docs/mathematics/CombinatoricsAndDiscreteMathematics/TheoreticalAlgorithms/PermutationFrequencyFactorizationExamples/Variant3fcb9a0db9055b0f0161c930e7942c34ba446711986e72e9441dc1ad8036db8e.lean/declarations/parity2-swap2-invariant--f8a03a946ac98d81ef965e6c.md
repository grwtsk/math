# parity2_swap2_invariant

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f74c0f24349aa9f61575845f0aafce2e5509e4f0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 106,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3f/3fcb9a0db9055b0f0161c930e7942c34ba446711986e72e9441dc1ad8036db8e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:277d747c-daf1-2019-bb18-fccb6860f805",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b001180b-eddc-9bd1-e3bd-d77edaea2b01",
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
  "slug": "parity2-swap2-invariant--f8a03a946ac98d81ef965e6c",
  "source": {
    "blob": "f74c0f24349aa9f61575845f0aafce2e5509e4f0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 121,
    "line": 106,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PermutationFrequencyFactorizationExamples/Variant3fcb9a0db9055b0f0161c930e7942c34ba446711986e72e9441dc1ad8036db8e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f8a03a946ac98d81ef965e6c08b0341554f67c61bdebfff1891761de74bae8fc",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PermutationFrequencyFactorizationExamples/Variant3fcb9a0db9055b0f0161c930e7942c34ba446711986e72e9441dc1ad8036db8e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b001180b-eddc-9bd1-e3bd-d77edaea2b01`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 106–121.

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

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PermutationFrequencyFactorizationExamples/Variant3fcb9a0db9055b0f0161c930e7942c34ba446711986e72e9441dc1ad8036db8e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PermutationFrequencyFactorizationExamples/Variant3fcb9a0db9055b0f0161c930e7942c34ba446711986e72e9441dc1ad8036db8e.lean#L106).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f74c0f24349aa9f61575845f0aafce2e5509e4f0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
