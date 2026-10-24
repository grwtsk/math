# NormedAddCommGroup.ofMatrix

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:05d4b4804915dc95594819e631936085001c09af2e841bfaeefb99b3b93c862e",
  "kind": "abbrev",
  "lexical_name": "NormedAddCommGroup.ofMatrix",
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
  "slug": "normedaddcommgroup-ofmatrix--56d0cc08a8ac72056ed574c2",
  "source": {
    "blob": "8a073a067a25a3cba971bb00baffda86dafe8e1a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 617,
    "line": 599,
    "path": "GRWTSK/Algebra/LinearAlgebra/PosDef/Variant8f6d1529db1144edc5c289621848b970a3ebe1f35198a9232ac0c88fba263a48.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:56d0cc08a8ac72056ed574c26951b6d7a545e443c66cfa7288d6444126d63cdd",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/PosDef/Variant8f6d1529db1144edc5c289621848b970a3ebe1f35198a9232ac0c88fba263a48.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:05d4b4804915dc95594819e631936085001c09af2e841bfaeefb99b3b93c862e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 599–617.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable abbrev NormedAddCommGroup.ofMatrix {M : Matrix n n 𝕜} (hM : M.PosDef) :
    NormedAddCommGroup (n → 𝕜) :=
  @InnerProductSpace.Core.toNormedAddCommGroup _ _ _ _ _
    { inner := fun x y => (M *ᵥ y) ⬝ᵥ star x
      conj_inner_symm := fun x y => by
        rw [dotProduct_comm, star_dotProduct, starRingEnd_apply, star_star,
          star_mulVec, dotProduct_comm (M *ᵥ y), dotProduct_mulVec, hM.isHermitian.eq]
      re_inner_nonneg := fun x => by
        by_cases h : x = 0
        · simp [h]
        · exact (dotProduct_comm _ (M *ᵥ x) ▸ hM.re_dotProduct_pos h).le
      definite := fun x (hx : _ ⬝ᵥ _ = 0) => by
        by_contra! h
        simpa [hx, lt_irrefl, dotProduct_comm] using hM.re_dotProduct_pos h
      add_left := by simp only [star_add, dotProduct_add, eq_self_iff_true, forall_const]
      smul_left := fun x y r => by
        rw [← smul_eq_mul, ← dotProduct_smul, starRingEnd_apply, ← star_smul] }

/-- A positive definite matrix `M` induces an inner product `⟪x, y⟫ = xᴴMy`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/PosDef/Variant8f6d1529db1144edc5c289621848b970a3ebe1f35198a9232ac0c88fba263a48.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/PosDef/Variant8f6d1529db1144edc5c289621848b970a3ebe1f35198a9232ac0c88fba263a48.lean#L599).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8a073a067a25a3cba971bb00baffda86dafe8e1a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
