# deriv_thetaPhi_poly_integrableOn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3f54377a9ef9d2d9fe08c232e55985d011cb31a3",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 2,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a8/a88e17c2fbea5afd8497c9d8504a5f90581d75364df5c57e1aa830d5a1c5e481.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e85004ef-245b-bdac-9885-fbfba80ec453",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8b9cdd11-759e-d619-548b-3ea8b0b2cbf4",
  "kind": "theorem",
  "lexical_name": "deriv_thetaPhi_poly_integrableOn",
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
  "slug": "deriv-thetaphi-poly-integrableon--26b8a752dd7d268ba0cf3ebd",
  "source": {
    "blob": "3f54377a9ef9d2d9fe08c232e55985d011cb31a3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 12,
    "line": 2,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/A88e17c2fbea5afd8497c9d8504a5f90581d75364df5c57e1aa830d5a1c5e481B12Draft/Varianta88e17c2fbea5afd8497c9d8504a5f90581d75364df5c57e1aa830d5a1c5e481.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:26b8a752dd7d268ba0cf3ebd6c06eb64e4c39e87bac31a5a5d3791581f5f575b",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/A88e17c2fbea5afd8497c9d8504a5f90581d75364df5c57e1aa830d5a1c5e481B12Draft/Varianta88e17c2fbea5afd8497c9d8504a5f90581d75364df5c57e1aa830d5a1c5e481.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8b9cdd11-759e-d619-548b-3ea8b0b2cbf4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 2–12.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem deriv_thetaPhi_poly_integrableOn (p : ℕ) :
    IntegrableOn (fun t => deriv thetaPhi t * t ^ p) (Ici (0 : ℝ)) := by
  have h := ((thetaGaussianSum_poly_integrableOn 4 9 p).const_mul (30 * Real.pi ^ 2)).sub
    ((thetaGaussianSum_poly_integrableOn 2 5 p).const_mul (15 * Real.pi)) |>.sub
    ((thetaGaussianSum_poly_integrableOn 6 13 p).const_mul (8 * Real.pi ^ 3))
  convert! h using 1
  ext t
  rw [deriv_thetaPhi_eq_raw, thetaPhiRawD1_eq_gaussians]
  ring

/-- The exact shifted source derivative weight needed by the first tail ratio. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/A88e17c2fbea5afd8497c9d8504a5f90581d75364df5c57e1aa830d5a1c5e481B12Draft/Varianta88e17c2fbea5afd8497c9d8504a5f90581d75364df5c57e1aa830d5a1c5e481.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/A88e17c2fbea5afd8497c9d8504a5f90581d75364df5c57e1aa830d5a1c5e481B12Draft/Varianta88e17c2fbea5afd8497c9d8504a5f90581d75364df5c57e1aa830d5a1c5e481.lean#L2).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3f54377a9ef9d2d9fe08c232e55985d011cb31a3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
