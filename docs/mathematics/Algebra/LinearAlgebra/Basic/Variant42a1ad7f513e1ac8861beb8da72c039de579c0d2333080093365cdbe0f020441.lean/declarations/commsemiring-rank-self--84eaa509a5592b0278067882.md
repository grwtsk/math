# CommSemiring.rank_self

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:23219e09-7fd6-1b6e-3209-3f65195fd599",
  "kind": "theorem",
  "lexical_name": "CommSemiring.rank_self",
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
  "slug": "commsemiring-rank-self--84eaa509a5592b0278067882",
  "source": {
    "blob": "e38775b9c8be724f0f1648a8e810e107c7356d6b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 283,
    "line": 265,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant42a1ad7f513e1ac8861beb8da72c039de579c0d2333080093365cdbe0f020441.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:84eaa509a5592b02780678827d4658e96a4085a5a234016cb35df4cfe27310d4",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variant42a1ad7f513e1ac8861beb8da72c039de579c0d2333080093365cdbe0f020441.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:23219e09-7fd6-1b6e-3209-3f65195fd599`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 265–283.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem CommSemiring.rank_self (R) [CommSemiring R] : Module.rank R R = 1 := by
  nontriviality R
  rw [le_antisymm_iff, ← not_lt, ← two_le_iff_one_lt, ← Nat.cast_two,
    Module.le_rank_iff_exists_linearMap, Module.one_le_rank_iff]
  refine ⟨fun ⟨f, inj⟩ ↦ ?_, _, (LinearEquiv.refl ..).injective⟩
  have := inj (a₁ := f ![0, 1] • ![1, 0]) (a₂ := f ![1, 0] • ![0, 1]) <| by
    simp_rw [map_smul, smul_eq_mul]; apply mul_comm
  have h₁ : f ![0, 1] = 0 := by simpa using congr($this 0)
  have h₂ : 0 = f ![1, 0] := by simpa using congr($this 1)
  exact zero_ne_one (α := R) (by simpa using congr($(inj (h₁.trans h₂)) 1))

section Ring
variable [Ring R] [AddCommGroup M] [Module R M] [Ring R']

/-- If `M / R` and `M' / R'` are modules, `i : R' → R` is a map which sends non-zero elements to
non-zero elements, `j : M →+ M'` is an injective group homomorphism, such that the scalar
multiplications on `M` and `M'` are compatible, then the rank of `M / R` is smaller than or equal to
the rank of `M' / R'`. As a special case, taking `R = R'` it is
`LinearMap.lift_rank_le_of_injective`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variant42a1ad7f513e1ac8861beb8da72c039de579c0d2333080093365cdbe0f020441.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variant42a1ad7f513e1ac8861beb8da72c039de579c0d2333080093365cdbe0f020441.lean#L265).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e38775b9c8be724f0f1648a8e810e107c7356d6b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
