# existsUnique_hilbertPoly

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5ba900da2d4a085ed232c1fa0754ccaf8e6a4e39",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 190,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a4/a4c6f9627c26b61a9c10dd67dafdb86f3a2185080d9c98f8a95744abc7af3c33.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:043f59d0-ec66-731f-9c57-519baaa7d679",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:040572dc-e532-3347-f729-76871305ac92",
  "kind": "theorem",
  "lexical_name": "existsUnique_hilbertPoly",
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
  "slug": "existsunique-hilbertpoly--121f2bc0fac980fe9e464418",
  "source": {
    "blob": "5ba900da2d4a085ed232c1fa0754ccaf8e6a4e39",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 209,
    "line": 190,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/HilbertPoly/Varianta4c6f9627c26b61a9c10dd67dafdb86f3a2185080d9c98f8a95744abc7af3c33.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:121f2bc0fac980fe9e4644180635f222dc6bb90cc9be4f547fb93f8c516e6fa9",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/HilbertPoly/Varianta4c6f9627c26b61a9c10dd67dafdb86f3a2185080d9c98f8a95744abc7af3c33.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:040572dc-e532-3347-f729-76871305ac92`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 190–209.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem existsUnique_hilbertPoly (p : F[X]) (d : ℕ) :
    ∃! h : F[X], ∃ N : ℕ, ∀ n > N,
      PowerSeries.coeff F n (p * invOneSubPow F d) = h.eval (n : F) := by
  use hilbertPoly p d; constructor
  · use p.natDegree
    exact fun n => coeff_mul_invOneSubPow_eq_hilbertPoly_eval d
  · rintro h ⟨N, hhN⟩
    apply eq_of_infinite_eval_eq h (hilbertPoly p d)
    apply ((Set.Ioi_infinite (max N p.natDegree)).image cast_injective.injOn).mono
    rintro x ⟨n, hn, rfl⟩
    simp only [Set.mem_Ioi, sup_lt_iff, Set.mem_setOf_eq] at hn ⊢
    rw [← coeff_mul_invOneSubPow_eq_hilbertPoly_eval d hn.2, hhN n hn.1]

@[deprecated (since := "2024-12-17")] alias exists_unique_hilbertPoly := existsUnique_hilbertPoly

/--
If `h : F[X]` and there exists some `N : ℕ` such that for any number `n : ℕ` bigger than `N`
we have `PowerSeries.coeff F n (p * invOneSubPow F d) = h.eval (n : F)`, then `h` is exactly
`Polynomial.hilbertPoly p d`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/HilbertPoly/Varianta4c6f9627c26b61a9c10dd67dafdb86f3a2185080d9c98f8a95744abc7af3c33.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/HilbertPoly/Varianta4c6f9627c26b61a9c10dd67dafdb86f3a2185080d9c98f8a95744abc7af3c33.lean#L190).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5ba900da2d4a085ed232c1fa0754ccaf8e6a4e39` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
