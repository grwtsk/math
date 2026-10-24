# aeval_wittPolynomial

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:32706639-a9e1-e93b-adfb-e6955f5e5882",
  "kind": "theorem",
  "lexical_name": "aeval_wittPolynomial",
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
  "slug": "aeval-wittpolynomial--38288279abe90921d2783be8",
  "source": {
    "blob": "85fe636349227feac6e11bc4df6fbd29183d92c8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 154,
    "line": 148,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/WittPolynomial/Variantfb7ec18606fd2191ff60d04464b2e8e3b33e86270e588ea96e06b185bfb710ff.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:38288279abe90921d2783be8ba2aad5f7af0768da99919abaf5e240bc68b6e41",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/WittPolynomial/Variantfb7ec18606fd2191ff60d04464b2e8e3b33e86270e588ea96e06b185bfb710ff.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:32706639-a9e1-e93b-adfb-e6955f5e5882`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 148–154.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem aeval_wittPolynomial {A : Type*} [CommRing A] [Algebra R A] (f : ℕ → A) (n : ℕ) :
    aeval f (W_ R n) = ∑ i ∈ range (n + 1), (p : A) ^ i * f i ^ p ^ (n - i) := by
  simp [wittPolynomial, map_sum, aeval_monomial, Finsupp.prod_single_index]

/-- Over the ring `ZMod (p^(n+1))`, we produce the `n+1`st Witt polynomial
by expanding the `n`th Witt polynomial by `p`. -/
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/WittPolynomial/Variantfb7ec18606fd2191ff60d04464b2e8e3b33e86270e588ea96e06b185bfb710ff.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/WittPolynomial/Variantfb7ec18606fd2191ff60d04464b2e8e3b33e86270e588ea96e06b185bfb710ff.lean#L148).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `85fe636349227feac6e11bc4df6fbd29183d92c8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
