# GradedRingHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d5f03886f4a77eabe7a9fa456f2d38dcdfe702cca5cc9e1be8014e77ca3dd6d7",
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
  "slug": "gradedringhom--d1fb4e563b79c94d73720292",
  "source": {
    "blob": "42c474e42372ebeb049d0184d1a834a9cfab2c07",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 72,
    "line": 54,
    "path": "GRWTSK/Algebra/RingHom/Variant7a567224771d14d986510b3f10e760b005c731e595d0b0eb148bcbd38312679d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d1fb4e563b79c94d7372029275e536dc105e141637d6568396be3b22bd8d647f",
  "verification": {
    "reference": "docs/verification/Algebra/RingHom/Variant7a567224771d14d986510b3f10e760b005c731e595d0b0eb148bcbd38312679d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d5f03886f4a77eabe7a9fa456f2d38dcdfe702cca5cc9e1be8014e77ca3dd6d7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 54–72.

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

[Verification target and public status](../../../../../verification/Algebra/RingHom/Variant7a567224771d14d986510b3f10e760b005c731e595d0b0eb148bcbd38312679d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/RingHom/Variant7a567224771d14d986510b3f10e760b005c731e595d0b0eb148bcbd38312679d.lean#L54).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `42c474e42372ebeb049d0184d1a834a9cfab2c07` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
