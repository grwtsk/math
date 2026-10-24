# finite_product_sum_expansion_subtype

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "663d40e3ddfc9954bf96977c82896a9d91b74e04",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 52,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e7/e7ea126c1ff179c97e0ef0021a224f3ceb4a13e2c9610c63a4eded8d558f1112.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:cd6b657d-e914-456c-d12a-263cd1e45a06",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1bc23ae2-52b4-5c8b-ecac-2b982060f3d9",
  "kind": "theorem",
  "lexical_name": "finite_product_sum_expansion_subtype",
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
  "slug": "finite-product-sum-expansion-subtype--d81c1cfcaac62dff6d5ad118",
  "source": {
    "blob": "663d40e3ddfc9954bf96977c82896a9d91b74e04",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 75,
    "line": 52,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/FiniteEulerExponentVectors/Variante7ea126c1ff179c97e0ef0021a224f3ceb4a13e2c9610c63a4eded8d558f1112.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d81c1cfcaac62dff6d5ad118f2e0a4b34b493e25c2c108737135e68ce1ce9ed9",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/FiniteEulerExponentVectors/Variante7ea126c1ff179c97e0ef0021a224f3ceb4a13e2c9610c63a4eded8d558f1112.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1bc23ae2-52b4-5c8b-ecac-2b982060f3d9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 52–75.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finite_product_sum_expansion_subtype
    [CommSemiring R]
    (S : Finset Nat)
    (K : Nat)
    (x : (p : {p : Nat // p ∈ S}) → Fin (K + 1) → R) :
    (∏ p : {p : Nat // p ∈ S},
        ∑ k : Fin (K + 1), x p k)
      =
    ∑ e : ExponentVector S K,
      ∏ p : {p : Nat // p ∈ S}, x p (e p) := by
  classical
  change
    (∏ p : {p : Nat // p ∈ S}, ∑ k : Fin (K + 1), x p k)
      =
    ∑ e : ((p : {p : Nat // p ∈ S}) → Fin (K + 1)),
      ∏ p : {p : Nat // p ∈ S}, x p (e p)
  exact Fintype.prod_sum x

/--
Exact finite Euler-product expansion over bounded exponent vectors.

This is a finite product-of-sums identity. It is the checked finite algebraic
precursor to Euler products, not an infinite Euler-product theorem.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/FiniteEulerExponentVectors/Variante7ea126c1ff179c97e0ef0021a224f3ceb4a13e2c9610c63a4eded8d558f1112.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/FiniteEulerExponentVectors/Variante7ea126c1ff179c97e0ef0021a224f3ceb4a13e2c9610c63a4eded8d558f1112.lean#L52).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `663d40e3ddfc9954bf96977c82896a9d91b74e04` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
