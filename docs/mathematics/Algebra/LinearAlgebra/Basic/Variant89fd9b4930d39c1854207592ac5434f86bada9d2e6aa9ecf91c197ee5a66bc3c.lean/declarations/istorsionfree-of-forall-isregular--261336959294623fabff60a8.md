# isTorsionFree_of_forall_isRegular

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e871b671-a938-3352-b306-d355ffd5ecc7",
  "kind": "lemma",
  "lexical_name": "isTorsionFree_of_forall_isRegular",
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
  "slug": "istorsionfree-of-forall-isregular--261336959294623fabff60a8",
  "source": {
    "blob": "a70e5a646ccd82f36078fe09761a347b25f6bf92",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1445,
    "line": 1430,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant89fd9b4930d39c1854207592ac5434f86bada9d2e6aa9ecf91c197ee5a66bc3c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:261336959294623fabff60a851a40315e5f208fa97f1cbe5ff32aa27b4d7c60b",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variant89fd9b4930d39c1854207592ac5434f86bada9d2e6aa9ecf91c197ee5a66bc3c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e871b671-a938-3352-b306-d355ffd5ecc7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1430–1445.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isTorsionFree_of_forall_isRegular (S : Submonoid R) (hS : ∀ s ∈ S, s ≠ 0 → IsRegular s)
    [IsTorsionFree R M] [IsLocalization S A] [IsLocalizedModule S f] : IsTorsionFree A N where
  isSMulRegular c hc x y hxy := by
    by_cases hS₀ : 0 ∈ S
    · have : Subsingleton N := (IsLocalizedModule.subsingleton_iff S f).2 fun _ ↦ ⟨0, hS₀, by simp⟩
      exact Subsingleton.elim ..
    obtain ⟨⟨a, s⟩, rfl⟩ := IsLocalization.mk'_surjective S c
    obtain ⟨⟨m₁, t₁⟩, rfl⟩ := IsLocalizedModule.mk'_surjective S f x
    obtain ⟨⟨m₂, t₂⟩, rfl⟩ := IsLocalizedModule.mk'_surjective S f y
    replace hS : ∀ s ∈ S, IsRegular s := fun s hs ↦ hS s hs <| ne_of_mem_of_not_mem hs hS₀
    rw [IsLocalization.isRegular_mk' hS] at hc
    have (s : S) (x y : M) : s • x = s • y ↔ x = y := (hS _ s.2).isSMulRegular.eq_iff
    simp only [Function.uncurry_apply_pair, mk'_smul_mk', mk'_eq_mk'_iff, mul_smul, this,
      exists_const] at hxy ⊢
    simpa [smul_comm _ a, hc.isSMulRegular.eq_iff] using hxy

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variant89fd9b4930d39c1854207592ac5434f86bada9d2e6aa9ecf91c197ee5a66bc3c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variant89fd9b4930d39c1854207592ac5434f86bada9d2e6aa9ecf91c197ee5a66bc3c.lean#L1430).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a70e5a646ccd82f36078fe09761a347b25f6bf92` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
