# Projective.of_lifting_property'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:108219af-22e0-c46e-7b77-640d9113f8e1",
  "kind": "theorem",
  "lexical_name": "Projective.of_lifting_property'",
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
  "slug": "projective-of-lifting-property--235aa047c4c60bbeb136d105",
  "source": {
    "blob": "024b08cc9dff74f8ec1a3c4840ba9db38d446279",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 282,
    "line": 268,
    "path": "GRWTSK/Algebra/LinearAlgebra/Projective/Variantfe0c020e30b6f9727fd86cab12da163c242691cfbe3968b05e5a34d50724ae53.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:235aa047c4c60bbeb136d10560fdf7b122822553dff7fc9ea80de08406408751",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Projective/Variantfe0c020e30b6f9727fd86cab12da163c242691cfbe3968b05e5a34d50724ae53.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:108219af-22e0-c46e-7b77-640d9113f8e1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 268–282.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Projective.of_lifting_property' {R : Type u} [Semiring R] {P : Type v}
    [AddCommMonoid P] [Module R P] [Small.{v} R]
    -- If for all surjections of `R`-modules `M →ₗ N`, all maps `P →ₗ N` lift to `P →ₗ M`,
    (h : ∀ {M : Type v} {N : Type v} [AddCommMonoid M] [AddCommMonoid N]
      [Module R M] [Module R N] (f : M →ₗ[R] N) (g : P →ₗ[R] N),
        Function.Surjective f → ∃ h : P →ₗ[R] M, f.comp h = g) :
    -- then `P` is projective.
    Projective R P := by
  refine of_lifting_property'' (fun p hp ↦ ?_)
  let e := Finsupp.mapRange.linearEquiv (α := P) (Shrink.linearEquiv R R)
  rcases h (p ∘ₗ e.toLinearMap) LinearMap.id (hp.comp e.surjective) with ⟨g, hg⟩
  exact ⟨e.toLinearMap ∘ₗ g, hg⟩

/-- A variant of `of_lifting_property'` when we're working over a `[Ring R]`,
  which only requires quantifying over modules with an `AddCommGroup` instance. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Projective/Variantfe0c020e30b6f9727fd86cab12da163c242691cfbe3968b05e5a34d50724ae53.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Projective/Variantfe0c020e30b6f9727fd86cab12da163c242691cfbe3968b05e5a34d50724ae53.lean#L268).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `024b08cc9dff74f8ec1a3c4840ba9db38d446279` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
