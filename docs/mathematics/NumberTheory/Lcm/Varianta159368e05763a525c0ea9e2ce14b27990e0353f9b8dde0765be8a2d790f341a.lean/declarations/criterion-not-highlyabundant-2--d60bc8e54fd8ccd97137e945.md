# Criterion.not_highlyAbundant_2

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6864332d-34d4-2177-e139-140c8887dca1",
  "kind": "theorem",
  "lexical_name": "Criterion.not_highlyAbundant_2",
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
  "slug": "criterion-not-highlyabundant-2--d60bc8e54fd8ccd97137e945",
  "source": {
    "blob": "5cb9afb3bbcc8b6114129c1b549a9f2ad5d98440",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 784,
    "line": 758,
    "path": "GRWTSK/NumberTheory/Lcm/Varianta159368e05763a525c0ea9e2ce14b27990e0353f9b8dde0765be8a2d790f341a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d60bc8e54fd8ccd97137e9453941b49d32f9dc6f13773dd596db125bba684b3c",
  "verification": {
    "reference": "docs/verification/NumberTheory/Lcm/Varianta159368e05763a525c0ea9e2ce14b27990e0353f9b8dde0765be8a2d790f341a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6864332d-34d4-2177-e139-140c8887dca1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 758–784.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Criterion.not_highlyAbundant_2 (c : Criterion)
    (h : σnorm c.M ≥ σnorm c.L' * (∏ i, (1 + 1 / (c.p i * (c.p i + 1 : ℝ)))) *
    (1 + (3 : ℝ) / (8 * c.n))) : ¬HighlyAbundant (L c.n) := by
  refine c.not_highlyAbundant_1 ?_
  have hL'_pos : 0 < σnorm c.L' := by
    rw [σnorm]; exact div_pos (cast_pos.mpr <| by rw [σ, sigma_pos_iff]; exact c.L'_pos)
      (cast_pos.mpr c.L'_pos)
  have hR_pos : (0 : ℝ) < 1 - 4 * (∏ i, c.p i) / (∏ i, c.q i) := by
    rw [sub_pos, div_lt_one (cast_pos.mpr <| prod_pos fun i _ ↦ (c.hq i).pos)]
    exact_mod_cast c.prod_p_le_prod_q
  have hcrit : (∏ i, (1 + (1 : ℝ) / c.q i)) ≤ (∏ i, (1 + 1 / (c.p i * (c.p i + 1 : ℝ)))) *
      (1 + 3 / (8 * c.n)) * (1 - (4 : ℝ) * (∏ i, c.p i) / (∏ i, c.q i)) := by
    convert c.h_crit using 3; simp only [prod_natCast]
  rw [c.σnorm_ln_eq]
  calc σnorm c.L' * ∏ i, (1 + (1 : ℝ) / c.q i)
    ≤ σnorm c.L' * ((∏ i, (1 + 1 / (c.p i * (c.p i + 1 : ℝ)))) * (1 + 3 / (8 * c.n)) *
        (1 - (4 : ℝ) * (∏ i, c.p i) / (∏ i, c.q i))) :=
          mul_le_mul_of_nonneg_left hcrit hL'_pos.le
  _ = σnorm c.L' * (∏ i, (1 + 1 / (c.p i * (c.p i + 1 : ℝ)))) * (1 + 3 / (8 * c.n)) *
    (1 - (4 : ℝ) * (∏ i, c.p i) / (∏ i, c.q i)) := by ring
  _ ≤ σnorm c.M * (1 - (4 : ℝ) * (∏ i, c.p i) / (∏ i, c.q i)) :=
    mul_le_mul_of_nonneg_right h hR_pos.le

blueprint_comment /--
\subsection{Conclusion of the criterion}
-/

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Lcm/Varianta159368e05763a525c0ea9e2ce14b27990e0353f9b8dde0765be8a2d790f341a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Lcm/Varianta159368e05763a525c0ea9e2ce14b27990e0353f9b8dde0765be8a2d790f341a.lean#L758).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5cb9afb3bbcc8b6114129c1b549a9f2ad5d98440` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
