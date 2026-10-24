# one_sub_inv_analyticAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e0673f54-86a7-970b-3289-aa17898b63c9",
  "kind": "theorem",
  "lexical_name": "one_sub_inv_analyticAt",
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
  "slug": "one-sub-inv-analyticat--715d998a8be990ad355f6b64",
  "source": {
    "blob": "6cbffb79e807abb3ae8f04dacfd6b59304da4a69",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 74,
    "line": 60,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/GeometricSeries/Variantd247dfa30c98fd222a8c558bdcdcd66c492cc886ab5cc84061b3e5034491e638.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:715d998a8be990ad355f6b6456021f2263e542e02953b16614160003ba4b6131",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/GeometricSeries/Variantd247dfa30c98fd222a8c558bdcdcd66c492cc886ab5cc84061b3e5034491e638.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e0673f54-86a7-970b-3289-aa17898b63c9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 60–74.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem one_sub_inv_analyticAt
    {z : ℂ} (hz : ‖z‖ < 1) :
    AnalyticAt ℂ (fun w : ℂ => (1 - w)⁻¹) z := by
  have hne : (1 : ℂ) - z ≠ 0 := by
    intro h
    have hz1 : z = 1 := (sub_eq_zero.mp h).symm
    rw [hz1] at hz
    simp at hz
  have hsub : AnalyticAt ℂ (fun w : ℂ => 1 - w) z :=
    analyticAt_const.sub analyticAt_id
  exact hsub.inv hne

/-- The resolvent `z ↦ (1 - z)⁻¹` is analytic on a neighbourhood of every
point of the open unit ball. Stated with `AnalyticOnNhd`, the modern Mathlib
name for the pointwise-`AnalyticAt` notion previously called `AnalyticOn`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/GeometricSeries/Variantd247dfa30c98fd222a8c558bdcdcd66c492cc886ab5cc84061b3e5034491e638.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/GeometricSeries/Variantd247dfa30c98fd222a8c558bdcdcd66c492cc886ab5cc84061b3e5034491e638.lean#L60).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6cbffb79e807abb3ae8f04dacfd6b59304da4a69` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
