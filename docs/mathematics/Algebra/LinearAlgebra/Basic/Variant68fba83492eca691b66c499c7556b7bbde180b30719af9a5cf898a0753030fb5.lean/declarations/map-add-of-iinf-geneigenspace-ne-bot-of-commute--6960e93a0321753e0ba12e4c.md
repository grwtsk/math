# map_add_of_iInf_genEigenspace_ne_bot_of_commute

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:55aad62d-6754-e62a-f35f-31257cebd644",
  "kind": "lemma",
  "lexical_name": "map_add_of_iInf_genEigenspace_ne_bot_of_commute",
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
  "slug": "map-add-of-iinf-geneigenspace-ne-bot-of-commute--6960e93a0321753e0ba12e4c",
  "source": {
    "blob": "618cc0f141aa2442be86674c4b73902ead7ebd0a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 925,
    "line": 908,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant68fba83492eca691b66c499c7556b7bbde180b30719af9a5cf898a0753030fb5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6960e93a0321753e0ba12e4cd28736694ef26ceb74e23bff07e50005773c9745",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variant68fba83492eca691b66c499c7556b7bbde180b30719af9a5cf898a0753030fb5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:55aad62d-6754-e62a-f35f-31257cebd644`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 908–925.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma map_add_of_iInf_genEigenspace_ne_bot_of_commute [IsDomain R] [IsTorsionFree R M]
    {L F : Type*} [Add L] [FunLike F L (End R M)] [AddHomClass F L (End R M)] (f : F)
    (μ : L → R) (k : ℕ∞) (h_ne : ⨅ x, (f x).genEigenspace (μ x) k ≠ ⊥)
    (h : ∀ x y, Commute (f x) (f y)) (x y : L) :
    μ (x + y) = μ x + μ y := by
  by_contra contra
  let g : L → Submodule R M := fun x ↦ (f x).genEigenspace (μ x) k
  have : ⨅ x, g x ≤ (g x ⊓ g y) ⊓ g (x + y) :=
    le_inf_iff.mpr ⟨le_inf_iff.mpr ⟨iInf_le g x, iInf_le g y⟩, iInf_le g (x + y)⟩
  refine h_ne <| eq_bot_iff.mpr (le_trans this (disjoint_iff_inf_le.mp ?_))
  apply Disjoint.mono_left (genEigenspace_inf_le_add (f x) (f y) (μ x) (μ y) k k (h x y))
  simp only [g, map_add]
  exact disjoint_genEigenspace (f x + f y) (Ne.symm contra) _ k

section Arithmetic

variable {f : End R M} {μ ρ : R}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variant68fba83492eca691b66c499c7556b7bbde180b30719af9a5cf898a0753030fb5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variant68fba83492eca691b66c499c7556b7bbde180b30719af9a5cf898a0753030fb5.lean#L908).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `618cc0f141aa2442be86674c4b73902ead7ebd0a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
