# _root_.GRWTSK.Algebra.LinearAlgebra.LinearEquiv.Variant1a48589958cffc568572fa31c3322b02cab18046b361849c284857960227e428.SemilinearEquivClass.semilinearEquiv_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c624cae0-f3ea-712f-ad67-fb0e9ae2b527",
  "kind": "lemma",
  "lexical_name": "_root_.GRWTSK.Algebra.LinearAlgebra.LinearEquiv.Variant1a48589958cffc568572fa31c3322b02cab18046b361849c284857960227e428.SemilinearEquivClass.semilinearEquiv_apply",
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
  "slug": "root-grwtsk-algebra-linearalgebra-linearequiv-variant1a48589958cffc56857--9cb3d3e0cef47b308ac018ed",
  "source": {
    "blob": "a67f1a5d49325ef34b59d88ef902d485ff411c79",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 209,
    "line": 193,
    "path": "GRWTSK/Algebra/LinearAlgebra/Defs/Variant20d0cb3490b6cfba6d8c812edafba591d292b557cdb20ed8a695c99483fa08e1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9cb3d3e0cef47b308ac018ed2c07c200c5da407de7913506a2bfdf9c0195aed8",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Defs/Variant20d0cb3490b6cfba6d8c812edafba591d292b557cdb20ed8a695c99483fa08e1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c624cae0-f3ea-712f-ad67-fb0e9ae2b527`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 193–209.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma _root_.GRWTSK.Algebra.LinearAlgebra.LinearEquiv.Variant1a48589958cffc568572fa31c3322b02cab18046b361849c284857960227e428.SemilinearEquivClass.semilinearEquiv_apply {F : Type*} [EquivLike F M M₂]
    [SemilinearEquivClass F σ M M₂] (f : F) (x : M) :
    SemilinearEquivClass.semilinearEquiv (M₂ := M₂) f x = f x := rfl

end

section

variable [Semiring R₁] [Semiring R₂] [Semiring R₃]
variable [AddCommMonoid M] [AddCommMonoid M₁] [AddCommMonoid M₂]
variable [AddCommMonoid M₃]
variable [AddCommMonoid N₁] [AddCommMonoid N₂]
variable {module_M : Module R M} {module_S_M₂ : Module S M₂} {σ : R →+* S} {σ' : S →+* R}
variable {re₁ : RingHomInvPair σ σ'} {re₂ : RingHomInvPair σ' σ}
variable (e e' : M ≃ₛₗ[σ] M₂)

@[simp, norm_cast]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Defs/Variant20d0cb3490b6cfba6d8c812edafba591d292b557cdb20ed8a695c99483fa08e1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Defs/Variant20d0cb3490b6cfba6d8c812edafba591d292b557cdb20ed8a695c99483fa08e1.lean#L193).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a67f1a5d49325ef34b59d88ef902d485ff411c79` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
