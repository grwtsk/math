# source_projection

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6b87ddf9-38d4-88f7-dc50-ad0da081e7aa",
  "kind": "theorem",
  "lexical_name": "source_projection",
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
  "slug": "source-projection--cee68701c11d8d1dacbef79d",
  "source": {
    "blob": "fd585412f3ec903fa2d0502ce529096d625221b1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 54,
    "line": 36,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripCutoffEightJetFourteenHeight.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cee68701c11d8d1dacbef79d5ac4f7adcdd7aad61aebed6bbf64a2219f8a405b",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CriticalStripCutoffEightJetFourteenHeight.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6b87ddf9-38d4-88f7-dc50-ad0da081e7aa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 36–54.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem source_projection {s : ℂ} (hx : (1/2 : ℝ) ≤ s.re) (hx1 : s.re ≤ 1)
    (ht : (13 : ℝ) ≤ s.im) (ht1 : s.im ≤ 14) :
    (13/4 : ℝ) ≤ (poleNormalizedZeta s*(starRingEnd ℂ) (direction s)).re := by
  have hp := polynomial_projection_lower hx hx1 ht ht1
  have he := source_enclosed hx hx1 ht ht1
  have hd := (parameter_products hx hx1 ht ht1).1
  have hneg := Complex.re_le_norm (-((poleNormalizedZeta s-polynomial s)*
    (starRingEnd ℂ) (direction s)))
  simp only [Complex.neg_re,norm_neg,norm_mul,norm_star,direction_norm] at hneg
  have herr := mul_le_mul he hd (norm_nonneg _) (by norm_num : (0 : ℝ) ≤ 1/20)
  have hid : (poleNormalizedZeta s*(starRingEnd ℂ) (direction s)).re =
      projection s+((poleNormalizedZeta s-polynomial s)*
        (starRingEnd ℂ) (direction s)).re := by
    rw [projection,←rotated_projection]
    rw [←Complex.add_re]
    congr 1
    ring
  linarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CriticalStripCutoffEightJetFourteenHeight.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripCutoffEightJetFourteenHeight.lean#L36).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fd585412f3ec903fa2d0502ce529096d625221b1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
