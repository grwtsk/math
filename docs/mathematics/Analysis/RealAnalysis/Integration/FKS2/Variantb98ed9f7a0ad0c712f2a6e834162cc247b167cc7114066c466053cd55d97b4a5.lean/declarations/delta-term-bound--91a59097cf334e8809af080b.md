# delta_term_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c8e43022-bd6d-4d3d-721e-f12e354f555a",
  "kind": "lemma",
  "lexical_name": "delta_term_bound",
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
  "slug": "delta-term-bound--91a59097cf334e8809af080b",
  "source": {
    "blob": "4bc63a57afc465f27db885b1686b1f5e58591aef",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2165,
    "line": 2148,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/FKS2/Variantb98ed9f7a0ad0c712f2a6e834162cc247b167cc7114066c466053cd55d97b4a5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:91a59097cf334e8809af080b59956d8d4aac080bd33886d7e49a0e0806ce2cf4",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/FKS2/Variantb98ed9f7a0ad0c712f2a6e834162cc247b167cc7114066c466053cd55d97b4a5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c8e43022-bd6d-4d3d-721e-f12e354f555a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 2148–2165.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma delta_term_bound {A B C R x₀ x₁ x : ℝ}
    (hB : B ≥ 1 + C ^ 2 / (16 * R)) (hR : R > 0) (hA : A > 0)
    (hx1_gt1 : x₁ > 1) (hx : x ≥ x₁) (hx0_pos : x₀ > 0) (hlogx₀ : log x₀ > 0) :
    (log x / x) * (x₀ / log x₀) * δ x₀ ≤
    (x₀ * log x₁) / (admissible_bound A B C R x₁ * x₁ * log x₀) * δ x₀ *
    admissible_bound A B C R x := by
  have h1 := logx_over_x_bound hB hR hA hx1_gt1 hx
  have h2 : x₀ / log x₀ ≥ 0 := div_nonneg hx0_pos.le hlogx₀.le
  have h3 := delta_nonneg x₀
  calc (log x / x) * (x₀ / log x₀) * δ x₀
      ≤ ((log x₁ / (x₁ * admissible_bound A B C R x₁)) * admissible_bound A B C R x) * (x₀ / log x₀) * δ x₀ :=
        mul_le_mul_of_nonneg_right (mul_le_mul_of_nonneg_right h1 h2) h3
    _ = (x₀ * log x₁) / (admissible_bound A B C R x₁ * x₁ * log x₀) * δ x₀ * admissible_bound A B C R x := by ring

/-
Helper: Dawson function is monotone decreasing for large arguments (after ~0.924)
We use remark_after_corollary_11 which gives the existence of a maximum around 0.924
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/FKS2/Variantb98ed9f7a0ad0c712f2a6e834162cc247b167cc7114066c466053cd55d97b4a5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/FKS2/Variantb98ed9f7a0ad0c712f2a6e834162cc247b167cc7114066c466053cd55d97b4a5.lean#L2148).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4bc63a57afc465f27db885b1686b1f5e58591aef` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
