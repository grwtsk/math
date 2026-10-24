# deriv_thetaPhi_poly_integrableOn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f8410191-207a-07c7-4be8-3b79581c199b",
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
  "slug": "deriv-thetaphi-poly-integrableon--ae544923ec7d50ecc1c0eb81",
  "source": {
    "blob": "478be943face0645270a54068bec22cb720303bf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 20,
    "line": 10,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/A88e17c2fbea5afd8497c9d8504a5f90581d75364df5c57e1aa830d5a1c5e481B12Draft/Variant6a9befdc117b4cf8df4fb7d50b20c20ebfb7da305fecec3e096b45ee90337f41.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ae544923ec7d50ecc1c0eb81db2e5934d27b7e19d3d4b74480bc641c881d8558",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/A88e17c2fbea5afd8497c9d8504a5f90581d75364df5c57e1aa830d5a1c5e481B12Draft/Variant6a9befdc117b4cf8df4fb7d50b20c20ebfb7da305fecec3e096b45ee90337f41.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f8410191-207a-07c7-4be8-3b79581c199b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 10–20.

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

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/A88e17c2fbea5afd8497c9d8504a5f90581d75364df5c57e1aa830d5a1c5e481B12Draft/Variant6a9befdc117b4cf8df4fb7d50b20c20ebfb7da305fecec3e096b45ee90337f41.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/A88e17c2fbea5afd8497c9d8504a5f90581d75364df5c57e1aa830d5a1c5e481B12Draft/Variant6a9befdc117b4cf8df4fb7d50b20c20ebfb7da305fecec3e096b45ee90337f41.lean#L10).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `478be943face0645270a54068bec22cb720303bf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
