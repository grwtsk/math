# coeff_single_smul_vadd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:db9efe46-d4ff-807e-0840-4ac75f29d302",
  "kind": "theorem",
  "lexical_name": "coeff_single_smul_vadd",
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
  "slug": "coeff-single-smul-vadd--1aff4a3e6a82bc6db18c13b3",
  "source": {
    "blob": "5ca27e0f35af81586b042c3765c44f16d309d137",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 324,
    "line": 297,
    "path": "GRWTSK/Algebra/RingTheory/Multiplication/Variant6cfee3b41dd0fe36dfc26db565750311fe97808ac57ea367ca9bacff440045e2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1aff4a3e6a82bc6db18c13b382d7871d598ddaa032d15f32ffd1cda29fd53452",
  "verification": {
    "reference": "docs/verification/Algebra/RingTheory/Multiplication/Variant6cfee3b41dd0fe36dfc26db565750311fe97808ac57ea367ca9bacff440045e2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:db9efe46-d4ff-807e-0840-4ac75f29d302`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 297–324.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coeff_single_smul_vadd [MulZeroClass R] [SMulWithZero R V] {r : R} {x : HahnModule Γ' R V}
    {a : Γ'} {b : Γ} :
    ((of R).symm (HahnSeries.single b r • x)).coeff (b +ᵥ a) = r • ((of R).symm x).coeff a := by
  by_cases hr : r = 0
  · simp_all only [map_zero, zero_smul, coeff_smul, HahnSeries.support_zero, HahnSeries.coeff_zero,
    sum_const_zero]
  simp only [hr, coeff_smul, coeff_smul, HahnSeries.support_single_of_ne, ne_eq, not_false_iff]
  by_cases hx : ((of R).symm x).coeff a = 0
  · simp only [hx, smul_zero]
    rw [sum_congr _ fun _ _ => rfl, sum_empty]
    ext ⟨a1, a2⟩
    simp only [notMem_empty, not_and, Set.mem_singleton_iff,
      mem_vaddAntidiagonal, iff_false]
    rintro rfl h2 h1
    rw [IsCancelVAdd.left_cancel a1 a2 a h1] at h2
    exact h2 hx
  trans ∑ ij ∈ {(b, a)},
    (HahnSeries.single b r).coeff ij.fst • ((of R).symm x).coeff ij.snd
  · apply sum_congr _ fun _ _ => rfl
    ext ⟨a1, a2⟩
    simp only [Set.mem_singleton_iff, Prod.mk_inj, mem_vaddAntidiagonal, mem_singleton]
    constructor
    · rintro ⟨rfl, _, h1⟩
      exact ⟨rfl, IsCancelVAdd.left_cancel a1 a2 a h1⟩
    · rintro ⟨rfl, rfl⟩
      exact ⟨rfl, by exact hx, rfl⟩
  · simp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/RingTheory/Multiplication/Variant6cfee3b41dd0fe36dfc26db565750311fe97808ac57ea367ca9bacff440045e2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/RingTheory/Multiplication/Variant6cfee3b41dd0fe36dfc26db565750311fe97808ac57ea367ca9bacff440045e2.lean#L297).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5ca27e0f35af81586b042c3765c44f16d309d137` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
