# finite_boundary_telescope

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4c407497b6a607f832537cf7881bf5c17da19ff9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 133,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4b/4bf6254119105b7529ff6651ffec905748d26e0cda4c7b12be5c1568c41bd3e7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:040b2947-4245-5460-b969-e1a473d0a6ee",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:77e50b9f-b7db-5625-707f-ad4dac6557c1",
  "kind": "theorem",
  "lexical_name": "finite_boundary_telescope",
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
  "slug": "finite-boundary-telescope--d082e9c0b41e9e8984496852",
  "source": {
    "blob": "4c407497b6a607f832537cf7881bf5c17da19ff9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 152,
    "line": 133,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant4bf6254119105b7529ff6651ffec905748d26e0cda4c7b12be5c1568c41bd3e7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d082e9c0b41e9e8984496852290f6e7157c02b8ee952a03f23e99bbb1b4b4fd0",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant4bf6254119105b7529ff6651ffec905748d26e0cda4c7b12be5c1568c41bd3e7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:77e50b9f-b7db-5625-707f-ad4dac6557c1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 133–152.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem finite_boundary_telescope (A : ℝ) (n : ℕ) :
    (∑ j ∈ Finset.range n,
      -weightedMobiusPrimitive (dyadicBlockPoint A j) *
        (sourceLogKernel A (dyadicBlockPoint A (j + 1)) -
          sourceLogKernel A (dyadicBlockPoint A j))) =
      weightedMobiusPrimitive (dyadicBlockPoint A 0) * sourceLogKernel A (dyadicBlockPoint A 0) -
        weightedMobiusPrimitive (dyadicBlockPoint A n) *
          sourceLogKernel A (dyadicBlockPoint A n) +
      ∑ j ∈ Finset.range n,
        (weightedMobiusPrimitive (dyadicBlockPoint A (j + 1)) -
          weightedMobiusPrimitive (dyadicBlockPoint A j)) *
            sourceLogKernel A (dyadicBlockPoint A (j + 1)) := by
  induction n with
  | zero => simp
  | succ n ih =>
    rw [Finset.sum_range_succ, Finset.sum_range_succ, ih]
    ring

/-- Exact telescoping of all primitive-weighted endpoint contributions.
The lower endpoint survives. The upper term vanishes by the actual source support theorem. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant4bf6254119105b7529ff6651ffec905748d26e0cda4c7b12be5c1568c41bd3e7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant4bf6254119105b7529ff6651ffec905748d26e0cda4c7b12be5c1568c41bd3e7.lean#L133).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4c407497b6a607f832537cf7881bf5c17da19ff9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
