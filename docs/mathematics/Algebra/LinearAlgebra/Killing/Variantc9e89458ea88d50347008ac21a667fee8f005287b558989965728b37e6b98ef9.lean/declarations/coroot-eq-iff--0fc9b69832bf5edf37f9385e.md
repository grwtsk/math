# coroot_eq_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a04df240-e3a6-4ce8-81d2-bba451213fc6",
  "kind": "lemma",
  "lexical_name": "coroot_eq_iff",
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
  "slug": "coroot-eq-iff--0fc9b69832bf5edf37f9385e",
  "source": {
    "blob": "78eb1326304ce4be9aa8b6d287ead692c0a10f83",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 535,
    "line": 514,
    "path": "GRWTSK/Algebra/LinearAlgebra/Killing/Variantc9e89458ea88d50347008ac21a667fee8f005287b558989965728b37e6b98ef9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0fc9b69832bf5edf37f9385e5225e5a2e226fc0ab9d1468339886ccfe913f4f0",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Killing/Variantc9e89458ea88d50347008ac21a667fee8f005287b558989965728b37e6b98ef9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a04df240-e3a6-4ce8-81d2-bba451213fc6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 514–535.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] lemma coroot_eq_iff (α β : Weight K H L) :
    coroot α = coroot β ↔ α = β := by
  refine ⟨fun hyp ↦ ?_, fun h ↦ by rw [h]⟩
  if hα : α.IsZero then
    have hβ : β.IsZero := by
      rw [← coroot_eq_zero_iff] at hα ⊢
      rwa [← hyp]
    ext
    simp [hα.eq, hβ.eq]
  else
    have hβ : β.IsNonZero := by
      contrapose! hα
      simp only [not_not, ← coroot_eq_zero_iff] at hα ⊢
      rwa [hyp]
    have : α.ker = β.ker := by
      rw [← orthogonal_span_coroot_eq_ker α, hyp, orthogonal_span_coroot_eq_ker]
    suffices (α : H →ₗ[K] K) = β by ext x; simpa using LinearMap.congr_fun this x
    apply Module.Dual.eq_of_ker_eq_of_apply_eq (coroot α) this
    · rw [Weight.toLinear_apply, root_apply_coroot hα, hyp, Weight.toLinear_apply,
        root_apply_coroot hβ]
    · simp [root_apply_coroot hα]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Killing/Variantc9e89458ea88d50347008ac21a667fee8f005287b558989965728b37e6b98ef9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Killing/Variantc9e89458ea88d50347008ac21a667fee8f005287b558989965728b37e6b98ef9.lean#L514).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `78eb1326304ce4be9aa8b6d287ead692c0a10f83` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
