# native_contact_no_source_quadratic_domination

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b67c7730-f8de-a4c1-05f0-294bf761ec37",
  "kind": "theorem",
  "lexical_name": "native_contact_no_source_quadratic_domination",
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
  "slug": "native-contact-no-source-quadratic-domination--3e404513eca21193a795744a",
  "source": {
    "blob": "b2d5c5c85f91756bf84d7167ba273afb7e6654b5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 132,
    "line": 114,
    "path": "GRWTSK/Algebra/LinearAlgebra/CausalContactSeparation/Variant3c4cce45822bdf97e29e61da73a21201fa2924fa0e4188a237cccfd32c4b43b1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3e404513eca21193a795744aaf5833b5f811200baa9f6b41e065af05e6fc9687",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/CausalContactSeparation/Variant3c4cce45822bdf97e29e61da73a21201fa2924fa0e4188a237cccfd32c4b43b1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b67c7730-f8de-a4c1-05f0-294bf761ec37`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 114–132.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem native_contact_no_source_quadratic_domination {A : ℝ} (hA : 0 < A)
    {n : ℕ} (hn : 1 ≤ n) (C : ℝ) :
    ¬ ∀ w : ℕ → ℝ,
      (∑ m ∈ inventory (Real.log (n : ℝ)), ∑ k ∈ inventory (Real.log (n : ℝ)),
        w m * w k * SourceGram.sourceGram A m k) ≤
      C * ArithmeticPickupGram.quadraticForm (Real.log (n : ℝ))
        (inventory (Real.log (n : ℝ))) w := by
  change ¬ ∀ w : ℕ → ℝ,
    orderedQuadratic (SourceGram.sourceGram A) (inventory (Real.log (n : ℝ))) w ≤
      C * orderedQuadratic (gram (Real.log (n : ℝ)))
        (inventory (Real.log (n : ℝ))) w
  apply no_uniform_domination
  · exact SourceNativeSeparation.touching_atom_in_inventory hn
  · exact SourceNativeSeparation.native_touching_diagonal_zero hn
  · rw [SourceGram.source_gram_diagonal_eq_one hA]
    norm_num

/-- The same restricted obstructions occur with the prescribed T = 2A, A ≥ 1.
This full-vector assertion supplies no claim about the distinguished Möbius vector. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/CausalContactSeparation/Variant3c4cce45822bdf97e29e61da73a21201fa2924fa0e4188a237cccfd32c4b43b1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/CausalContactSeparation/Variant3c4cce45822bdf97e29e61da73a21201fa2924fa0e4188a237cccfd32c4b43b1.lean#L114).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b2d5c5c85f91756bf84d7167ba273afb7e6654b5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
