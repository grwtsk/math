# thetaAModeSecond_summable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f095434b-fdc2-d211-6816-ea7727cc651c",
  "kind": "theorem",
  "lexical_name": "thetaAModeSecond_summable",
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
  "slug": "thetaamodesecond-summable--8f2516bd25fb79a41afc75d2",
  "source": {
    "blob": "17b699fc87d4882f0ad18076248869f9ba50eedc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 151,
    "line": 140,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant8d699468e8881bab5303282ac3753b7d133661875f15d9ff28e19bde17e24622.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8f2516bd25fb79a41afc75d2444116d31ace02ee85bbb537a6e2d22ecd3a3529",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant8d699468e8881bab5303282ac3753b7d133661875f15d9ff28e19bde17e24622.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f095434b-fdc2-d211-6816-ea7727cc651c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 140–151.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem thetaAModeSecond_summable (t : ℝ) :
    Summable (fun m => thetaAModeSecond m t) := by
  have h0 := (HurwitzKernelBounds.summable_f_nat 0 1 (Real.exp_pos (4 * t))).mul_left
    (Real.exp t)
  have h2 := (HurwitzKernelBounds.summable_f_nat 2 1 (Real.exp_pos (4 * t))).mul_left
    (24 * Real.pi * Real.exp (5 * t))
  have h4 := (HurwitzKernelBounds.summable_f_nat 4 1 (Real.exp_pos (4 * t))).mul_left
    (16 * Real.pi ^ 2 * Real.exp (9 * t))
  refine ((h0.sub h2).add h4).congr ?_
  intro m
  exact (thetaAModeSecond_eq_gaussians m t).symm

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant8d699468e8881bab5303282ac3753b7d133661875f15d9ff28e19bde17e24622.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant8d699468e8881bab5303282ac3753b7d133661875f15d9ff28e19bde17e24622.lean#L140).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `17b699fc87d4882f0ad18076248869f9ba50eedc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
