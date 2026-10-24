# weight_deriv_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a65b4f0a-de91-fce0-f3a0-898a7a88574e",
  "kind": "theorem",
  "lexical_name": "weight_deriv_integrable",
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
  "slug": "weight-deriv-integrable--73a047549430a9a582ade9d1",
  "source": {
    "blob": "670ab0773c338a57347e5a10607467bf40ecf0f8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 134,
    "line": 117,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/MobiusPrefixTiltAudit/Variant357b931221af5bc80533c4ec1a91571bd04a11e31aa570a0578a1ef4e27c3903.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:73a047549430a9a582ade9d1cc4826cf34d843f576c85828084b1bd069a107d0",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/MobiusPrefixTiltAudit/Variant357b931221af5bc80533c4ec1a91571bd04a11e31aa570a0578a1ef4e27c3903.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a65b4f0a-de91-fce0-f3a0-898a7a88574e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 117–134.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem weight_deriv_integrable (X : ℕ) (z : ℂ) :
    IntegrableOn (deriv (powerWeight z)) (Set.Icc (1 : ℝ) X) := by
  have hl : ContinuousOn (fun x : ℝ => (Real.log x : ℂ)) (Set.Icc (1 : ℝ) X) :=
    Complex.continuous_ofReal.comp_continuousOn (Real.continuousOn_log.mono
      (fun x hx => ne_of_gt (lt_of_lt_of_le zero_lt_one hx.1)))
  have hc : ContinuousOn (fun x : ℝ => (1 / 2 - z) * powerWeight z x / (x : ℂ))
      (Set.Icc (1 : ℝ) X) := by
    unfold powerWeight
    exact (continuousOn_const.mul (Complex.continuous_exp.comp_continuousOn
      (continuousOn_const.mul hl))).div Complex.continuous_ofReal.continuousOn
      (fun x hx => Complex.ofReal_ne_zero.mpr
        (ne_of_gt (lt_of_lt_of_le zero_lt_one hx.1)))
  apply hc.integrableOn_Icc.congr_fun
  · intro x hx
    exact (powerWeight_deriv z x (lt_of_lt_of_le zero_lt_one hx.1)).symm
  · exact measurableSet_Icc

/-- The actual reciprocal-prefix product is genuinely integrable on the full finite interval. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/MobiusPrefixTiltAudit/Variant357b931221af5bc80533c4ec1a91571bd04a11e31aa570a0578a1ef4e27c3903.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/MobiusPrefixTiltAudit/Variant357b931221af5bc80533c4ec1a91571bd04a11e31aa570a0578a1ef4e27c3903.lean#L117).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `670ab0773c338a57347e5a10607467bf40ecf0f8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
