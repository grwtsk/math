# fg_iff_exists_finite_generating_family

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4598b8ba-b95b-53cb-8796-2e90c347d581",
  "kind": "lemma",
  "lexical_name": "fg_iff_exists_finite_generating_family",
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
  "slug": "fg-iff-exists-finite-generating-family--9f5866b288187d1711c88bf1",
  "source": {
    "blob": "04e1c760b2be5349b81525fb1dc81fcacee153dd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 99,
    "line": 77,
    "path": "GRWTSK/Algebra/LinearAlgebra/Defs/Variant968227f4c5e7670b56fc187bcbaa17750abaf492e7841d71ffe308f9a292f946.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9f5866b288187d1711c88bf18b1d4226241be27f0ac0f242c2e81f01e57bf3e8",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Defs/Variant968227f4c5e7670b56fc187bcbaa17750abaf492e7841d71ffe308f9a292f946.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4598b8ba-b95b-53cb-8796-2e90c347d581`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 77–99.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma fg_iff_exists_finite_generating_family {A : Type u} [Semiring A] {M : Type v}
    [AddCommMonoid M] [Module A M] {N : Submodule A M} :
    N.FG ↔ ∃ (G : Type w) (_ : Finite G) (g : G → M), Submodule.span A (Set.range g) = N := by
  constructor
  · intro hN
    obtain ⟨n, f, h⟩ := Submodule.fg_iff_exists_fin_generating_family.1 hN
    refine ⟨ULift (Fin n), inferInstance, f ∘ ULift.down, ?_⟩
    convert h
    ext x
    simp only [Set.mem_range, Function.comp_apply, ULift.exists]
  · rintro ⟨G, _, g, hg⟩
    have := Fintype.ofFinite (range g)
    exact ⟨(range g).toFinset, by simpa using hg⟩

end Submodule

namespace Ideal

variable {R : Type*} {M : Type*} [Semiring R] [AddCommMonoid M] [Module R M]

/-- An ideal of `R` is finitely generated if it is the span of a finite subset of `R`.

This is defeq to `Submodule.FG`, but unfolds more nicely. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Defs/Variant968227f4c5e7670b56fc187bcbaa17750abaf492e7841d71ffe308f9a292f946.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Defs/Variant968227f4c5e7670b56fc187bcbaa17750abaf492e7841d71ffe308f9a292f946.lean#L77).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `04e1c760b2be5349b81525fb1dc81fcacee153dd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
