# lieCharpoly_coeff_natDegree

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:79dd342a-8455-e86a-f107-eae470b02d1a",
  "kind": "lemma",
  "lexical_name": "lieCharpoly_coeff_natDegree",
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
  "slug": "liecharpoly-coeff-natdegree--f9723a14a3f28dfb18d4a2f0",
  "source": {
    "blob": "5007f7bbfaa9f73d26a58c514882ae26079ee69e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 135,
    "line": 108,
    "path": "GRWTSK/Algebra/CartanExists/Variant5c2a0a4b4a32993f4c347f40d35427e1f0e7bd695be3beaccede554120528059.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f9723a14a3f28dfb18d4a2f010b41dda6e1af184fb1b4adbea4553d149f474a5",
  "verification": {
    "reference": "docs/verification/Algebra/CartanExists/Variant5c2a0a4b4a32993f4c347f40d35427e1f0e7bd695be3beaccede554120528059.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:79dd342a-8455-e86a-f107-eae470b02d1a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 108–135.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma lieCharpoly_coeff_natDegree [Nontrivial R] (i j : ℕ) (hij : i + j = finrank R M) :
    ((lieCharpoly R M x y).coeff i).natDegree ≤ j := by
  classical
  rw [← mul_one j, lieCharpoly, coeff_map]
  apply MvPolynomial.aeval_natDegree_le
  · apply (polyCharpoly_coeff_isHomogeneous φ (chooseBasis R L) _ _ hij).totalDegree_le
  intro k
  apply Polynomial.natDegree_add_le_of_degree_le
  · apply (Polynomial.natDegree_C_mul_le _ _).trans
    simp only [natDegree_X, le_rfl]
  · simp only [natDegree_C, zero_le]

end engel_isBot_of_isMin

end CommRing

section Field

variable {K L : Type*} [Field K] [LieRing L] [LieAlgebra K L] [Module.Finite K L]

open Module LieSubalgebra LieSubmodule Polynomial Cardinal LieModule engel_isBot_of_isMin

/-- Let `L` be a Lie algebra of dimension `n` over a field `K` with at least `n` elements.
Given a Lie subalgebra `U` of `L`, and an element `x ∈ U` such that `U ≤ engel K x`.
Suppose that `engel K x` is minimal amongst the Engel subalgebras `engel K y` for `y ∈ U`.
Then `engel K x ≤ engel K y` for all `y ∈ U`.

Lemma 2 in [barnes1967]. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/CartanExists/Variant5c2a0a4b4a32993f4c347f40d35427e1f0e7bd695be3beaccede554120528059.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CartanExists/Variant5c2a0a4b4a32993f4c347f40d35427e1f0e7bd695be3beaccede554120528059.lean#L108).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5007f7bbfaa9f73d26a58c514882ae26079ee69e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
