# single_mul_coeff_add

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "72590f46d23f22cad3edb7cf263453c819ebd8f2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 687,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/02/02fb79849f47c55ff10fa886591ff224bdfc31adf659f04683fe691e528cc878.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0860f5e1-6258-6f03-5495-c9c34e87601e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:55d1a2a8-5d6c-bc54-45f9-0985461b44d4",
  "kind": "theorem",
  "lexical_name": "single_mul_coeff_add",
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
  "slug": "single-mul-coeff-add--2573ba402b07461ebc0a4e10",
  "source": {
    "blob": "72590f46d23f22cad3edb7cf263453c819ebd8f2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 715,
    "line": 687,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/HahnSeries/Variant02fb79849f47c55ff10fa886591ff224bdfc31adf659f04683fe691e528cc878.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2573ba402b07461ebc0a4e107f3ef339700f2e28808e8093429a3001ff319e9f",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/HahnSeries/Variant02fb79849f47c55ff10fa886591ff224bdfc31adf659f04683fe691e528cc878.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:55d1a2a8-5d6c-bc54-45f9-0985461b44d4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 687–715.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem single_mul_coeff_add [NonUnitalNonAssocSemiring R] {r : R} {x : HahnSeries Γ R} {a : Γ}
    {b : Γ} : (single b r * x).coeff (a + b) = r * x.coeff a := by
  by_cases hr : r = 0
  · simp [hr, mul_coeff]
  simp only [hr, smul_coeff, mul_coeff, support_single_of_ne, Ne.def, not_false_iff, smul_eq_mul]
  by_cases hx : x.coeff a = 0
  · simp only [hx, mul_zero]
    rw [sum_congr _ fun _ _ => rfl, sum_empty]
    ext ⟨a1, a2⟩
    simp only [not_mem_empty, not_and, Set.mem_singleton_iff, Classical.not_not,
      mem_addAntidiagonal, Set.mem_setOf_eq, iff_false_iff]
    rintro rfl h2 h1
    rw [add_comm] at h1
    rw [← add_right_cancel h1] at hx
    exact h2 hx
  trans ∑ ij : Γ × Γ in {(b, a)}, (single b r).coeff ij.fst * x.coeff ij.snd
  · apply sum_congr _ fun _ _ => rfl
    ext ⟨a1, a2⟩
    simp only [Set.mem_singleton_iff, Prod.mk.inj_iff, mem_addAntidiagonal, mem_singleton,
      Set.mem_setOf_eq]
    constructor
    · rintro ⟨rfl, _, h1⟩
      rw [add_comm] at h1
      refine' ⟨rfl, add_right_cancel h1⟩
    · rintro ⟨rfl, rfl⟩
      exact ⟨rfl, by simp [hx], add_comm _ _⟩
  · simp
#align hahn_series.single_mul_coeff_add HahnSeries.single_mul_coeff_add

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/HahnSeries/Variant02fb79849f47c55ff10fa886591ff224bdfc31adf659f04683fe691e528cc878.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/HahnSeries/Variant02fb79849f47c55ff10fa886591ff224bdfc31adf659f04683fe691e528cc878.lean#L687).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `72590f46d23f22cad3edb7cf263453c819ebd8f2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
