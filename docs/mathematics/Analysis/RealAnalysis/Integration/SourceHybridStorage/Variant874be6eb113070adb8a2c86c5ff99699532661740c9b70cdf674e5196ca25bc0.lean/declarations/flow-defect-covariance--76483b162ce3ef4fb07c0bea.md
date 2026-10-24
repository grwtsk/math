# flow_defect_covariance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:552e78d9-2216-9f5a-8e45-776c3868a0d4",
  "kind": "theorem",
  "lexical_name": "flow_defect_covariance",
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
  "slug": "flow-defect-covariance--76483b162ce3ef4fb07c0bea",
  "source": {
    "blob": "643fa245f70ff184fcfe69841fc69cedf5bc0697",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 156,
    "line": 138,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceHybridStorage/Variant874be6eb113070adb8a2c86c5ff99699532661740c9b70cdf674e5196ca25bc0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:76483b162ce3ef4fb07c0beaf932b6372a8648968ce0671f90dd312b84ae2ced",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceHybridStorage/Variant874be6eb113070adb8a2c86c5ff99699532661740c9b70cdf674e5196ca25bc0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:552e78d9-2216-9f5a-8e45-776c3868a0d4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 138–156.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem flow_defect_covariance (L P Pd B T D K : Matrix n n ℂ)
    (hKT : K * T = 1) :
    Kᴴ * L * K + transformedStorageDerivative P Pd D K +
      (D * K + T * B * K)ᴴ * (Kᴴ * P * K) +
      (Kᴴ * P * K) * (D * K + T * B * K) =
        Kᴴ * (L + Pd + Bᴴ * P + P * B) * K := by
  have hstar : Tᴴ * Kᴴ = 1 := by
    rw [← Matrix.conjTranspose_mul, hKT, Matrix.conjTranspose_one]
  unfold transformedStorageDerivative
  simp only [Matrix.conjTranspose_add, Matrix.conjTranspose_mul,
    Matrix.conjTranspose_neg]
  simp only [Matrix.add_mul, Matrix.mul_add, Matrix.neg_mul, Matrix.mul_neg,
    Matrix.mul_assoc]
  simp only [← Matrix.mul_assoc Tᴴ Kᴴ, hstar, Matrix.one_mul,
    ← Matrix.mul_assoc K T, hKT, Matrix.one_mul]
  abel

omit [DecidableEq n] in
/-- A reset can be rectangular; both before/after chart changes are retained. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceHybridStorage/Variant874be6eb113070adb8a2c86c5ff99699532661740c9b70cdf674e5196ca25bc0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceHybridStorage/Variant874be6eb113070adb8a2c86c5ff99699532661740c9b70cdf674e5196ca25bc0.lean#L138).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `643fa245f70ff184fcfe69841fc69cedf5bc0697` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
