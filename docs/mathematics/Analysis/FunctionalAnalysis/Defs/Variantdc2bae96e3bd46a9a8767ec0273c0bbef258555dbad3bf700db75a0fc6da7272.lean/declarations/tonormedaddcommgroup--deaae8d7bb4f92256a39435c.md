# toNormedAddCommGroup

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:166152f8c8db6f8348df2e53ab0b986031b0a2812b372d881b03e4856e656232",
  "kind": "def",
  "lexical_name": "toNormedAddCommGroup",
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
  "slug": "tonormedaddcommgroup--deaae8d7bb4f92256a39435c",
  "source": {
    "blob": "5b53a66066a81ec017b5e50074c6e7d68d44b972",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 475,
    "line": 456,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/Defs/Variantdc2bae96e3bd46a9a8767ec0273c0bbef258555dbad3bf700db75a0fc6da7272.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:deaae8d7bb4f92256a39435c69f2342bfbd44fddfe25b645999346abef4b4d53",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/Defs/Variantdc2bae96e3bd46a9a8767ec0273c0bbef258555dbad3bf700db75a0fc6da7272.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:166152f8c8db6f8348df2e53ab0b986031b0a2812b372d881b03e4856e656232`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 456–475.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def toNormedAddCommGroup : NormedAddCommGroup F :=
  AddGroupNorm.toNormedAddCommGroup
    { toFun := fun x => √(re ⟪x, x⟫)
      map_zero' := by simp only [sqrt_zero, inner_zero_right, map_zero]
      neg' := fun x => by simp only [inner_neg_left, neg_neg, inner_neg_right]
      add_le' := fun x y => by
        have h₁ : ‖⟪x, y⟫‖ ≤ ‖x‖ * ‖y‖ := norm_inner_le_norm _ _
        have h₂ : re ⟪x, y⟫ ≤ ‖⟪x, y⟫‖ := re_le_norm _
        have h₃ : re ⟪x, y⟫ ≤ ‖x‖ * ‖y‖ := h₂.trans h₁
        have h₄ : re ⟪y, x⟫ ≤ ‖x‖ * ‖y‖ := by rwa [← inner_conj_symm, conj_re]
        have : ‖x + y‖ * ‖x + y‖ ≤ (‖x‖ + ‖y‖) * (‖x‖ + ‖y‖) := by
          simp only [← inner_self_eq_norm_mul_norm, inner_add_add_self, mul_add, mul_comm, map_add]
          linarith
        exact nonneg_le_nonneg_of_sq_le_sq (add_nonneg (sqrt_nonneg _) (sqrt_nonneg _)) this
      eq_zero_of_map_eq_zero' := fun _ hx =>
        normSq_eq_zero.1 <| (sqrt_eq_zero inner_self_nonneg).1 hx }

attribute [local instance] toNormedAddCommGroup

/-- Normed space structure constructed from an `InnerProductSpace.Core` structure -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/Defs/Variantdc2bae96e3bd46a9a8767ec0273c0bbef258555dbad3bf700db75a0fc6da7272.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/Defs/Variantdc2bae96e3bd46a9a8767ec0273c0bbef258555dbad3bf700db75a0fc6da7272.lean#L456).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5b53a66066a81ec017b5e50074c6e7d68d44b972` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
