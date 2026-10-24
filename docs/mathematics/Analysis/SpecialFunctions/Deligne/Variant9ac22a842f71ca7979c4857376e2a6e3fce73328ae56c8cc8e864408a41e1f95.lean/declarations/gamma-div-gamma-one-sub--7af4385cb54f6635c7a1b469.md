# Gammaℝ_div_Gammaℝ_one_sub

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:59d90437-e3db-bfb3-dc93-75d92279bc49",
  "kind": "lemma",
  "lexical_name": "Gammaℝ_div_Gammaℝ_one_sub",
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
  "slug": "gamma-div-gamma-one-sub--7af4385cb54f6635c7a1b469",
  "source": {
    "blob": "da96f09ae001c43f6fa2f609f78cd49cc11775ea",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 169,
    "line": 155,
    "path": "GRWTSK/Analysis/SpecialFunctions/Deligne/Variant9ac22a842f71ca7979c4857376e2a6e3fce73328ae56c8cc8e864408a41e1f95.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7af4385cb54f6635c7a1b469cc975597edabe6cf0bb2de4236505eec490e7844",
  "verification": {
    "reference": "docs/verification/Analysis/SpecialFunctions/Deligne/Variant9ac22a842f71ca7979c4857376e2a6e3fce73328ae56c8cc8e864408a41e1f95.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:59d90437-e3db-bfb3-dc93-75d92279bc49`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 155–169.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Gammaℝ_div_Gammaℝ_one_sub {s : ℂ} (hs : ∀ (n : ℕ), s ≠ -(2 * n + 1)) :
    Gammaℝ s / Gammaℝ (1 - s) = Gammaℂ s * cos (π * s / 2) := by
  have : Gammaℝ (s + 1) ≠ 0 := by
    simpa only [Ne, Gammaℝ_eq_zero_iff, not_exists, ← eq_sub_iff_add_eq,
      sub_eq_add_neg, ← neg_add]
  calc Gammaℝ s / Gammaℝ (1 - s)
  _ = (Gammaℝ s * Gammaℝ (s + 1)) / (Gammaℝ (1 - s) * Gammaℝ (1 + s)) := by
    rw [add_comm 1 s, mul_comm (Gammaℝ (1 - s)) (Gammaℝ (s + 1)), ← div_div,
      mul_div_cancel_right₀ _ this]
  _ = (2 * (2 * π) ^ (-s) * Gamma s) / ((cos (π * s / 2))⁻¹) := by
    rw [Gammaℝ_one_sub_mul_Gammaℝ_one_add, Gammaℝ_mul_Gammaℝ_add_one, Gammaℂ_def]
  _ = _ := by rw [Gammaℂ_def, div_eq_mul_inv, inv_inv]

/-- Formulation of reflection formula tailored to functional equations of L-functions of even
Dirichlet characters (including Riemann zeta). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/SpecialFunctions/Deligne/Variant9ac22a842f71ca7979c4857376e2a6e3fce73328ae56c8cc8e864408a41e1f95.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/SpecialFunctions/Deligne/Variant9ac22a842f71ca7979c4857376e2a6e3fce73328ae56c8cc8e864408a41e1f95.lean#L155).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `da96f09ae001c43f6fa2f609f78cd49cc11775ea` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
