# frequencyMultiplier

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3317c6a831e3bf6faf8fd5f78bdd2ec1c0877767e838573571c98701d54d864d",
  "kind": "def",
  "lexical_name": "frequencyMultiplier",
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
  "slug": "frequencymultiplier--7317eef94435f8788f75ce56",
  "source": {
    "blob": "2e0e111ac6ef54589a1fc8b14b8bf1b979a04a2d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 134,
    "line": 106,
    "path": "GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/SourceWeightedMultiplierLiteralCheck/Variant5afa63be4be6882a0c1bbe8a581fd92107e1c1dbefe434e7dea2a776e97dd5db.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7317eef94435f8788f75ce56e05e23563ee4c5306bbea71d3d4408ff2367d31d",
  "verification": {
    "reference": "docs/verification/Analysis/HarmonicAnalysis/FourierAnalysis/SourceWeightedMultiplierLiteralCheck/Variant5afa63be4be6882a0c1bbe8a581fd92107e1c1dbefe434e7dea2a776e97dd5db.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3317c6a831e3bf6faf8fd5f78bdd2ec1c0877767e838573571c98701d54d864d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 106–134.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def frequencyMultiplier (ε h : ℝ) (hε : 0 < ε) (hsmall : ε ≤ 1 / 4)
    (hh : 0 ≤ h) : FullH →L[ℂ] FullH :=
  LinearMap.mkContinuous
    { toFun := frequencyVector ε h hε hsmall hh
      map_add' := by
        intro f g
        apply Lp.ext
        filter_upwards [frequencyVector_ae ε h hε hsmall hh (f + g),
          frequencyVector_ae ε h hε hsmall hh f, frequencyVector_ae ε h hε hsmall hh g,
          Lp.coeFn_add f g,
          Lp.coeFn_add (frequencyVector ε h hε hsmall hh f)
            (frequencyVector ε h hε hsmall hh g)] with ξ hfg hf hg ha ho
        simp only [Pi.add_apply] at ha ho
        rw [hfg, ho, hf, hg, ha]
        exact mul_add _ _ _
      map_smul' := by
        intro c f
        apply Lp.ext
        filter_upwards [frequencyVector_ae ε h hε hsmall hh (c • f),
          frequencyVector_ae ε h hε hsmall hh f, Lp.coeFn_smul c f,
          Lp.coeFn_smul c (frequencyVector ε h hε hsmall hh f)] with ξ hcf hf hi ho
        simp only [Pi.smul_apply] at hi ho
        simp only [RingHom.id_apply]
        rw [hcf, ho, hf, hi]
        simp only [smul_eq_mul]
        ring }
    ((4 / 3 : ℝ) * Real.exp (1 / 4)) (frequencyVector_norm_le ε h hε hsmall hh)

/-- The continuous linear map retains the exact frequency product on AE representatives. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/HarmonicAnalysis/FourierAnalysis/SourceWeightedMultiplierLiteralCheck/Variant5afa63be4be6882a0c1bbe8a581fd92107e1c1dbefe434e7dea2a776e97dd5db.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/SourceWeightedMultiplierLiteralCheck/Variant5afa63be4be6882a0c1bbe8a581fd92107e1c1dbefe434e7dea2a776e97dd5db.lean#L106).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2e0e111ac6ef54589a1fc8b14b8bf1b979a04a2d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
