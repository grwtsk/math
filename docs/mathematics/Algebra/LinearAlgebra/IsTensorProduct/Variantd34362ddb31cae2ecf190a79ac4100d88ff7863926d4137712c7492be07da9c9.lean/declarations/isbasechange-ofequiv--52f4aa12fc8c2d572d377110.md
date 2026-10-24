# IsBaseChange.ofEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:21ff6aef-607f-057b-b87b-b88b4592b84e",
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
  "slug": "isbasechange-ofequiv--52f4aa12fc8c2d572d377110",
  "source": {
    "blob": "915342d3b63e40411174a7257f149107258f9690",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 540,
    "line": 520,
    "path": "GRWTSK/Algebra/LinearAlgebra/IsTensorProduct/Variantd34362ddb31cae2ecf190a79ac4100d88ff7863926d4137712c7492be07da9c9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:52f4aa12fc8c2d572d3771105b38f3120e0efa3e2e8d9305638ee313bbe01916",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/IsTensorProduct/Variantd34362ddb31cae2ecf190a79ac4100d88ff7863926d4137712c7492be07da9c9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:21ff6aef-607f-057b-b87b-b88b4592b84e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 520–540.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsBaseChange.ofEquiv (e : M ≃ₗ[R] N) : IsBaseChange R e.toLinearMap := by
  apply IsBaseChange.of_lift_unique
  intro Q I₁ I₂ I₃ I₄ g
  have : I₂ = I₃ := by
    ext r q
    change (by let _ := I₂; exact r • q) = (by let _ := I₃; exact r • q)
    dsimp
    rw [← one_smul R q, smul_smul, ← @smul_assoc _ _ _ (id _) (id _) (id _) I₄, smul_eq_mul]
  cases this
  refine
    ⟨g.comp e.symm.toLinearMap, by
      ext
      simp, ?_⟩
  rintro y (rfl : _ = _)
  ext
  simp

variable {T O : Type*} [CommSemiring T] [Algebra R T] [Algebra S T] [IsScalarTower R S T]
variable [AddCommMonoid O] [Module R O] [Module S O] [Module T O] [IsScalarTower S T O]
variable [IsScalarTower R S O] [IsScalarTower R T O]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/IsTensorProduct/Variantd34362ddb31cae2ecf190a79ac4100d88ff7863926d4137712c7492be07da9c9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/IsTensorProduct/Variantd34362ddb31cae2ecf190a79ac4100d88ff7863926d4137712c7492be07da9c9.lean#L520).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `915342d3b63e40411174a7257f149107258f9690` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
