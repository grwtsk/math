# GradedRingHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4c59031389072babc6be2fd2563d4c61520bfcb784ff71e0f8a2ee3470ffb0e7",
  "kind": "structure",
  "lexical_name": "GradedRingHom",
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
  "slug": "gradedringhom--63c159bff55febfbe5766545",
  "source": {
    "blob": "a3ff780347fd9d4aef51364065a22e5e35b9e615",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 64,
    "line": 46,
    "path": "GRWTSK/Algebra/RingHom/Variantf9c34e2bc7f1c17aceb0b827f117cef786cf463a0755255db1c9372c64372802.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:63c159bff55febfbe5766545c0c09b5874aff15ebf48ea487d3aafafd069a019",
  "verification": {
    "reference": "docs/verification/Algebra/RingHom/Variantf9c34e2bc7f1c17aceb0b827f117cef786cf463a0755255db1c9372c64372802.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4c59031389072babc6be2fd2563d4c61520bfcb784ff71e0f8a2ee3470ffb0e7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 46–64.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure GradedRingHom (𝒜 : ι → σ) (ℬ : ι → τ) extends A →+* B where
  protected map_mem {i : ι} {x : A} : x ∈ 𝒜 i → toRingHom x ∈ ℬ i

variable {𝒜 : ι → σ} {ℬ : ι → τ} {𝒞 : ι → ψ} {𝒟 : ι → ω}

@[inherit_doc]
notation:25 𝒜 " →+*ᵍ " ℬ => GradedRingHom 𝒜 ℬ

namespace GradedRingHom

section ofClass
variable {F : Type*} [FunLike F A B] [GradedFunLike F 𝒜 ℬ] [RingHomClass F A B]

/-- Turn an element of a type `F` satisfying
`[FunLike F A B] [GradedFunLike F 𝒜 ℬ] [RingHomClass F A B]` into an actual `GradedRingHom`.

This should not be used directly. In the future, Mathlib will prefer structural projections over
these general constructions from hom classes. -/
@[coe]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/RingHom/Variantf9c34e2bc7f1c17aceb0b827f117cef786cf463a0755255db1c9372c64372802.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/RingHom/Variantf9c34e2bc7f1c17aceb0b827f117cef786cf463a0755255db1c9372c64372802.lean#L46).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a3ff780347fd9d4aef51364065a22e5e35b9e615` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
