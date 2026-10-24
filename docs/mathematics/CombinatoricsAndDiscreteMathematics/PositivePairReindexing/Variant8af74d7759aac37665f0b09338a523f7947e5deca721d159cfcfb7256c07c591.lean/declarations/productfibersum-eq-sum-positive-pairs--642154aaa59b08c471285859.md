# productFiberSum_eq_sum_positive_pairs

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bdac92d6-9592-ee5c-871e-029aa940caf1",
  "kind": "theorem",
  "lexical_name": "productFiberSum_eq_sum_positive_pairs",
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
  "slug": "productfibersum-eq-sum-positive-pairs--642154aaa59b08c471285859",
  "source": {
    "blob": "ef1464a3429547aba121b5cddf164f75d2a3c8fd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 123,
    "line": 97,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/PositivePairReindexing/Variant8af74d7759aac37665f0b09338a523f7947e5deca721d159cfcfb7256c07c591.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:642154aaa59b08c471285859b2dda034ceb77072a769ec093cd61deb785bef21",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/PositivePairReindexing/Variant8af74d7759aac37665f0b09338a523f7947e5deca721d159cfcfb7256c07c591.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bdac92d6-9592-ee5c-871e-029aa940caf1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 97–123.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem productFiberSum_eq_sum_positive_pairs
    (F : Nat → Nat → Complex)
    (n : Nat) :
    productFiberSum F n =
      ∑ x : PositiveFactorPair n, F x.left x.right := by
  classical
  let e : PositiveFactorPair n ≃ {d // d ∈ Nat.divisors n} :=
    { toFun := fun x => ⟨x.d, x.hdvd⟩
      invFun := fun x => ⟨x.1, x.2⟩
      left_inv := by
        intro x
        cases x
        rfl
      right_inv := by
        intro x
        cases x
        rfl }
  have hsum :
      (∑ x : PositiveFactorPair n, F x.left x.right) =
        ∑ x : {d // d ∈ Nat.divisors n}, F x.1 (n / x.1) := by
    exact Fintype.sum_equiv e _ _ (by intro x; rfl)
  rw [hsum]
  simp [productFiberSum]

end AnalyticNumberTheory
end Rebuild
end Folder
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/PositivePairReindexing/Variant8af74d7759aac37665f0b09338a523f7947e5deca721d159cfcfb7256c07c591.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/PositivePairReindexing/Variant8af74d7759aac37665f0b09338a523f7947e5deca721d159cfcfb7256c07c591.lean#L97).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ef1464a3429547aba121b5cddf164f75d2a3c8fd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
