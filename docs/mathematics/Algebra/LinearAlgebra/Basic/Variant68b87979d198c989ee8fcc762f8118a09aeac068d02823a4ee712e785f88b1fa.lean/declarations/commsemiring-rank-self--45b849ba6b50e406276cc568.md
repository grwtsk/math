# CommSemiring.rank_self

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "be686d7a739311091392ea7d3b164df50a53b1ca",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 257,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/68/68b87979d198c989ee8fcc762f8118a09aeac068d02823a4ee712e785f88b1fa.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7a6d9b52-c0d3-33ee-c198-2701620578c5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a2a5b267-f90f-f90c-d20d-ed6d3029d043",
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
  "slug": "commsemiring-rank-self--45b849ba6b50e406276cc568",
  "source": {
    "blob": "be686d7a739311091392ea7d3b164df50a53b1ca",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 275,
    "line": 257,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant68b87979d198c989ee8fcc762f8118a09aeac068d02823a4ee712e785f88b1fa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:45b849ba6b50e406276cc56816a6acf62f040dac944ac4801213526ed82ec343",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variant68b87979d198c989ee8fcc762f8118a09aeac068d02823a4ee712e785f88b1fa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a2a5b267-f90f-f90c-d20d-ed6d3029d043`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 257–275.

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

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variant68b87979d198c989ee8fcc762f8118a09aeac068d02823a4ee712e785f88b1fa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variant68b87979d198c989ee8fcc762f8118a09aeac068d02823a4ee712e785f88b1fa.lean#L257).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `be686d7a739311091392ea7d3b164df50a53b1ca` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
