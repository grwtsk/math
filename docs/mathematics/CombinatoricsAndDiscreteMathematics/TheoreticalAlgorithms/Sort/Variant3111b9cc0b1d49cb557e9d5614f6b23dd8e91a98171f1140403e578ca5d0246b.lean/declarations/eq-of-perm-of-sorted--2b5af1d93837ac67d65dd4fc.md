# eq_of_perm_of_sorted

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c0b95519-8462-d067-95e8-f5f42bdf9fa9",
  "kind": "theorem",
  "lexical_name": "eq_of_perm_of_sorted",
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
  "slug": "eq-of-perm-of-sorted--2b5af1d93837ac67d65dd4fc",
  "source": {
    "blob": "a2849801dfccaa8fd66fa2985fee5e2cbc3d53ee",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 136,
    "line": 118,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sort/Variant3111b9cc0b1d49cb557e9d5614f6b23dd8e91a98171f1140403e578ca5d0246b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2b5af1d93837ac67d65dd4fc4b31c4516af3f770c21fe73f60f68b255cdc11e1",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sort/Variant3111b9cc0b1d49cb557e9d5614f6b23dd8e91a98171f1140403e578ca5d0246b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c0b95519-8462-d067-95e8-f5f42bdf9fa9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 118–136.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eq_of_perm_of_sorted [IsAntisymm α r] {l₁ l₂ : List α} (hp : l₁ ~ l₂) (hs₁ : Sorted r l₁)
    (hs₂ : Sorted r l₂) : l₁ = l₂ := by
  induction hs₁ generalizing l₂ with
  | nil => exact hp.nil_eq
  | @cons a l₁ h₁ hs₁ IH =>
    have : a ∈ l₂ := hp.subset mem_cons_self
    rcases append_of_mem this with ⟨u₂, v₂, rfl⟩
    have hp' := (perm_cons a).1 (hp.trans perm_middle)
    obtain rfl := IH hp' (hs₂.sublist <| by simp)
    change a :: u₂ ++ v₂ = u₂ ++ ([a] ++ v₂)
    rw [← append_assoc]
    congr
    have : ∀ x ∈ u₂, x = a := fun x m =>
      antisymm ((pairwise_append.1 hs₂).2.2 _ m a mem_cons_self) (h₁ _ (by simp [m]))
    rw [(@eq_replicate_iff _ a (length u₂ + 1) (a :: u₂)).2,
        (@eq_replicate_iff _ a (length u₂ + 1) (u₂ ++ [a])).2] <;>
        constructor <;>
      simp [iff_true_intro this, or_comm]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sort/Variant3111b9cc0b1d49cb557e9d5614f6b23dd8e91a98171f1140403e578ca5d0246b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sort/Variant3111b9cc0b1d49cb557e9d5614f6b23dd8e91a98171f1140403e578ca5d0246b.lean#L118).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a2849801dfccaa8fd66fa2985fee5e2cbc3d53ee` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
