# exact_of_localized_maximal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "65f958b008f7e8d176f5624bc1d76f0a250024b9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 101,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f7/f7cc7376a2e694725cd79e4039e82058bdcaa2d7106d64da94a6410bccbfb819.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c03c4e0a-2f6c-8370-7705-353410341709",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:28cb14e0-fcbb-52bb-f5c8-44d3e56043b9",
  "kind": "theorem",
  "lexical_name": "exact_of_localized_maximal",
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
  "slug": "exact-of-localized-maximal--602418880ea0f4d6344457af",
  "source": {
    "blob": "65f958b008f7e8d176f5624bc1d76f0a250024b9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 134,
    "line": 101,
    "path": "GRWTSK/Algebra/LinearAlgebra/Exactness/Variantf7cc7376a2e694725cd79e4039e82058bdcaa2d7106d64da94a6410bccbfb819.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:602418880ea0f4d6344457afcbcb4f21c4709d677450e55a3b9b2d63e6ba6785",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Exactness/Variantf7cc7376a2e694725cd79e4039e82058bdcaa2d7106d64da94a6410bccbfb819.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:28cb14e0-fcbb-52bb-f5c8-44d3e56043b9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 101–134.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exact_of_localized_maximal
    (h : ∀ (J : Ideal R) [J.IsMaximal], Function.Exact (map J.primeCompl f) (map J.primeCompl g)) :
    Function.Exact f g :=
  exact_of_isLocalized_maximal _ (fun _ _ ↦ mkLinearMap _ _) _ (fun _ _ ↦ mkLinearMap _ _)
    _ (fun _ _ ↦ mkLinearMap _ _) f g h

end localized_maximal

section isLocalized_span

open IsLocalizedModule

variable {R M N L : Type*} [CommSemiring R] [AddCommMonoid M] [Module R M]
  [AddCommMonoid N] [Module R N] [AddCommMonoid L] [Module R L] (s : Set R) (spn : Ideal.span s = ⊤)
include spn

variable
  (Mₚ : ∀ _ : s, Type*)
  [∀ r : s, AddCommMonoid (Mₚ r)]
  [∀ r : s, Module R (Mₚ r)]
  (f : ∀ r : s, M →ₗ[R] Mₚ r)
  [∀ r : s, IsLocalizedModule.Away r.1 (f r)]
  (Nₚ : ∀ _ : s, Type*)
  [∀ r : s, AddCommMonoid (Nₚ r)]
  [∀ r : s, Module R (Nₚ r)]
  (g : ∀ r : s, N →ₗ[R] Nₚ r)
  [∀ r : s, IsLocalizedModule.Away r.1 (g r)]
  (Lₚ : ∀ _ : s, Type*)
  [∀ r : s, AddCommMonoid (Lₚ r)]
  [∀ r : s, Module R (Lₚ r)]
  (h : ∀ r : s, L →ₗ[R] Lₚ r)
  [∀ r : s, IsLocalizedModule.Away r.1 (h r)]
  (F : M →ₗ[R] N) (G : N →ₗ[R] L)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Exactness/Variantf7cc7376a2e694725cd79e4039e82058bdcaa2d7106d64da94a6410bccbfb819.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Exactness/Variantf7cc7376a2e694725cd79e4039e82058bdcaa2d7106d64da94a6410bccbfb819.lean#L101).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `65f958b008f7e8d176f5624bc1d76f0a250024b9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
