# deriv_deriv_thetaPhi_poly_integrableOn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6226c227-b131-24b8-49a2-4f3b01d034af",
  "kind": "theorem",
  "lexical_name": "deriv_deriv_thetaPhi_poly_integrableOn",
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
  "slug": "deriv-deriv-thetaphi-poly-integrableon--f9f6d8bf5d9860fd8dfcd20c",
  "source": {
    "blob": "6952e30af9f85ba807b223f26b3fde71be8d6866",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 172,
    "line": 159,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/45d3b12d070771a676f627beda82674cb59e4ed2e2cd922cc4d28e90030847d5HigherDerivative/Variant7f348461913203e11a3c45f218fc8a55804a03d73f69e0268c2cb2447af1d613.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f9f6d8bf5d9860fd8dfcd20c181a3738d96fd978de82e28b5c7dadc1a69b7013",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/45d3b12d070771a676f627beda82674cb59e4ed2e2cd922cc4d28e90030847d5HigherDerivative/Variant7f348461913203e11a3c45f218fc8a55804a03d73f69e0268c2cb2447af1d613.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6226c227-b131-24b8-49a2-4f3b01d034af`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 159–172.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
 theorem deriv_deriv_thetaPhi_poly_integrableOn (p : ℕ) :
    IntegrableOn (fun t => deriv (deriv thetaPhi) t * t ^ p) (Ici (0 : ℝ)) := by
  have h := ((((thetaGaussianSum_poly_integrableOn 4 9 p).const_mul (330 * Real.pi ^ 2)).sub
    ((thetaGaussianSum_poly_integrableOn 2 5 p).const_mul (75 * Real.pi))).sub
    ((thetaGaussianSum_poly_integrableOn 6 13 p).const_mul (224 * Real.pi ^ 3))).add
    ((thetaGaussianSum_poly_integrableOn 8 17 p).const_mul (32 * Real.pi ^ 4))
  apply h.congr
  filter_upwards [] with t
  dsimp only [Pi.sub_apply, Pi.add_apply]
  rw [deriv_deriv_thetaPhi_eq_raw, thetaPhiRawD2_eq_gaussians]
  ring

end
end FormalResearch.RiemannHypothesis.ThetaPositiveLift
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/45d3b12d070771a676f627beda82674cb59e4ed2e2cd922cc4d28e90030847d5HigherDerivative/Variant7f348461913203e11a3c45f218fc8a55804a03d73f69e0268c2cb2447af1d613.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/45d3b12d070771a676f627beda82674cb59e4ed2e2cd922cc4d28e90030847d5HigherDerivative/Variant7f348461913203e11a3c45f218fc8a55804a03d73f69e0268c2cb2447af1d613.lean#L159).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6952e30af9f85ba807b223f26b3fde71be8d6866` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
