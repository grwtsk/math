# isNoetherian_iff_fg_wellFounded

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b5e11dc60fa86eacb1d9e27c38ebef2c0e2d6006",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 132,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1b/1b33023bd9721933d624834ffc61055f1c824df52fa5f043b0b6f75cb93a9cfa.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c331170e-76e1-8072-3522-bc2463f5d077",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7d0c14e0-ac79-ff3c-4d44-ac135ec20651",
  "kind": "theorem",
  "lexical_name": "isNoetherian_iff_fg_wellFounded",
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
  "slug": "isnoetherian-iff-fg-wellfounded--7214c2fd8f6928c4c6a69b01",
  "source": {
    "blob": "b5e11dc60fa86eacb1d9e27c38ebef2c0e2d6006",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 155,
    "line": 132,
    "path": "GRWTSK/Algebra/LinearAlgebra/Defs/Variant1b33023bd9721933d624834ffc61055f1c824df52fa5f043b0b6f75cb93a9cfa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7214c2fd8f6928c4c6a69b018afe52548e463ca115540884948ce27eb6835c55",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Defs/Variant1b33023bd9721933d624834ffc61055f1c824df52fa5f043b0b6f75cb93a9cfa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7d0c14e0-ac79-ff3c-4d44-ac135ec20651`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 132–155.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isNoetherian_iff_fg_wellFounded :
    IsNoetherian R M ↔ WellFoundedGT { N : Submodule R M // N.FG } := by
  let α := { N : Submodule R M // N.FG }
  constructor
  · intro H
    let f : α ↪o Submodule R M := OrderEmbedding.subtype _
    exact OrderEmbedding.wellFoundedLT f.dual
  · intro H
    constructor
    intro N
    obtain ⟨⟨N₀, h₁⟩, e : N₀ ≤ N, h₂⟩ :=
      WellFounded.has_min H.wf { N' : α | N'.1 ≤ N } ⟨⟨⊥, Submodule.fg_bot⟩, @bot_le _ _ _ N⟩
    convert h₁
    refine (e.antisymm ?_).symm
    by_contra h₃
    obtain ⟨x, hx₁ : x ∈ N, hx₂ : x ∉ N₀⟩ := Set.not_subset.mp h₃
    apply hx₂
    rw [eq_of_le_of_not_lt (le_sup_right : N₀ ≤ _) (h₂
      ⟨_, Submodule.FG.sup ⟨{x}, by rw [Finset.coe_singleton]⟩ h₁⟩ <|
      sup_le ((Submodule.span_singleton_le_iff_mem _ _).mpr hx₁) e)]
    exact (le_sup_left : (R ∙ x) ≤ _) (Submodule.mem_span_singleton_self _)

/-- A module is Noetherian iff every nonempty set of submodules has a maximal submodule among them.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Defs/Variant1b33023bd9721933d624834ffc61055f1c824df52fa5f043b0b6f75cb93a9cfa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Defs/Variant1b33023bd9721933d624834ffc61055f1c824df52fa5f043b0b6f75cb93a9cfa.lean#L132).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b5e11dc60fa86eacb1d9e27c38ebef2c0e2d6006` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
