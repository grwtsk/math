# IsBaseChange.ofEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:85216eac-df7f-45ad-7b99-deffccc458e8",
  "kind": "theorem",
  "lexical_name": "IsBaseChange.ofEquiv",
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
  "slug": "isbasechange-ofequiv--027cc89b42739a46cba5f794",
  "source": {
    "blob": "59cddf7f452d6b26d315fe5081e6d38c1a380703",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 344,
    "line": 320,
    "path": "GRWTSK/Algebra/LinearAlgebra/IsTensorProduct/Variant54ea15ce26c02dbade001b569fdb6512524b1e19bd8470f851f65838f0b42865.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:027cc89b42739a46cba5f7941f60c5e5ba4331f75506e9b66b268ae31ec9a62f",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/IsTensorProduct/Variant54ea15ce26c02dbade001b569fdb6512524b1e19bd8470f851f65838f0b42865.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:85216eac-df7f-45ad-7b99-deffccc458e8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 320–344.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsBaseChange.ofEquiv (e : M ≃ₗ[R] N) : IsBaseChange R e.toLinearMap := by
  apply IsBaseChange.of_lift_unique
  intro Q I₁ I₂ I₃ I₄ g
  have : I₂ = I₃ := by
    ext r q
    show (by let _ := I₂; exact r • q) = (by let _ := I₃; exact r • q)
    dsimp
    rw [← one_smul R q, smul_smul, ← @smul_assoc _ _ _ (id _) (id _) (id _) I₄, smul_eq_mul,
      mul_one]
  cases this
  refine'
    ⟨g.comp e.symm.toLinearMap, by
      ext
      simp, _⟩
  rintro y (rfl : _ = _)
  ext
  simp
#align is_base_change.of_equiv IsBaseChange.ofEquiv

variable {T O : Type*} [CommRing T] [Algebra R T] [Algebra S T] [IsScalarTower R S T]

variable [AddCommMonoid O] [Module R O] [Module S O] [Module T O] [IsScalarTower S T O]

variable [IsScalarTower R S O] [IsScalarTower R T O]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/IsTensorProduct/Variant54ea15ce26c02dbade001b569fdb6512524b1e19bd8470f851f65838f0b42865.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/IsTensorProduct/Variant54ea15ce26c02dbade001b569fdb6512524b1e19bd8470f851f65838f0b42865.lean#L320).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `59cddf7f452d6b26d315fe5081e6d38c1a380703` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
