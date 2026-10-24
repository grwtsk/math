# smulOfUnit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5391a4d1c8421b53d94b098126e5075f2dfb0863794ea53facb0ae525f0de66b",
  "kind": "def",
  "lexical_name": "smulOfUnit",
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
  "slug": "smulofunit--ab91b41ae06020ce2c841ede",
  "source": {
    "blob": "4211499574f67bd72e2d428fb8ee9c1ad6a4d9eb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 697,
    "line": 620,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant6ae57f13710453386b4f359374dbe8d4dc8a7759dafb484b598575dda69a8cb3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ab91b41ae06020ce2c841edea656580c6a07b638b9f4af07fd32d13bc04fc285",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variant6ae57f13710453386b4f359374dbe8d4dc8a7759dafb484b598575dda69a8cb3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5391a4d1c8421b53d94b098126e5075f2dfb0863794ea53facb0ae525f0de66b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 620–697.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
def smulOfUnit (a : Rˣ) : M ≃ₗ[R] M :=
  DistribMulAction.toLinearEquiv R M a

section arrowCongr

-- Difference from above: `R₁` and `R₂` are commutative
/-!
The modules for `arrowCongr` and its lemmas below are related via the semilinearities
```
M₁  ←⎯⎯⎯σ₁₂⎯⎯⎯→ M₂  ←⎯⎯⎯σ₂₃⎯⎯⎯→ M₃
⏐               ⏐               ⏐
σ₁₁'            σ₂₂'            σ₃₃'
↓               ↓               ↓
M₁' ←⎯⎯σ₁'₂'⎯⎯→ M₂' ←⎯⎯σ₂'₃'⎯⎯→ M₃
⏐               ⏐
σ₁'₁''          σ₂'₂''
↓               ↓
M₁''←⎯σ₁''₂''⎯→ M₂''
```
where the horizontal direction corresponds to the `≃ₛₗ`s, and is needed for `arrowCongr_trans`,
while the vertical direction corresponds to the `→ₛₗ`s, and is needed `arrowCongr_comp`.

`Rᵢ` is not necessarily commutative, but `Rᵢ'` and `Rᵢ''` are.
-/
variable {R₁ R₂ R₃ R₁' R₂' R₃' R₁'' R₂'' : Type*} {M₁ M₂ M₃ M₁' M₂' M₃' M₁'' M₂'' : Type*}
variable [Semiring R₁] [Semiring R₂] [Semiring R₃]
variable [CommSemiring R₁'] [CommSemiring R₂'] [CommSemiring R₃']
variable [CommSemiring R₁''] [CommSemiring R₂'']
variable [AddCommMonoid M₁] [AddCommMonoid M₂] [AddCommMonoid M₃]
variable [AddCommMonoid M₁'] [AddCommMonoid M₂'] [AddCommMonoid M₃']
variable [AddCommMonoid M₁''] [AddCommMonoid M₂'']
variable [Module R₁ M₁] [Module R₂ M₂] [Module R₃ M₃]
variable [Module R₁' M₁'] [Module R₂' M₂'] [Module R₃' M₃']
variable [Module R₁'' M₁''] [Module R₂'' M₂'']
-- horizontal edges and closures
variable {σ₁₂ : R₁ →+* R₂} {σ₂₁ : R₂ →+* R₁}
variable {σ₂₃ : R₂ →+* R₃} {σ₃₂ : R₃ →+* R₂}
variable {σ₁₃ : R₁ →+* R₃} {σ₃₁ : R₃ →+* R₁}
variable {σ₁'₂' : R₁' →+* R₂'} {σ₂'₁' : R₂' →+* R₁'}
variable {σ₂'₃' : R₂' →+* R₃'} {σ₃'₂' : R₃' →+* R₂'}
variable {σ₁'₃' : R₁' →+* R₃'} {σ₃'₁' : R₃' →+* R₁'}
-- vertical edges and closures
variable {σ₁''₂'' : R₁'' →+* R₂''} {σ₂''₁'' : R₂'' →+* R₁''}
variable {σ₁₁' : R₁ →+* R₁'} {σ₂₂' : R₂ →+* R₂'} {σ₃₃' : R₃ →+* R₃'}
variable {σ₁'₁'' : R₁' →+* R₁''} {σ₂'₂'' : R₂' →+* R₂''}
variable {σ₁₁'' : R₁ →+* R₁''} {σ₂₂'' : R₂ →+* R₂''}
-- diagonals
variable {σ₂₁' : R₂ →+* R₁'} {σ₁₂' : R₁ →+* R₂'}
variable {σ₃₂' : R₃ →+* R₂'} {σ₂₃' : R₂ →+* R₃'}
variable {σ₃₁' : R₃ →+* R₁'} {σ₁₃' : R₁ →+* R₃'}
variable {σ₂'₁'' : R₂' →+* R₁''} {σ₁'₂'' : R₁' →+* R₂''}
variable {σ₂₁'' : R₂ →+* R₁''} {σ₁₂'' : R₁ →+* R₂''}
variable [RingHomInvPair σ₁₂ σ₂₁] [RingHomInvPair σ₂₁ σ₁₂]
variable [RingHomInvPair σ₁'₂' σ₂'₁'] [RingHomInvPair σ₂'₁' σ₁'₂']
variable [RingHomInvPair σ₂₃ σ₃₂] [RingHomInvPair σ₃₂ σ₂₃]
variable [RingHomInvPair σ₂'₃' σ₃'₂'] [RingHomInvPair σ₃'₂' σ₂'₃']
variable [RingHomInvPair σ₁₃ σ₃₁] [RingHomInvPair σ₃₁ σ₁₃]
variable [RingHomInvPair σ₁'₃' σ₃'₁'] [RingHomInvPair σ₃'₁' σ₁'₃']
variable [RingHomInvPair σ₁''₂'' σ₂''₁''] [RingHomInvPair σ₂''₁'' σ₁''₂'']
variable [RingHomCompTriple σ₁₁' σ₁'₁'' σ₁₁''] [RingHomCompTriple σ₂₂' σ₂'₂'' σ₂₂'']
variable [RingHomCompTriple σ₁₁' σ₁'₂' σ₁₂'] [RingHomCompTriple σ₂₁ σ₁₂' σ₂₂']
variable [RingHomCompTriple σ₂₂' σ₂'₁' σ₂₁'] [RingHomCompTriple σ₁₂ σ₂₁' σ₁₁']
variable [RingHomCompTriple σ₁₁' σ₁'₃' σ₁₃'] [RingHomCompTriple σ₃₁ σ₁₃' σ₃₃']
variable [RingHomCompTriple σ₃₃' σ₃'₁' σ₃₁'] [RingHomCompTriple σ₁₃ σ₃₁' σ₁₁']
variable [RingHomCompTriple σ₂₂' σ₂'₃' σ₂₃'] [RingHomCompTriple σ₃₂ σ₂₃' σ₃₃']
variable [RingHomCompTriple σ₃₃' σ₃'₂' σ₃₂'] [RingHomCompTriple σ₂₃ σ₃₂' σ₂₂']
variable [RingHomCompTriple σ₁₁'' σ₁''₂'' σ₁₂''] [RingHomCompTriple σ₂₁ σ₁₂'' σ₂₂'']
variable [RingHomCompTriple σ₂₂'' σ₂''₁'' σ₂₁''] [RingHomCompTriple σ₁₂ σ₂₁'' σ₁₁'']
variable [RingHomCompTriple σ₁'₁'' σ₁''₂'' σ₁'₂''] [RingHomCompTriple σ₂'₁' σ₁'₂'' σ₂'₂'']
variable [RingHomCompTriple σ₂'₂'' σ₂''₁'' σ₂'₁''] [RingHomCompTriple σ₁'₂' σ₂'₁'' σ₁'₁'']
variable [RingHomCompTriple σ₁₂ σ₂₃ σ₁₃] [RingHomCompTriple σ₃₂ σ₂₁ σ₃₁]
variable [RingHomCompTriple σ₁'₂' σ₂'₃' σ₁'₃'] [RingHomCompTriple σ₃'₂' σ₂'₁' σ₃'₁']

/-- A linear isomorphism between the domains and codomains of two spaces of linear maps gives a
linear isomorphism between the two function spaces.

See `LinearEquiv.arrowCongrAddEquiv` for the additive version of this isomorphism that works
over a not necessarily commutative semiring. -/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variant6ae57f13710453386b4f359374dbe8d4dc8a7759dafb484b598575dda69a8cb3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variant6ae57f13710453386b4f359374dbe8d4dc8a7759dafb484b598575dda69a8cb3.lean#L620).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4211499574f67bd72e2d428fb8ee9c1ad6a4d9eb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
