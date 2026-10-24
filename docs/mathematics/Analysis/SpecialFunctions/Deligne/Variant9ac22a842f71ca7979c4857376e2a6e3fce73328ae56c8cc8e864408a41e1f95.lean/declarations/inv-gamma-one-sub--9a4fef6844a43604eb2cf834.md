# inv_Gammaℝ_one_sub

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:335241da-4e7a-d6df-39ab-547159ebe484",
  "kind": "lemma",
  "lexical_name": "inv_Gammaℝ_one_sub",
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
  "slug": "inv-gamma-one-sub--9a4fef6844a43604eb2cf834",
  "source": {
    "blob": "da96f09ae001c43f6fa2f609f78cd49cc11775ea",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 184,
    "line": 170,
    "path": "GRWTSK/Analysis/SpecialFunctions/Deligne/Variant9ac22a842f71ca7979c4857376e2a6e3fce73328ae56c8cc8e864408a41e1f95.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9a4fef6844a43604eb2cf834fb5b3527f0d2c6a2ed726db8a74524e110f44677",
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

Occurrence: `result:335241da-4e7a-d6df-39ab-547159ebe484`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 170–184.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma inv_Gammaℝ_one_sub {s : ℂ} (hs : ∀ (n : ℕ), s ≠ -n) :
    (Gammaℝ (1 - s))⁻¹ = Gammaℂ s * cos (π * s / 2) * (Gammaℝ s)⁻¹ := by
  have h1 : Gammaℝ s ≠ 0 := by
    rw [Ne, Gammaℝ_eq_zero_iff, not_exists]
    intro n h
    specialize hs (2 * n)
    simp_all
  have h2 : ∀ (n : ℕ), s ≠ -(2 * ↑n + 1) := by
    intro n h
    specialize hs (2 * n + 1)
    simp_all
  rw [← Gammaℝ_div_Gammaℝ_one_sub h2, ← div_eq_mul_inv, div_right_comm, div_self h1, one_div]

/-- Formulation of reflection formula tailored to functional equations of L-functions of odd
Dirichlet characters. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/SpecialFunctions/Deligne/Variant9ac22a842f71ca7979c4857376e2a6e3fce73328ae56c8cc8e864408a41e1f95.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/SpecialFunctions/Deligne/Variant9ac22a842f71ca7979c4857376e2a6e3fce73328ae56c8cc8e864408a41e1f95.lean#L170).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `da96f09ae001c43f6fa2f609f78cd49cc11775ea` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
