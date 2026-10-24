# addMonoidEndRingEquivInt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ff991706170b7d96ad02d5b4dc0192b5c8bc361809a38ad7ac92b926c8765cc4",
  "kind": "def",
  "lexical_name": "addMonoidEndRingEquivInt",
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
  "slug": "addmonoidendringequivint--d9e23fde4caba8a504011d46",
  "source": {
    "blob": "4211499574f67bd72e2d428fb8ee9c1ad6a4d9eb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 423,
    "line": 402,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant6ae57f13710453386b4f359374dbe8d4dc8a7759dafb484b598575dda69a8cb3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d9e23fde4caba8a504011d46d11b918eea1ea85c1f79236d4538f5f05988dfa4",
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

Occurrence: `declaration:ff991706170b7d96ad02d5b4dc0192b5c8bc361809a38ad7ac92b926c8765cc4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 402–423.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simps] def addMonoidEndRingEquivInt (A : Type*) [AddCommGroup A] :
    AddMonoid.End A ≃+* Module.End ℤ A :=
  { addMonoidHomLequivInt (B := A) ℤ with
    map_mul' := fun _ _ ↦ rfl }

namespace LinearEquiv

section AddCommMonoid

section Subsingleton

variable [Semiring R] [Semiring R₂]
variable [AddCommMonoid M] [AddCommMonoid M₂]
variable [Module R M] [Module R₂ M₂]
variable {σ₁₂ : R →+* R₂} {σ₂₁ : R₂ →+* R}
variable [RingHomInvPair σ₁₂ σ₂₁] [RingHomInvPair σ₂₁ σ₁₂]

section Module

variable [Subsingleton M] [Subsingleton M₂]

/-- Between two zero modules, the zero map is an equivalence. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variant6ae57f13710453386b4f359374dbe8d4dc8a7759dafb484b598575dda69a8cb3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variant6ae57f13710453386b4f359374dbe8d4dc8a7759dafb484b598575dda69a8cb3.lean#L402).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4211499574f67bd72e2d428fb8ee9c1ad6a4d9eb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
