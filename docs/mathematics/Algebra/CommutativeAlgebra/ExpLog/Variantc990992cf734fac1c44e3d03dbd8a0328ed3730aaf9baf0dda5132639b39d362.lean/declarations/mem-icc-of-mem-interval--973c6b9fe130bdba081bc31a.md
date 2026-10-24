# mem_Icc_of_mem_interval

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3007830800df12213da9d50ddf6c0af3a1716968",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 198,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c9/c990992cf734fac1c44e3d03dbd8a0328ed3730aaf9baf0dda5132639b39d362.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6d1e86e4-ae82-d73f-8b3b-e4d6350a3da7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f195b31a-c455-41f2-2e11-24f1cdf3441c",
  "kind": "theorem",
  "lexical_name": "mem_Icc_of_mem_interval",
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
  "slug": "mem-icc-of-mem-interval--973c6b9fe130bdba081bc31a",
  "source": {
    "blob": "3007830800df12213da9d50ddf6c0af3a1716968",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 206,
    "line": 198,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/ExpLog/Variantc990992cf734fac1c44e3d03dbd8a0328ed3730aaf9baf0dda5132639b39d362.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:973c6b9fe130bdba081bc31acf95610aed93953f60d5df5e68be92d4543b7dc6",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/ExpLog/Variantc990992cf734fac1c44e3d03dbd8a0328ed3730aaf9baf0dda5132639b39d362.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f195b31a-c455-41f2-2e11-24f1cdf3441c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 198–206.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem mem_Icc_of_mem_interval {z : ℝ} {J : IntervalRat} (hz : z ∈ J) :
    z ∈ Set.Icc (J.lo : ℝ) (J.hi : ℝ) := by
  simp only [IntervalRat.mem_def] at hz
  exact ⟨hz.1, hz.2⟩

/-! ### Correctness theorems -/

/-- expTaylorPoly evaluates to the standard Taylor sum for exp at 0.
    This connects our rational polynomial to Mathlib's Taylor series. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/ExpLog/Variantc990992cf734fac1c44e3d03dbd8a0328ed3730aaf9baf0dda5132639b39d362.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/ExpLog/Variantc990992cf734fac1c44e3d03dbd8a0328ed3730aaf9baf0dda5132639b39d362.lean#L198).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3007830800df12213da9d50ddf6c0af3a1716968` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
