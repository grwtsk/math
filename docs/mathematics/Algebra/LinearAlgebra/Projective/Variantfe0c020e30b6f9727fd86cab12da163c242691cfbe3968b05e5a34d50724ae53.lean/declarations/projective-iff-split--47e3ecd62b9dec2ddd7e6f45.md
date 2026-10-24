# Projective.iff_split'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2f100345-6d4f-bb5c-92f0-cf052b3bf91b",
  "kind": "theorem",
  "lexical_name": "Projective.iff_split'",
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
  "slug": "projective-iff-split--47e3ecd62b9dec2ddd7e6f45",
  "source": {
    "blob": "024b08cc9dff74f8ec1a3c4840ba9db38d446279",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 241,
    "line": 228,
    "path": "GRWTSK/Algebra/LinearAlgebra/Projective/Variantfe0c020e30b6f9727fd86cab12da163c242691cfbe3968b05e5a34d50724ae53.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:47e3ecd62b9dec2ddd7e6f45ccb8972e6f1b7a8207838954439b71e5e37d4084",
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

Occurrence: `result:2f100345-6d4f-bb5c-92f0-cf052b3bf91b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 228–241.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Projective.iff_split' [Small.{w} R] [Small.{w} P] : Module.Projective R P ↔
    ∃ (M : Type w) (_ : AddCommMonoid M) (_ : Module R M) (_ : Module.Free R M)
      (i : P →ₗ[R] M) (s : M →ₗ[R] P), s.comp i = LinearMap.id := by
  let e : (Shrink.{w, v} P →₀ Shrink.{w, u} R) ≃ₗ[R] P →₀ R :=
    Finsupp.mapDomain.linearEquiv _ R (equivShrink P).symm ≪≫ₗ
      Finsupp.mapRange.linearEquiv (Shrink.linearEquiv R R)
  refine ⟨fun ⟨i, hi⟩ ↦ ⟨(Shrink.{w} P) →₀ (Shrink.{w} R), _, _, Free.of_basis ⟨e⟩,
    e.symm.toLinearMap ∘ₗ i, (linearCombination R id) ∘ₗ e.toLinearMap, ?_⟩,
      fun ⟨_, _, _, _, i, s, H⟩ ↦ Projective.of_split i s H⟩
  apply LinearMap.ext
  simp only [coe_comp, LinearEquiv.coe_coe, Function.comp_apply, e.apply_symm_apply]
  exact hi

/-- A module is projective iff it is the direct summand of a free module. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Projective/Variantfe0c020e30b6f9727fd86cab12da163c242691cfbe3968b05e5a34d50724ae53.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Projective/Variantfe0c020e30b6f9727fd86cab12da163c242691cfbe3968b05e5a34d50724ae53.lean#L228).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `024b08cc9dff74f8ec1a3c4840ba9db38d446279` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
