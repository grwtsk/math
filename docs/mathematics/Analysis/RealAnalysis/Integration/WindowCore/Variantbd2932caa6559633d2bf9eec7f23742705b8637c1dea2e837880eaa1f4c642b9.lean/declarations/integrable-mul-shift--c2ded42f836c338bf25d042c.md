# integrable_mul_shift

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c1c00540-2116-f5c8-a82e-8d32b4afe360",
  "kind": "lemma",
  "lexical_name": "integrable_mul_shift",
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
  "slug": "integrable-mul-shift--c2ded42f836c338bf25d042c",
  "source": {
    "blob": "26cafb1155e10c7fab98568ead73e08cc2b3d778",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 387,
    "line": 382,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/WindowCore/Variantbd2932caa6559633d2bf9eec7f23742705b8637c1dea2e837880eaa1f4c642b9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c2ded42f836c338bf25d042c804598e0cca17f4c69b2a861359132254421ca34",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/WindowCore/Variantbd2932caa6559633d2bf9eec7f23742705b8637c1dea2e837880eaa1f4c642b9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c1c00540-2116-f5c8-a82e-8d32b4afe360`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 382–387.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma integrable_mul_shift (y : ℝ) : Integrable fun u => v u * v (u + y) := by
  have hc := hW.continuous
  refine Continuous.integrable_of_hasCompactSupport (by fun_prop) ?_
  exact HasCompactSupport.intro (K := Icc (-(L / 2)) (L / 2)) isCompact_Icc fun u hu => by
    rw [hW.eq_zero_of_not_mem hu, zero_mul]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/WindowCore/Variantbd2932caa6559633d2bf9eec7f23742705b8637c1dea2e837880eaa1f4c642b9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/WindowCore/Variantbd2932caa6559633d2bf9eec7f23742705b8637c1dea2e837880eaa1f4c642b9.lean#L382).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `26cafb1155e10c7fab98568ead73e08cc2b3d778` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
