# firstInterior_hasDerivAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c7d562c8d07646b5481a20511d01ec126328a1ca",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 74,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/cc/ccd37ce5636052cd7b6ade626efb57c7b7f94fd70d32689ff2c91c3f10cd73e8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6c79ab0f-d580-67b3-f34d-7fa4e8c741c5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:fc75a3ce-1d8d-3b9c-04ea-086f31240115",
  "kind": "theorem",
  "lexical_name": "firstInterior_hasDerivAt",
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
  "slug": "firstinterior-hasderivat--8e7e5280cb03100cb8d80aea",
  "source": {
    "blob": "c7d562c8d07646b5481a20511d01ec126328a1ca",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 85,
    "line": 74,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Realization/Variantccd37ce5636052cd7b6ade626efb57c7b7f94fd70d32689ff2c91c3f10cd73e8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8e7e5280cb03100cb8d80aea96e8dff1c6060a2b98394a3a38f3cffd324b7d4f",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Realization/Variantccd37ce5636052cd7b6ade626efb57c7b7f94fd70d32689ff2c91c3f10cd73e8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fc75a3ce-1d8d-3b9c-04ea-086f31240115`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 74–85.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem firstInterior_hasDerivAt (A x : ℝ) :
    HasDerivAt (firstInterior A) (secondInterior A x) x := by
  have hy := (hasDerivAt_id x).div_const A
  have h := ((((hy.const_mul (-8)).add ((hy.pow 3).const_mul 24)).sub
    ((hy.pow 5).const_mul 24)).add ((hy.pow 7).const_mul 8)).div_const
      (A * Real.sqrt A)
  convert h using 1 <;> try rfl
  dsimp [secondInterior]
  simp only [div_eq_mul_inv, mul_inv_rev]
  ring

/-- The source bump has zero endpoint traces. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Realization/Variantccd37ce5636052cd7b6ade626efb57c7b7f94fd70d32689ff2c91c3f10cd73e8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Realization/Variantccd37ce5636052cd7b6ade626efb57c7b7f94fd70d32689ff2c91c3f10cd73e8.lean#L74).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c7d562c8d07646b5481a20511d01ec126328a1ca` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
