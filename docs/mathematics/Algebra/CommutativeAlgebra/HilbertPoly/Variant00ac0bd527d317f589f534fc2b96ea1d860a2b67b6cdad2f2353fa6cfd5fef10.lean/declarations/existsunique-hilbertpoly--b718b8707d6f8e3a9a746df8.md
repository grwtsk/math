# existsUnique_hilbertPoly

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f865d83f-3d23-6b57-c7af-0b70baf2e0f4",
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
  "slug": "existsunique-hilbertpoly--b718b8707d6f8e3a9a746df8",
  "source": {
    "blob": "5bc3eb6bf4c4060ed3363a8d79b6ad86ba3daeea",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 217,
    "line": 198,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/HilbertPoly/Variant00ac0bd527d317f589f534fc2b96ea1d860a2b67b6cdad2f2353fa6cfd5fef10.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b718b8707d6f8e3a9a746df8d488f46be785e576fe71bc4d54eff2041517ff0a",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/HilbertPoly/Variant00ac0bd527d317f589f534fc2b96ea1d860a2b67b6cdad2f2353fa6cfd5fef10.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f865d83f-3d23-6b57-c7af-0b70baf2e0f4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 198–217.

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

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/HilbertPoly/Variant00ac0bd527d317f589f534fc2b96ea1d860a2b67b6cdad2f2353fa6cfd5fef10.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/HilbertPoly/Variant00ac0bd527d317f589f534fc2b96ea1d860a2b67b6cdad2f2353fa6cfd5fef10.lean#L198).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5bc3eb6bf4c4060ed3363a8d79b6ad86ba3daeea` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
