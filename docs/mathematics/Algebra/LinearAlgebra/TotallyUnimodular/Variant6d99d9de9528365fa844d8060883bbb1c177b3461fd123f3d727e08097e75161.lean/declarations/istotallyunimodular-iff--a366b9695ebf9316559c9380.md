# isTotallyUnimodular_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e8f088119bff9c37cfbb5a5e977d73c9dd390e27",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 38,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6d/6d99d9de9528365fa844d8060883bbb1c177b3461fd123f3d727e08097e75161.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d597e137-2444-a2da-3027-d3a3fd4c958e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6be1bdd3-1f70-48e3-f3f1-f098d6aa41da",
  "kind": "lemma",
  "lexical_name": "isTotallyUnimodular_iff",
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
  "slug": "istotallyunimodular-iff--a366b9695ebf9316559c9380",
  "source": {
    "blob": "e8f088119bff9c37cfbb5a5e977d73c9dd390e27",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 56,
    "line": 38,
    "path": "GRWTSK/Algebra/LinearAlgebra/TotallyUnimodular/Variant6d99d9de9528365fa844d8060883bbb1c177b3461fd123f3d727e08097e75161.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a366b9695ebf9316559c93804a856233eab706f3e09a042c48b17077405967db",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/TotallyUnimodular/Variant6d99d9de9528365fa844d8060883bbb1c177b3461fd123f3d727e08097e75161.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6be1bdd3-1f70-48e3-f3f1-f098d6aa41da`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 38–56.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isTotallyUnimodular_iff (A : Matrix m n R) : A.IsTotallyUnimodular ↔
    ∀ k : ℕ, ∀ f : Fin k → m, ∀ g : Fin k → n,
      (A.submatrix f g).det ∈ Set.range SignType.cast := by
  constructor <;> intro hA
  · intro k f g
    by_cases hfg : f.Injective ∧ g.Injective
    · exact hA k f g hfg.1 hfg.2
    · use 0
      rw [SignType.coe_zero, eq_comm]
      simp_rw [not_and_or, Function.not_injective_iff] at hfg
      obtain ⟨i, j, hfij, hij⟩ | ⟨i, j, hgij, hij⟩ := hfg
      · rw [← det_transpose, transpose_submatrix]
        apply det_zero_of_column_eq hij.symm
        simp [hfij]
      · apply det_zero_of_column_eq hij
        simp [hgij]
  · intro _ _ _ _ _
    apply hA

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/TotallyUnimodular/Variant6d99d9de9528365fa844d8060883bbb1c177b3461fd123f3d727e08097e75161.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/TotallyUnimodular/Variant6d99d9de9528365fa844d8060883bbb1c177b3461fd123f3d727e08097e75161.lean#L38).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e8f088119bff9c37cfbb5a5e977d73c9dd390e27` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
