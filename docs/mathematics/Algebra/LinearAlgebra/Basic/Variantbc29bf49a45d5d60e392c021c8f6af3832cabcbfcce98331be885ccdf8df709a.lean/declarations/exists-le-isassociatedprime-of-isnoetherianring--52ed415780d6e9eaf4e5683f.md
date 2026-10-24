# exists_le_isAssociatedPrime_of_isNoetherianRing

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cfc530ec-3c7d-649f-7752-46455c1bba1e",
  "kind": "theorem",
  "lexical_name": "exists_le_isAssociatedPrime_of_isNoetherianRing",
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
  "slug": "exists-le-isassociatedprime-of-isnoetherianring--52ed415780d6e9eaf4e5683f",
  "source": {
    "blob": "7bdf7a22ef78a3f6d67f2d50b8e0a760eead91b9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 169,
    "line": 144,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variantbc29bf49a45d5d60e392c021c8f6af3832cabcbfcce98331be885ccdf8df709a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:52ed415780d6e9eaf4e5683f9800ba821fb5cc3514d747310e9dd72125e6328e",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variantbc29bf49a45d5d60e392c021c8f6af3832cabcbfcce98331be885ccdf8df709a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cfc530ec-3c7d-649f-7752-46455c1bba1e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 144–169.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_le_isAssociatedPrime_of_isNoetherianRing [H : IsNoetherianRing R] (x : M)
    (hx : x ≠ 0) : ∃ P : Ideal R, IsAssociatedPrime P M ∧ (⊥ : Submodule R M).colon {x} ≤ P := by
  simp only [isAssociatedPrime_iff]
  obtain ⟨P, ⟨l, h₁, y, rfl⟩, h₃⟩ :=
    set_has_maximal_iff_noetherian.mpr H
      { P | (⊥ : Submodule R M).colon {x} ≤ P ∧ P ≠ ⊤ ∧ ∃ y : M, P = (⊥ : Submodule R M).colon {y} }
      ⟨_, rfl.le, by simpa, x, rfl⟩
  refine ⟨_, ⟨⟨h₁, ?_⟩, y, rfl⟩, l⟩
  intro a b hab
  rw [or_iff_not_imp_left]
  intro ha
  rw [mem_colon_singleton] at ha hab
  have H₁ : (⊥ : Submodule R M).colon {y} ≤ (⊥ : Submodule R M).colon {a • y} := by
    intro c hc
    rw [mem_colon_singleton, mem_bot] at hc ⊢
    rw [smul_comm, hc, smul_zero]
  rwa [H₁.eq_of_not_lt (h₃ _ ⟨l.trans H₁, by simpa, _, rfl⟩),
    mem_colon_singleton, smul_comm, smul_smul]

namespace associatedPrimes

variable {f} {M'' : Type*} [AddCommMonoid M''] [Module R M''] {g : M' →ₗ[R] M''}

/-- If `M → M'` is injective, then the set of associated primes of `M` is
contained in that of `M'`. -/
@[stacks 02M3 "first part"]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variantbc29bf49a45d5d60e392c021c8f6af3832cabcbfcce98331be885ccdf8df709a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variantbc29bf49a45d5d60e392c021c8f6af3832cabcbfcce98331be885ccdf8df709a.lean#L144).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7bdf7a22ef78a3f6d67f2d50b8e0a760eead91b9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
