# mul_average_right

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ca01262f-6b4b-234b-3b4c-1c03f45df515",
  "kind": "theorem",
  "lexical_name": "mul_average_right",
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
  "slug": "mul-average-right--a6ce2fef8701f586fb3440ed",
  "source": {
    "blob": "64d5b28f478352b819e42be6451555b9e5f0ef6e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 79,
    "line": 60,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Invariants/Variant0c5ccd89637c7b487f886c63cfc8d9953481f79cdb3f685fb1de5d83cf86ced5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a6ce2fef8701f586fb3440edb794c48c9c45ca0a7d6cca5ec36460f0e67785a5",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Invariants/Variant0c5ccd89637c7b487f886c63cfc8d9953481f79cdb3f685fb1de5d83cf86ced5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ca01262f-6b4b-234b-3b4c-1c03f45df515`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 60–79.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mul_average_right (g : G) : average k G * ↑(Finsupp.single g 1) = average k G := by
  simp only [mul_one, Finset.sum_mul, Algebra.smul_mul_assoc, average, MonoidAlgebra.of_apply,
    Finset.sum_congr, MonoidAlgebra.single_mul_single]
  set f : G → MonoidAlgebra k G := fun x => Finsupp.single x 1
  show ⅟ (Fintype.card G : k) • ∑ x : G, f (x * g) = ⅟ (Fintype.card G : k) • ∑ x : G, f x
  rw [Function.Bijective.sum_comp (Group.mulRight_bijective g) _]

end GroupAlgebra

namespace Representation

section Invariants

open GroupAlgebra

variable {k G V : Type*} [CommSemiring k] [Group G] [AddCommMonoid V] [Module k V]
variable (ρ : Representation k G V)

/-- The subspace of invariants, consisting of the vectors fixed by all elements of `G`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Invariants/Variant0c5ccd89637c7b487f886c63cfc8d9953481f79cdb3f685fb1de5d83cf86ced5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Invariants/Variant0c5ccd89637c7b487f886c63cfc8d9953481f79cdb3f685fb1de5d83cf86ced5.lean#L60).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `64d5b28f478352b819e42be6451555b9e5f0ef6e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
