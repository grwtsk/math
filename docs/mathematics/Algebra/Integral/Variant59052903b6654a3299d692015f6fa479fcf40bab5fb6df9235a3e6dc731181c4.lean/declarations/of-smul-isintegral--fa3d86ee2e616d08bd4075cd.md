# of_smul_isIntegral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d8ba52cf-6890-2609-8d5a-24512078651e",
  "kind": "theorem",
  "lexical_name": "of_smul_isIntegral",
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
  "slug": "of-smul-isintegral--fa3d86ee2e616d08bd4075cd",
  "source": {
    "blob": "47006b07cbee8d38f05dfd040e1fbcdcccabf3f3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 187,
    "line": 177,
    "path": "GRWTSK/Algebra/Integral/Variant59052903b6654a3299d692015f6fa479fcf40bab5fb6df9235a3e6dc731181c4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fa3d86ee2e616d08bd4075cd00632df79119f4b317ee253c72c83aa6a6a328ed",
  "verification": {
    "reference": "docs/verification/Algebra/Integral/Variant59052903b6654a3299d692015f6fa479fcf40bab5fb6df9235a3e6dc731181c4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d8ba52cf-6890-2609-8d5a-24512078651e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 177–187.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem of_smul_isIntegral {y : R} (hy : ¬ IsNilpotent y)
    (h : IsIntegral R (y • z)) : IsAlgebraic R z := by
  have ⟨p, monic, eval0⟩ := h
  refine ⟨p.comp (C y * X), fun h ↦ ?_, by simpa [aeval_comp, Algebra.smul_def] using eval0⟩
  apply_fun (coeff · p.natDegree) at h
  have hy0 : y ≠ 0 := by rintro rfl; exact hy .zero
  rw [coeff_zero, ← mul_one p.natDegree, ← natDegree_C_mul_X y hy0,
    coeff_comp_degree_mul_degree, monic, one_mul, leadingCoeff_C_mul_X] at h
  · exact hy ⟨_, h⟩
  · rw [natDegree_C_mul_X _ hy0]; rintro ⟨⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Integral/Variant59052903b6654a3299d692015f6fa479fcf40bab5fb6df9235a3e6dc731181c4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Integral/Variant59052903b6654a3299d692015f6fa479fcf40bab5fb6df9235a3e6dc731181c4.lean#L177).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `47006b07cbee8d38f05dfd040e1fbcdcccabf3f3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
