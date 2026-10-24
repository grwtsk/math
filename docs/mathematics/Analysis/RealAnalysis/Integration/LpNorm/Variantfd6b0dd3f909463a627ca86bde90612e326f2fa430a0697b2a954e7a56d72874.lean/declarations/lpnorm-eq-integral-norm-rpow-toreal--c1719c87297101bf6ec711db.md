# lpNorm_eq_integral_norm_rpow_toReal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9af0781c-f41b-102a-6b98-73d354d7b16f",
  "kind": "lemma",
  "lexical_name": "lpNorm_eq_integral_norm_rpow_toReal",
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
  "slug": "lpnorm-eq-integral-norm-rpow-toreal--c1719c87297101bf6ec711db",
  "source": {
    "blob": "54c2683f0b3e0613206faa219f2b20000dce3f60",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 61,
    "line": 51,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/LpNorm/Variantfd6b0dd3f909463a627ca86bde90612e326f2fa430a0697b2a954e7a56d72874.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c1719c87297101bf6ec711db44e382a8a7984028badccb03cb2453a2d08a5949",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/LpNorm/Variantfd6b0dd3f909463a627ca86bde90612e326f2fa430a0697b2a954e7a56d72874.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9af0781c-f41b-102a-6b98-73d354d7b16f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 51–61.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma lpNorm_eq_integral_norm_rpow_toReal (hp₀ : p ≠ 0) (hp : p ≠ ∞)
    (hf : AEStronglyMeasurable f μ) :
    lpNorm f p μ = (∫ x, ‖f x‖ ^ p.toReal ∂μ) ^ p.toReal⁻¹ := by
  rw [← toReal_eLpNorm, eLpNorm_eq_lintegral_rpow_enorm_toReal hp₀ hp hf,
    ← ENNReal.toReal_rpow, ← integral_toReal]
  · simp [← ENNReal.toReal_rpow]
  · simp_rw [← ofReal_norm]
    borelize E
    fun_prop
  · exact .of_forall fun x ↦ ENNReal.rpow_lt_top_of_nonneg (by positivity) (by simp)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/LpNorm/Variantfd6b0dd3f909463a627ca86bde90612e326f2fa430a0697b2a954e7a56d72874.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/LpNorm/Variantfd6b0dd3f909463a627ca86bde90612e326f2fa430a0697b2a954e7a56d72874.lean#L51).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `54c2683f0b3e0613206faa219f2b20000dce3f60` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
