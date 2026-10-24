# exists_pos_variant

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:68f3b45e-18f2-b9f0-fed4-3d5d9efd31b2",
  "kind": "theorem",
  "lexical_name": "exists_pos_variant",
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
  "slug": "exists-pos-variant--abea7755089b1ee9e6a27f46",
  "source": {
    "blob": "9c19465a0f8df240d4c519037da398f00b4ffbce",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 326,
    "line": 302,
    "path": "GRWTSK/NumberTheory/DiophantineEquations/Pell/Variant670589932bf00ae3d3f563aeb3b09f51cfea4cef9425cadc8d287c710aa1f41e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:abea7755089b1ee9e6a27f46f513157641fa05b59ff147c4affc2c47fd253ce7",
  "verification": {
    "reference": "docs/verification/NumberTheory/DiophantineEquations/Pell/Variant670589932bf00ae3d3f563aeb3b09f51cfea4cef9425cadc8d287c710aa1f41e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:68f3b45e-18f2-b9f0-fed4-3d5d9efd31b2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 302–326.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_pos_variant (h₀ : 0 < d) (a : Solution₁ d) :
    ∃ b : Solution₁ d, 0 < b.x ∧ 0 ≤ b.y ∧ a ∈ ({b, b⁻¹, -b, -b⁻¹} : Set (Solution₁ d)) := by
  refine
        (lt_or_gt_of_ne (a.x_ne_zero h₀.le)).elim
          ((le_total 0 a.y).elim (fun hy hx => ⟨-a⁻¹, ?_, ?_, ?_⟩) fun hy hx => ⟨-a, ?_, ?_, ?_⟩)
          ((le_total 0 a.y).elim (fun hy hx => ⟨a, hx, hy, ?_⟩) fun hy hx => ⟨a⁻¹, hx, ?_, ?_⟩) <;>
      simp only [neg_neg, inv_inv, neg_inv, Set.mem_insert_iff, Set.mem_singleton_iff, true_or,
        eq_self_iff_true, x_neg, x_inv, y_neg, y_inv, neg_pos, neg_nonneg, or_true] <;>
    assumption

end Solution₁

section Existence

/-!
### Existence of nontrivial solutions
-/


variable {d : ℤ}

open Set Real

/-- If `d` is a positive integer that is not a square, then there is a nontrivial solution
to the Pell equation `x^2 - d*y^2 = 1`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/DiophantineEquations/Pell/Variant670589932bf00ae3d3f563aeb3b09f51cfea4cef9425cadc8d287c710aa1f41e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/DiophantineEquations/Pell/Variant670589932bf00ae3d3f563aeb3b09f51cfea4cef9425cadc8d287c710aa1f41e.lean#L302).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9c19465a0f8df240d4c519037da398f00b4ffbce` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
