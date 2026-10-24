# monicEquivDegreeLT

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ac07913c520f0fade8af53a5b47ca507cc60ae6c41a7eba1bc9e9dfc53c627df",
  "kind": "def",
  "lexical_name": "monicEquivDegreeLT",
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
  "slug": "monicequivdegreelt--11b900131d07e5ade3db2f20",
  "source": {
    "blob": "51041a110ec6b5e459de21911b0198e43f3b65ab",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 208,
    "line": 181,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Basic/Variant1b6c59ee64c02ec09ccec0e27175ff713f5245e2a6468d5d9342f58aeb61a4e1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:11b900131d07e5ade3db2f20a4fa79f07f4930c9dd275c816eb9801c21b8eb18",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Basic/Variant1b6c59ee64c02ec09ccec0e27175ff713f5245e2a6468d5d9342f58aeb61a4e1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ac07913c520f0fade8af53a5b47ca507cc60ae6c41a7eba1bc9e9dfc53c627df`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 181–208.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def monicEquivDegreeLT [Nontrivial R] (n : ℕ) :
    { p : R[X] // p.Monic ∧ p.natDegree = n } ≃ degreeLT R n where
  toFun p := ⟨p.1.eraseLead, by
    rcases p with ⟨p, hp, rfl⟩
    simp only [mem_degreeLT]
    refine lt_of_lt_of_le ?_ degree_le_natDegree
    exact degree_eraseLead_lt (ne_zero_of_ne_zero_of_monic one_ne_zero hp)⟩
  invFun := fun p =>
    ⟨X^n + p.1, monic_X_pow_add (mem_degreeLT.1 p.2), by
        rw [natDegree_add_eq_left_of_degree_lt]
        · simp
        · simp [mem_degreeLT.1 p.2]⟩
  left_inv := by
    rintro ⟨p, hp, rfl⟩
    ext1
    simp only
    conv_rhs => rw [← eraseLead_add_C_mul_X_pow p]
    simp [Monic.def.1 hp, add_comm]
  right_inv := by
    rintro ⟨p, hp⟩
    ext1
    simp only
    rw [eraseLead_add_of_degree_lt_left]
    · simp
    · simp [mem_degreeLT.1 hp]

/-- For every polynomial `p` in the span of a set `s : Set R[X]`, there exists a polynomial of
  `p' ∈ s` with higher degree. See also `Polynomial.exists_degree_le_of_mem_span_of_finite`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Basic/Variant1b6c59ee64c02ec09ccec0e27175ff713f5245e2a6468d5d9342f58aeb61a4e1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Basic/Variant1b6c59ee64c02ec09ccec0e27175ff713f5245e2a6468d5d9342f58aeb61a4e1.lean#L181).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `51041a110ec6b5e459de21911b0198e43f3b65ab` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
