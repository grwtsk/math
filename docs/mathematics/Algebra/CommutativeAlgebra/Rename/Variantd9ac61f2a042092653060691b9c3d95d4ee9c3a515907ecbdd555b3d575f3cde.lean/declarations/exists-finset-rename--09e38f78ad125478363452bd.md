# exists_finset_rename

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8d941d31-0891-a5c2-ebd2-4b6b5dd4252f",
  "kind": "theorem",
  "lexical_name": "exists_finset_rename",
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
  "slug": "exists-finset-rename--09e38f78ad125478363452bd",
  "source": {
    "blob": "0f933326fb4d67a9271b91bef8df1d969a29e1a5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 261,
    "line": 236,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Rename/Variantd9ac61f2a042092653060691b9c3d95d4ee9c3a515907ecbdd555b3d575f3cde.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:09e38f78ad125478363452bd4de0ab370d32ded85ef04194c93c004ec44801f8",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Rename/Variantd9ac61f2a042092653060691b9c3d95d4ee9c3a515907ecbdd555b3d575f3cde.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8d941d31-0891-a5c2-ebd2-4b6b5dd4252f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 236–261.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_finset_rename (p : MvPolynomial σ R) :
    ∃ (s : Finset σ) (q : MvPolynomial { x // x ∈ s } R), p = rename (↑) q := by
  classical
  apply induction_on p
  · intro r
    exact ⟨∅, C r, by rw [rename_C]⟩
  · rintro p q ⟨s, p, rfl⟩ ⟨t, q, rfl⟩
    refine' ⟨s ∪ t, ⟨_, _⟩⟩
    · refine' rename (Subtype.map id _) p + rename (Subtype.map id _) q <;>
        simp (config := { contextual := true }) only [id.def, true_or_iff, or_true_iff,
          Finset.mem_union, forall_true_iff]
    · simp only [rename_rename, AlgHom.map_add]
      rfl
  · rintro p n ⟨s, p, rfl⟩
    refine' ⟨insert n s, ⟨_, _⟩⟩
    · refine' rename (Subtype.map id _) p * X ⟨n, s.mem_insert_self n⟩
      simp (config := { contextual := true }) only [id.def, or_true_iff, Finset.mem_insert,
        forall_true_iff]
    · simp only [rename_rename, rename_X, Subtype.coe_mk, AlgHom.map_mul]
      rfl
#align mv_polynomial.exists_finset_rename MvPolynomial.exists_finset_rename

/-- `exists_finset_rename` for two polynomials at once: for any two polynomials `p₁`, `p₂` in a
  polynomial semiring `R[σ]` of possibly infinitely many variables, `exists_finset_rename₂` yields
  a finite subset `s` of `σ` such that both `p₁` and `p₂` are contained in the polynomial semiring
  `R[s]` of finitely many variables. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Rename/Variantd9ac61f2a042092653060691b9c3d95d4ee9c3a515907ecbdd555b3d575f3cde.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Rename/Variantd9ac61f2a042092653060691b9c3d95d4ee9c3a515907ecbdd555b3d575f3cde.lean#L236).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0f933326fb4d67a9271b91bef8df1d969a29e1a5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
