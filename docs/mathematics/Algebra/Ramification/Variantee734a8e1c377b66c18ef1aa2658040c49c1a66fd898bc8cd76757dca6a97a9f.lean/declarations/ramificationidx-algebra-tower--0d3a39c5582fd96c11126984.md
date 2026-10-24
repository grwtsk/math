# ramificationIdx'_algebra_tower'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b61e9c13820bfc7d407bc90954f5dd2084bed701",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 425,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ee/ee734a8e1c377b66c18ef1aa2658040c49c1a66fd898bc8cd76757dca6a97a9f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:feef7075-34ee-af93-506a-2ae3c4d7d42e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0dcbf302-e6d8-1b84-2aed-c148b1b75918",
  "kind": "theorem",
  "lexical_name": "ramificationIdx'_algebra_tower'",
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
  "slug": "ramificationidx-algebra-tower--0d3a39c5582fd96c11126984",
  "source": {
    "blob": "b61e9c13820bfc7d407bc90954f5dd2084bed701",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 445,
    "line": 425,
    "path": "GRWTSK/Algebra/Ramification/Variantee734a8e1c377b66c18ef1aa2658040c49c1a66fd898bc8cd76757dca6a97a9f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0d3a39c5582fd96c111269843c06154e1585536160a81e88115466ee58e48f17",
  "verification": {
    "reference": "docs/verification/Algebra/Ramification/Variantee734a8e1c377b66c18ef1aa2658040c49c1a66fd898bc8cd76757dca6a97a9f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0dcbf302-e6d8-1b84-2aed-c148b1b75918`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 425–445.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ramificationIdx'_algebra_tower' [IsDedekindDomain S] [IsDedekindDomain T] [IsDomain R]
    [Module.IsTorsionFree R S] [Module.IsTorsionFree S T] (p : Ideal R) (P : Ideal S) (Q : Ideal T)
    [Q.IsPrime] [Q.LiesOver P] [P.LiesOver p] :
    ramificationIdx' p Q =
      ramificationIdx' p P * ramificationIdx' P Q := by
  obtain rfl | hp := eq_or_ne p ⊥
  · simp
  have : P.IsPrime := isPrime_of_liesOver Q P
  have : Module.IsTorsionFree R T := by
    refine Module.IsTorsionFree.of_smul_eq_zero fun r m h ↦ ?_
    rwa [algebra_compatible_smul S, smul_eq_zero, FaithfulSMul.algebraMap_eq_zero_iff] at h
  have hP : P ≠ ⊥ := ne_bot_of_liesOver_of_ne_bot hp _
  exact ramificationIdx'_algebra_tower (map_ne_bot_of_ne_bot hP) (map_ne_bot_of_ne_bot hp)
    <| map_le_iff_le_comap.mpr <| le_of_eq <| over_def Q P

@[deprecated (since := "2026-07-01")] alias ramificationIdx_algebra_tower' :=
  ramificationIdx'_algebra_tower'

end tower

end Ideal
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Ramification/Variantee734a8e1c377b66c18ef1aa2658040c49c1a66fd898bc8cd76757dca6a97a9f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Ramification/Variantee734a8e1c377b66c18ef1aa2658040c49c1a66fd898bc8cd76757dca6a97a9f.lean#L425).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b61e9c13820bfc7d407bc90954f5dd2084bed701` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
