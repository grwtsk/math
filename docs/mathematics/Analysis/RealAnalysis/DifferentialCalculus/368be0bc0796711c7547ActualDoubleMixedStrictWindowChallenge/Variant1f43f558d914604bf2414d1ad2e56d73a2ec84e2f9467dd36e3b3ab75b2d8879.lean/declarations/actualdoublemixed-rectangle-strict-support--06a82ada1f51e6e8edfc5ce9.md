# actualDoubleMixed_rectangle_strict_support

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f29765d0-9039-1c97-c688-525ff116fe48",
  "kind": "theorem",
  "lexical_name": "actualDoubleMixed_rectangle_strict_support",
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
  "slug": "actualdoublemixed-rectangle-strict-support--06a82ada1f51e6e8edfc5ce9",
  "source": {
    "blob": "80649fdf13926ea0611037005ed0b1ae228351a4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 131,
    "line": 120,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/368be0bc0796711c7547ActualDoubleMixedStrictWindowChallenge/Variant1f43f558d914604bf2414d1ad2e56d73a2ec84e2f9467dd36e3b3ab75b2d8879.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:06a82ada1f51e6e8edfc5ce9486662f38040e90f3bc751f2d89335577fe00e84",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/368be0bc0796711c7547ActualDoubleMixedStrictWindowChallenge/Variant1f43f558d914604bf2414d1ad2e56d73a2ec84e2f9467dd36e3b3ab75b2d8879.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f29765d0-9039-1c97-c688-525ff116fe48`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 120–131.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualDoubleMixed_rectangle_strict_support {A t u : ℝ} (hA : 25600 ≤ A)
    (ht : Real.log (vaughanCutoff A : ℝ) ≤ t)
    (ht1 : t ≤ Real.log (vaughanCutoff A : ℝ) + 1)
    (hu : ((vaughanCutoff A + 1 : ℕ) : ℝ) ≤ u)
    (hu2 : u ≤ ((vaughanCutoff A + 2 : ℕ) : ℝ)) :
    Real.exp t * u < (sourceKernelCutoff A : ℝ) ∧
      (1 / 64 : ℝ) ≤
        deriv (fun y => deriv (fun x => actualLogMixedDensity A x y) t) (Real.log u) :=
  ⟨actual_strict_real_rectangle hA ⟨ht, ht1⟩ ⟨hu, hu2⟩,
    actualDoubleMixed_rectangle_density_lower hA ht ht1 hu hu2⟩

/-- The actual physical mixed coefficient cannot use the curvature-only five budget here. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/368be0bc0796711c7547ActualDoubleMixedStrictWindowChallenge/Variant1f43f558d914604bf2414d1ad2e56d73a2ec84e2f9467dd36e3b3ab75b2d8879.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/368be0bc0796711c7547ActualDoubleMixedStrictWindowChallenge/Variant1f43f558d914604bf2414d1ad2e56d73a2ec84e2f9467dd36e3b3ab75b2d8879.lean#L120).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `80649fdf13926ea0611037005ed0b1ae228351a4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
