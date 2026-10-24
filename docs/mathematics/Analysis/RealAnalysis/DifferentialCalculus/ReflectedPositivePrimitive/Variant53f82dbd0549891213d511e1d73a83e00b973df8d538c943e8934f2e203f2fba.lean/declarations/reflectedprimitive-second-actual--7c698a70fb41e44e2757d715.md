# reflectedPrimitive_second_actual

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9a938382-70c5-45b9-145e-4276754516a0",
  "kind": "theorem",
  "lexical_name": "reflectedPrimitive_second_actual",
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
  "slug": "reflectedprimitive-second-actual--7c698a70fb41e44e2757d715",
  "source": {
    "blob": "9ad901de31d3f0c2ee317b4fa856704142f79688",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 83,
    "line": 64,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ReflectedPositivePrimitive/Variant53f82dbd0549891213d511e1d73a83e00b973df8d538c943e8934f2e203f2fba.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7c698a70fb41e44e2757d715d417ea8137b8d399068f25c12fc6a4bdac3a508e",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/ReflectedPositivePrimitive/Variant53f82dbd0549891213d511e1d73a83e00b973df8d538c943e8934f2e203f2fba.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9a938382-70c5-45b9-145e-4276754516a0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 64–83.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem reflectedPrimitive_second_actual {A y : ℝ} (hA : 1≤A)
    (hy : y∈Icc (0:ℝ) (2*A)) :
    deriv (deriv (reflectedPrimitive A)) y=
      Real.exp (-y/2)*A^9*sourceCorrelation explicitSecondDerivative A (2*A-y) := by
  have he : deriv (reflectedPrimitive A)=reflectedPrimitiveFirst A :=
    funext fun x => (reflectedPrimitive_hasDerivAt A x).deriv
  rw [he,(reflectedPrimitiveFirst_hasDerivAt A y).deriv,
    actual_source_correlation_polynomial hA
      (show 2*A-y∈Icc (0:ℝ) (2*A) by constructor <;> linarith [hy.1,hy.2])]
  have hx : Real.exp (-A)*Real.exp ((2*A-y)/2)=Real.exp (-y/2) := by
    rw [←Real.exp_add]
    congr 1
    ring
  dsimp [physicalScale]
  calc
    _ = (Real.exp (-A)*Real.exp ((2*A-y)/2))*A^9*
      (correlationPolynomial A (2*A-y)/sourceNormalization A) := by ring
    _ = _ := by rw [hx]

/-- Positivity carries to the genuine reflected primitive without estimating its curvature. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/ReflectedPositivePrimitive/Variant53f82dbd0549891213d511e1d73a83e00b973df8d538c943e8934f2e203f2fba.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ReflectedPositivePrimitive/Variant53f82dbd0549891213d511e1d73a83e00b973df8d538c943e8934f2e203f2fba.lean#L64).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9ad901de31d3f0c2ee317b4fa856704142f79688` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
