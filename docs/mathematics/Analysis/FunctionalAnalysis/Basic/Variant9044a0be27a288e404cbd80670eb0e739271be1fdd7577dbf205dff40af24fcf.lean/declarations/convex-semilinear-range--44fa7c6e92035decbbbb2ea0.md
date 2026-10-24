# Convex.semilinear_range

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "74588106f9753245de719836b31e43fdad4293ab",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 628,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/90/9044a0be27a288e404cbd80670eb0e739271be1fdd7577dbf205dff40af24fcf.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:411d10e2-c362-d0a7-3743-03bb766e46ac",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b59c194d-c78a-dec0-7f25-7e32363e180d",
  "kind": "theorem",
  "lexical_name": "Convex.semilinear_range",
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
  "slug": "convex-semilinear-range--44fa7c6e92035decbbbb2ea0",
  "source": {
    "blob": "74588106f9753245de719836b31e43fdad4293ab",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 640,
    "line": 628,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/Basic/Variant9044a0be27a288e404cbd80670eb0e739271be1fdd7577dbf205dff40af24fcf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:44fa7c6e92035decbbbb2ea03682514c5f8572516cdc4f6f505a5d4b5ae9513a",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/Basic/Variant9044a0be27a288e404cbd80670eb0e739271be1fdd7577dbf205dff40af24fcf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b59c194d-c78a-dec0-7f25-7e32363e180d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 628–640.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Convex.semilinear_range {𝕜' : Type*} [Semiring 𝕜'] {σ : 𝕜' →+* 𝕜}
    [RingHomSurjective σ] {F' : Type*} [AddCommMonoid F'] [Module 𝕜' F']
    (f : F' →ₛₗ[σ] E) : Convex 𝕜 (LinearMap.range f : Set E) := Submodule.convex ..

end Submodule

section CommSemiring

variable {R : Type*} [CommSemiring R]
variable (A : Type*) [Semiring A] [Algebra R A]
variable {M : Type*} [AddCommMonoid M] [Module A M] [Module R M] [IsScalarTower R A M]
variable [PartialOrder R] [PartialOrder A]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/Basic/Variant9044a0be27a288e404cbd80670eb0e739271be1fdd7577dbf205dff40af24fcf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/Basic/Variant9044a0be27a288e404cbd80670eb0e739271be1fdd7577dbf205dff40af24fcf.lean#L628).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `74588106f9753245de719836b31e43fdad4293ab` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
