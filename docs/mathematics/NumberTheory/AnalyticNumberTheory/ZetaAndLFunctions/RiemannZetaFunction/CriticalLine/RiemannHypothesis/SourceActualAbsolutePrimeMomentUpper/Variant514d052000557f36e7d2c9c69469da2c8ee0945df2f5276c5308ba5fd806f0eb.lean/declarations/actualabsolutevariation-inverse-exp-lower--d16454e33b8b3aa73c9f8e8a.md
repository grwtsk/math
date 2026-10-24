# actualAbsoluteVariation_inverse_exp_lower

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cd1c199a-aacb-b57d-0d9d-cc3018c5a7fb",
  "kind": "theorem",
  "lexical_name": "actualAbsoluteVariation_inverse_exp_lower",
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
  "slug": "actualabsolutevariation-inverse-exp-lower--d16454e33b8b3aa73c9f8e8a",
  "source": {
    "blob": "6b6311c5666847113d54849be57ca62e6391d467",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 141,
    "line": 126,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualAbsolutePrimeMomentUpper/Variant514d052000557f36e7d2c9c69469da2c8ee0945df2f5276c5308ba5fd806f0eb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d16454e33b8b3aa73c9f8e8a675a00392e4c6f84c0bb4bec9b6513d918c8f49c",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualAbsolutePrimeMomentUpper/Variant514d052000557f36e7d2c9c69469da2c8ee0945df2f5276c5308ba5fd806f0eb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cd1c199a-aacb-b57d-0d9d-cc3018c5a7fb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 126–141.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualAbsoluteVariation_inverse_exp_lower {A : ℝ} (hA : 1 ≤ A)
    (hV : 0 < actualClosedAbsolutePrimeMoment A) :
    A ^ 9 * Real.exp (-A) / actualAbsolutePrimeMomentUpperConstant ≤
      1 / actualClosedAbsolutePrimeMoment A := by
  have hA0 : 0 < A := by linarith
  have hD := actualAbsolutePrimeMomentUpperConstant_pos
  have hu := actualClosedAbsolutePrimeMoment_le hA
  have hp : 0 < actualAbsolutePrimeMomentUpperConstant * Real.exp A / A ^ 9 := by
    positivity
  calc
    _ = 1 / (actualAbsolutePrimeMomentUpperConstant * Real.exp A / A ^ 9) := by
      rw [Real.exp_neg]
      field_simp
    _ ≤ _ := div_le_div₀ (by norm_num : (0 : ℝ) ≤ 1) le_rfl hV hu

/-- Both reciprocal bounds concern the same literal complete source mass. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualAbsolutePrimeMomentUpper/Variant514d052000557f36e7d2c9c69469da2c8ee0945df2f5276c5308ba5fd806f0eb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualAbsolutePrimeMomentUpper/Variant514d052000557f36e7d2c9c69469da2c8ee0945df2f5276c5308ba5fd806f0eb.lean#L126).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6b6311c5666847113d54849be57ca62e6391d467` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
