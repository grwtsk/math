# dirichletPolynomialComplex_mul_pair_expanded

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:64953fe2-2ff1-ed25-5a0b-5391cc71fadd",
  "kind": "theorem",
  "lexical_name": "dirichletPolynomialComplex_mul_pair_expanded",
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
  "slug": "dirichletpolynomialcomplex-mul-pair-expanded--8ed33a4a22fb47adb5373e1b",
  "source": {
    "blob": "1b636be8d2890125f8653515ee8a3ae934411e6a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 70,
    "line": 41,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/WeightedDirichletPolynomialProduct/Variant1abbace59cc18afccfc82f9b9ec611a18db9f4b8723e79ef7901c434d23c1332.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8ed33a4a22fb47adb5373e1b400dcee3b82fe97882bbade974d7fd4d29e8dfd2",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/WeightedDirichletPolynomialProduct/Variant1abbace59cc18afccfc82f9b9ec611a18db9f4b8723e79ef7901c434d23c1332.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:64953fe2-2ff1-ed25-5a0b-5391cc71fadd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 41–70.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem dirichletPolynomialComplex_mul_pair_expanded
    (a b : ArithFn Complex)
    (σ : Real)
    (N : Nat) :
    dirichletPolynomialComplex a σ N *
      dirichletPolynomialComplex b σ N =
    ∑ d ∈ Finset.Icc 1 N, ∑ e ∈ Finset.Icc 1 N,
      a d * b e *
        (((posWeightReal σ (d * e) : Real) : Complex)) := by
  unfold dirichletPolynomialComplex
  calc
    (∑ i ∈ Finset.Icc 1 N, a i * ↑(posWeightReal σ i)) *
        (∑ j ∈ Finset.Icc 1 N, b j * ↑(posWeightReal σ j))
        = ∑ i ∈ Finset.Icc 1 N, ∑ j ∈ Finset.Icc 1 N,
            (a i * ↑(posWeightReal σ i)) * (b j * ↑(posWeightReal σ j)) := by
            rw [Finset.sum_mul_sum]
    _ = ∑ i ∈ Finset.Icc 1 N, ∑ j ∈ Finset.Icc 1 N,
          a i * b j * ↑(posWeightReal σ (i * j)) := by
          refine Finset.sum_congr rfl ?_
          intro i hi
          refine Finset.sum_congr rfl ?_
          intro j hj
          have hipos : 0 < i :=
            lt_of_lt_of_le Nat.zero_lt_one (Finset.mem_Icc.mp hi).1
          have hjpos : 0 < j :=
            lt_of_lt_of_le Nat.zero_lt_one (Finset.mem_Icc.mp hj).1
          have hw := posWeightComplex_mul σ hipos hjpos
          rw [hw]
          ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/WeightedDirichletPolynomialProduct/Variant1abbace59cc18afccfc82f9b9ec611a18db9f4b8723e79ef7901c434d23c1332.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/WeightedDirichletPolynomialProduct/Variant1abbace59cc18afccfc82f9b9ec611a18db9f4b8723e79ef7901c434d23c1332.lean#L41).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1b636be8d2890125f8653515ee8a3ae934411e6a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
