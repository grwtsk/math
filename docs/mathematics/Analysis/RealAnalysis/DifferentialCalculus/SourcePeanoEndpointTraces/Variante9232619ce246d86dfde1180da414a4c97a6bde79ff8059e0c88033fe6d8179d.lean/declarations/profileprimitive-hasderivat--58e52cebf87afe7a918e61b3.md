# profilePrimitive_hasDerivAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:35db5214-72e5-7d37-c96f-a505af7f6ccd",
  "kind": "theorem",
  "lexical_name": "profilePrimitive_hasDerivAt",
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
  "slug": "profileprimitive-hasderivat--58e52cebf87afe7a918e61b3",
  "source": {
    "blob": "87f0e125d12576be57c477f038f9b11dfb8670ef",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 88,
    "line": 65,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourcePeanoEndpointTraces/Variante9232619ce246d86dfde1180da414a4c97a6bde79ff8059e0c88033fe6d8179d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:58e52cebf87afe7a918e61b3daf8f85ad8fb8f4e95a50c68a8d070b8f941b8d5",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourcePeanoEndpointTraces/Variante9232619ce246d86dfde1180da414a4c97a6bde79ff8059e0c88033fe6d8179d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:35db5214-72e5-7d37-c96f-a505af7f6ccd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 65–88.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem profilePrimitive_hasDerivAt (A t : ℝ) :
    HasDerivAt
      (fun s => Real.exp (s / 2) / sourceNormalization A * peanoNumerator A (s / A))
      (Real.exp (t / 2) / sourceNormalization A *
        (deriv (deriv (deriv overlapProfile)) (t / A) / A ^ 3 -
          deriv (deriv overlapProfile) (t / A) / (2 * A ^ 2) -
          deriv overlapProfile (t / A) / (4 * A) + overlapProfile (t / A) / 8)) t := by
  have hF1 : ContDiff ℝ 2 (deriv overlapProfile) := overlapProfile_contDiff.deriv'
  have hF2 : ContDiff ℝ 1 (deriv (deriv overlapProfile)) := hF1.deriv'
  have hd0 := ((overlapProfile_contDiff.differentiable (by norm_num) (t / A)).hasDerivAt.comp t
    ((hasDerivAt_id t).div_const A)).div_const 4
  have hd1 := ((hF1.differentiable (by norm_num) (t / A)).hasDerivAt.comp t
    ((hasDerivAt_id t).div_const A)).div_const A
  have hd2 := ((hF2.differentiable (by norm_num) (t / A)).hasDerivAt.comp t
    ((hasDerivAt_id t).div_const A)).div_const (A ^ 2)
  have he := (((hasDerivAt_id t).div_const 2).exp).div_const (sourceNormalization A)
  have hp := he.mul ((hd2.sub hd1).add hd0)
  change HasDerivAt _ _ t
  unfold peanoNumerator
  exact hp.congr_deriv (by
    dsimp only [id_eq, Pi.add_apply, Pi.sub_apply, Function.comp_def]
    simp only [div_eq_mul_inv, mul_inv_rev]
    ring)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourcePeanoEndpointTraces/Variante9232619ce246d86dfde1180da414a4c97a6bde79ff8059e0c88033fe6d8179d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourcePeanoEndpointTraces/Variante9232619ce246d86dfde1180da414a4c97a6bde79ff8059e0c88033fe6d8179d.lean#L65).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `87f0e125d12576be57c477f038f9b11dfb8670ef` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
