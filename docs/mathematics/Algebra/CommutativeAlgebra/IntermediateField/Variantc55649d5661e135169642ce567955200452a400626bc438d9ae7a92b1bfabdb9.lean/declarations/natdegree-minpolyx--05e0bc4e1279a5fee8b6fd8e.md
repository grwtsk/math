# natDegree_minpolyX

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "bd7cfed4ff94caa50cfa13be10e6574a69af2f2a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 104,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c5/c55649d5661e135169642ce567955200452a400626bc438d9ae7a92b1bfabdb9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6f6014ea-64c9-6971-6d47-a8fb62fe9dc9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9ca06e92-0f43-c321-a1f2-f2b07a575d7d",
  "kind": "theorem",
  "lexical_name": "natDegree_minpolyX",
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
  "slug": "natdegree-minpolyx--05e0bc4e1279a5fee8b6fd8e",
  "source": {
    "blob": "bd7cfed4ff94caa50cfa13be10e6574a69af2f2a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 116,
    "line": 104,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/IntermediateField/Variantc55649d5661e135169642ce567955200452a400626bc438d9ae7a92b1bfabdb9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:05e0bc4e1279a5fee8b6fd8e6686dc8b680a08dff06ab3c887b6a222223c7f37",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/IntermediateField/Variantc55649d5661e135169642ce567955200452a400626bc438d9ae7a92b1bfabdb9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9ca06e92-0f43-c321-a1f2-f2b07a575d7d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 104–116.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem natDegree_minpolyX :
    (f.minpolyX K⟮f⟯).natDegree = max f.num.natDegree f.denom.natDegree := by
  by_cases hf : ∃ c, f = C c
  · obtain ⟨c, rfl⟩ := hf
    simp
  apply le_antisymm
  · have : (f.minpolyX K⟮f⟯).natDegree ≤ _ := natDegree_sub_le _ _
    rw [natDegree_map, natDegree_C_mul fun H ↦ hf ⟨0, by simpa [map_zero] using congr($(H).val)⟩,
      natDegree_map] at this
    exact this
  · exact max_le (natDegree_num_le_natDegree_minpolyX f hf) <| le_natDegree_of_ne_zero
      fun H ↦ hf (f.eq_C_of_minpolyX_coeff_eq_zero congr($(H).val))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/IntermediateField/Variantc55649d5661e135169642ce567955200452a400626bc438d9ae7a92b1bfabdb9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/IntermediateField/Variantc55649d5661e135169642ce567955200452a400626bc438d9ae7a92b1bfabdb9.lean#L104).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bd7cfed4ff94caa50cfa13be10e6574a69af2f2a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
