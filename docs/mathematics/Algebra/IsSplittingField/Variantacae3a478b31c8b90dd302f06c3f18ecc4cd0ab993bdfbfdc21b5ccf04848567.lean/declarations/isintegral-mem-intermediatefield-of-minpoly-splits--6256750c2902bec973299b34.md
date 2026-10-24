# IsIntegral.mem_intermediateField_of_minpoly_splits

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:dba1ac8f-3402-cd24-d243-ef4c54089881",
  "kind": "theorem",
  "lexical_name": "IsIntegral.mem_intermediateField_of_minpoly_splits",
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
  "slug": "isintegral-mem-intermediatefield-of-minpoly-splits--6256750c2902bec973299b34",
  "source": {
    "blob": "20b1490a6e38e4ffd727b52f6575fdc7ccc7b97c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 169,
    "line": 165,
    "path": "GRWTSK/Algebra/IsSplittingField/Variantacae3a478b31c8b90dd302f06c3f18ecc4cd0ab993bdfbfdc21b5ccf04848567.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6256750c2902bec973299b34fb96df04e700a049346996df73e8d5f4183ae9c3",
  "verification": {
    "reference": "docs/verification/Algebra/IsSplittingField/Variantacae3a478b31c8b90dd302f06c3f18ecc4cd0ab993bdfbfdc21b5ccf04848567.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dba1ac8f-3402-cd24-d243-ef4c54089881`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 165–169.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsIntegral.mem_intermediateField_of_minpoly_splits {x : L} (int : IsIntegral K x)
    {F : IntermediateField K L} (h : Splits (algebraMap K F) (minpoly K x)) : x ∈ F := by
  rw [← F.fieldRange_val]; exact int.mem_range_algebraMap_of_minpoly_splits h

/-- Characterize `IsSplittingField` with `IntermediateField.adjoin` instead of `Algebra.adjoin`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/IsSplittingField/Variantacae3a478b31c8b90dd302f06c3f18ecc4cd0ab993bdfbfdc21b5ccf04848567.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/IsSplittingField/Variantacae3a478b31c8b90dd302f06c3f18ecc4cd0ab993bdfbfdc21b5ccf04848567.lean#L165).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `20b1490a6e38e4ffd727b52f6575fdc7ccc7b97c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
