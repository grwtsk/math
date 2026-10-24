# fibRec_charPoly_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ab8ad233-453f-7670-4656-11eabfd768c0",
  "kind": "theorem",
  "lexical_name": "fibRec_charPoly_eq",
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
  "slug": "fibrec-charpoly-eq--7526b28683ec9463e2a2c9eb",
  "source": {
    "blob": "9f95b2f76b6dfe0e68695978737df7fa6f9bea98",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 168,
    "line": 161,
    "path": "GRWTSK/Algebra/UniversalAlgebra/GoldenRatio/Variant4ee776d51f8efcdaf5f359b98dc85fad76ecf48e28fadabb0c7c213849e2e051.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7526b28683ec9463e2a2c9eb3c3cb3b4b8837fc572c31103b0b5a0b816f02d0e",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/GoldenRatio/Variant4ee776d51f8efcdaf5f359b98dc85fad76ecf48e28fadabb0c7c213849e2e051.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ab8ad233-453f-7670-4656-11eabfd768c0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 161–168.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem fibRec_charPoly_eq {β : Type*} [CommRing β] :
    fibRec.charPoly = X ^ 2 - (X + (1 : β[X])) := by
  rw [fibRec, LinearRecurrence.charPoly]
  simp [Finset.sum_fin_eq_sum_range, Finset.sum_range_succ', ← smul_X_eq_monomial]

end Poly

/-- As expected, the Fibonacci sequence is a solution of `fibRec`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/GoldenRatio/Variant4ee776d51f8efcdaf5f359b98dc85fad76ecf48e28fadabb0c7c213849e2e051.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/GoldenRatio/Variant4ee776d51f8efcdaf5f359b98dc85fad76ecf48e28fadabb0c7c213849e2e051.lean#L161).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9f95b2f76b6dfe0e68695978737df7fa6f9bea98` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
