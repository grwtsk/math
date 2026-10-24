# weighted_nonneg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:25c04f76-6cfb-c2f4-3a4e-58a4c00b431d",
  "kind": "theorem",
  "lexical_name": "weighted_nonneg",
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
  "slug": "weighted-nonneg--4777f2e7958e5bcd8084e9d0",
  "source": {
    "blob": "0908809aa8054e335720ced123d7c757db885040",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 92,
    "line": 83,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/F48f3a8d3d93dd32f6449fe7fb420de08accb009928f55c2af3a9a8e18f295f7Ratio/Variant3081c989ff31760b49404a85791169276d0873ae548813988e69fbc2f0c3b781.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4777f2e7958e5bcd8084e9d0a198c9125cabf6674c742972954d2dae8e2b38c4",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/F48f3a8d3d93dd32f6449fe7fb420de08accb009928f55c2af3a9a8e18f295f7Ratio/Variant3081c989ff31760b49404a85791169276d0873ae548813988e69fbc2f0c3b781.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:25c04f76-6cfb-c2f4-3a4e-58a4c00b431d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 83–92.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem weighted_nonneg
    (hd : ∀ u : ℝ, 0 ≤ u → DifferentiableAt ℝ thetaPhi u)
    (hanti : AntitoneOn (fun t => deriv thetaPhi t / thetaPhi t) (Ici (0 : ℝ)))
    {t : ℝ} (ht : 0 ≤ t)
    (hi : IntegrableOn (fun u => deriv thetaPhi u * (u - t)) (Ici t)) :
    0 ≤ thetaTail 1 t * thetaPhi t + thetaTail 2 t * deriv thetaPhi t := by
  rw [weighted_identity hd ht hi]
  exact setIntegral_nonneg measurableSet_Ici fun u hu =>
    mul_nonneg (sub_nonneg.mpr hu) (cross_nonneg hanti ht hu)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/F48f3a8d3d93dd32f6449fe7fb420de08accb009928f55c2af3a9a8e18f295f7Ratio/Variant3081c989ff31760b49404a85791169276d0873ae548813988e69fbc2f0c3b781.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/F48f3a8d3d93dd32f6449fe7fb420de08accb009928f55c2af3a9a8e18f295f7Ratio/Variant3081c989ff31760b49404a85791169276d0873ae548813988e69fbc2f0c3b781.lean#L83).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0908809aa8054e335720ced123d7c757db885040` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
