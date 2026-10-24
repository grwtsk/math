# injective_of_surjective_of_injective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:62d4c11b-b88c-c414-113b-18ad5562fefa",
  "kind": "theorem",
  "lexical_name": "injective_of_surjective_of_injective",
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
  "slug": "injective-of-surjective-of-injective--ed3d06b1387547147d15fb2b",
  "source": {
    "blob": "2409ce73bc0e3ef8917f520a21d8e84f915abb1c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 91,
    "line": 77,
    "path": "GRWTSK/Algebra/LinearAlgebra/OrzechProperty/Variant1e148ade01f1e4999c2919585d27b56d5e165fa6d1556d47eeb03b14d6ba9a4c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ed3d06b1387547147d15fb2b9a4febf1c87db6a3334f7df71a35f5da673217d6",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/OrzechProperty/Variant1e148ade01f1e4999c2919585d27b56d5e165fa6d1556d47eeb03b14d6ba9a4c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:62d4c11b-b88c-c414-113b-18ad5562fefa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 77–91.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem injective_of_surjective_of_injective
    {N : Type w} [AddCommMonoid N] [Module R N]
    (i f : N →ₗ[R] M) (hi : Injective i) (hf : Surjective f) : Injective f := by
  obtain ⟨n, g, hg⟩ := Module.Finite.exists_fin' R M
  haveI := small_of_surjective hg
  letI := Equiv.addCommMonoid (equivShrink M).symm
  letI := Equiv.module R (equivShrink M).symm
  let j : Shrink.{u} M ≃ₗ[R] M := Equiv.linearEquiv R (equivShrink M).symm
  haveI := Module.Finite.equiv j.symm
  let i' := j.symm.toLinearMap ∘ₗ i
  replace hi : Injective i' := by simpa [i'] using hi
  let f' := j.symm.toLinearMap ∘ₗ f ∘ₗ (LinearEquiv.ofInjective i' hi).symm.toLinearMap
  replace hf : Surjective f' := by simpa [f'] using hf
  simpa [f'] using injective_of_surjective_of_submodule' f' hf

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/OrzechProperty/Variant1e148ade01f1e4999c2919585d27b56d5e165fa6d1556d47eeb03b14d6ba9a4c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/OrzechProperty/Variant1e148ade01f1e4999c2919585d27b56d5e165fa6d1556d47eeb03b14d6ba9a4c.lean#L77).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2409ce73bc0e3ef8917f520a21d8e84f915abb1c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
