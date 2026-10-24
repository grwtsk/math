# frequencyMultiplier

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b1769a15a07f4b743396045d5732f5151c4e6d6a166469dbe273bff06cddf662",
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
  "slug": "frequencymultiplier--88e921246061aed07620305b",
  "source": {
    "blob": "2af5761f6abb3ad38af4d2003ea5921dcf59d4c8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 142,
    "line": 114,
    "path": "GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/SourceWeightedMultiplier/Variantd849d31aa77d2c71700b3c34a4e238a273fd8138d5f611f7be961221db0bf9ff.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:88e921246061aed07620305bacaa73b11aec9491f82e012dd974bae67c4450fd",
  "verification": {
    "reference": "docs/verification/Analysis/HarmonicAnalysis/FourierAnalysis/SourceWeightedMultiplier/Variantd849d31aa77d2c71700b3c34a4e238a273fd8138d5f611f7be961221db0bf9ff.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b1769a15a07f4b743396045d5732f5151c4e6d6a166469dbe273bff06cddf662`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 114–142.

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

[Verification target and public status](../../../../../../../verification/Analysis/HarmonicAnalysis/FourierAnalysis/SourceWeightedMultiplier/Variantd849d31aa77d2c71700b3c34a4e238a273fd8138d5f611f7be961221db0bf9ff.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/SourceWeightedMultiplier/Variantd849d31aa77d2c71700b3c34a4e238a273fd8138d5f611f7be961221db0bf9ff.lean#L114).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2af5761f6abb3ad38af4d2003ea5921dcf59d4c8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
