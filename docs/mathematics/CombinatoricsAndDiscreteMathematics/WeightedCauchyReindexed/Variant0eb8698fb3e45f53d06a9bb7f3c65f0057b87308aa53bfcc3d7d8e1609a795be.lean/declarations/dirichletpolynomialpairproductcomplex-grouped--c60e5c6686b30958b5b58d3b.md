# dirichletPolynomialPairProductComplex_grouped

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1368b8c699acfcff4c59209472eb1bcad26194e9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 86,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0e/0eb8698fb3e45f53d06a9bb7f3c65f0057b87308aa53bfcc3d7d8e1609a795be.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5fb8b409-97de-c6f2-20b3-f73b5b0fac76",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:095bd70c-7df6-952a-ed0a-de4472f8cf87",
  "kind": "theorem",
  "lexical_name": "dirichletPolynomialPairProductComplex_grouped",
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
  "slug": "dirichletpolynomialpairproductcomplex-grouped--c60e5c6686b30958b5b58d3b",
  "source": {
    "blob": "1368b8c699acfcff4c59209472eb1bcad26194e9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 115,
    "line": 86,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/WeightedCauchyReindexed/Variant0eb8698fb3e45f53d06a9bb7f3c65f0057b87308aa53bfcc3d7d8e1609a795be.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c60e5c6686b30958b5b58d3b2453e6dda7032702c7fd5a490407f19ce8fbf6d7",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/WeightedCauchyReindexed/Variant0eb8698fb3e45f53d06a9bb7f3c65f0057b87308aa53bfcc3d7d8e1609a795be.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:095bd70c-7df6-952a-ed0a-de4472f8cf87`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 86–115.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem dirichletPolynomialPairProductComplex_grouped
    (a b : ArithFn Complex)
    (σ : Real)
    (N : Nat) :
    dirichletPolynomialPairProductComplex a b σ N =
      ∑ n ∈ Finset.Icc 1 (N * N),
        boundedDirichletConv N a b n *
          (((posWeightReal σ n : Real) : Complex)) := by
  let w : Nat → Complex := fun n => (((posWeightReal σ n : Real) : Complex))
  calc
    dirichletPolynomialPairProductComplex a b σ N
        = ∑ de ∈ (Finset.Icc 1 N).product (Finset.Icc 1 N),
            a de.1 * b de.2 * w (de.1 * de.2) := by
          rfl
    _ = ∑ n ∈ Finset.Icc 1 (N * N), pairProductByValue N n a b * w n := by
          exact (pairProductByValue_weighted_grouping N a b w).symm
    _ = ∑ n ∈ Finset.Icc 1 (N * N),
          boundedDirichletConv N a b n * w n := by
          refine Finset.sum_congr rfl ?_
          intro n hn
          have hnpos : 0 < n :=
            lt_of_lt_of_le Nat.zero_lt_one (Finset.mem_Icc.mp hn).1
          rw [pairProductByValue_eq_boundedDirichletConv N n a b hnpos]

/--
Checked divisor-reindexed weighted finite Cauchy product.

This is a finite Dirichlet-polynomial identity. It is not the infinite
Dirichlet-series Cauchy product and does not assert analytic Euler products.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/WeightedCauchyReindexed/Variant0eb8698fb3e45f53d06a9bb7f3c65f0057b87308aa53bfcc3d7d8e1609a795be.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/WeightedCauchyReindexed/Variant0eb8698fb3e45f53d06a9bb7f3c65f0057b87308aa53bfcc3d7d8e1609a795be.lean#L86).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1368b8c699acfcff4c59209472eb1bcad26194e9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
