# lt_rootMultiplicity_of_isRoot_iterate_derivative_of_mem_nonZeroDivisors

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3e156c99aa1ae2fe6b621f5c6018db27ad154e9e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 80,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8f/8f56ee9ed365af92d7f58d838d2a5c088c96657be008109dab7faeb36f983af0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:499b78b2-d083-9334-d205-a2d4fc43dee9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f3aa196b-e43e-3f91-d3ec-24bc3456b1a4",
  "kind": "theorem",
  "lexical_name": "lt_rootMultiplicity_of_isRoot_iterate_derivative_of_mem_nonZeroDivisors",
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
  "slug": "lt-rootmultiplicity-of-isroot-iterate-derivative-of-mem-nonzerodivisors--6d47122483432c9adef6b295",
  "source": {
    "blob": "3e156c99aa1ae2fe6b621f5c6018db27ad154e9e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 92,
    "line": 80,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/FieldDivision/Variant8f56ee9ed365af92d7f58d838d2a5c088c96657be008109dab7faeb36f983af0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6d47122483432c9adef6b295bd322a2b50c328b2e8a9433241605b12ce68f7a0",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/FieldDivision/Variant8f56ee9ed365af92d7f58d838d2a5c088c96657be008109dab7faeb36f983af0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f3aa196b-e43e-3f91-d3ec-24bc3456b1a4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 80–92.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lt_rootMultiplicity_of_isRoot_iterate_derivative_of_mem_nonZeroDivisors
    {p : R[X]} {t : R} {n : ℕ} (h : p ≠ 0)
    (hroot : ∀ m ≤ n, (derivative^[m] p).IsRoot t)
    (hnzd : (n.factorial : R) ∈ nonZeroDivisors R) :
    n < p.rootMultiplicity t := by
  by_contra! h'
  replace hroot := hroot _ h'
  simp only [IsRoot, eval_iterate_derivative_rootMultiplicity] at hroot
  obtain ⟨q, hq⟩ : ((rootMultiplicity t p)! : R) ∣ n ! := by gcongr
  rw [hq, mul_mem_nonZeroDivisors] at hnzd
  rw [nsmul_eq_mul, mul_left_mem_nonZeroDivisors_eq_zero_iff hnzd.1] at hroot
  exact eval_divByMonic_pow_rootMultiplicity_ne_zero t h hroot

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/FieldDivision/Variant8f56ee9ed365af92d7f58d838d2a5c088c96657be008109dab7faeb36f983af0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/FieldDivision/Variant8f56ee9ed365af92d7f58d838d2a5c088c96657be008109dab7faeb36f983af0.lean#L80).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3e156c99aa1ae2fe6b621f5c6018db27ad154e9e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
