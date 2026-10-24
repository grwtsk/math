# finite_product_sum_expansion_subtype

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3274adc0-3a72-4ad2-3ca6-4b3e303a1d34",
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
  "slug": "finite-product-sum-expansion-subtype--62e21f4df9825d1eb209d7a4",
  "source": {
    "blob": "5a6720731a3e5409cd5549da583b90e404e223e9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 83,
    "line": 60,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/FiniteEulerExponentVectors/Variant3d5b2766c89951d3c7502fd2dedd39c9f1c8dde76f647a95c13a0a1c9c772efa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:62e21f4df9825d1eb209d7a40af587d8812f8cf8885901c5495f79a4d47cdcf4",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/FiniteEulerExponentVectors/Variant3d5b2766c89951d3c7502fd2dedd39c9f1c8dde76f647a95c13a0a1c9c772efa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3274adc0-3a72-4ad2-3ca6-4b3e303a1d34`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 60–83.

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

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/FiniteEulerExponentVectors/Variant3d5b2766c89951d3c7502fd2dedd39c9f1c8dde76f647a95c13a0a1c9c772efa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/FiniteEulerExponentVectors/Variant3d5b2766c89951d3c7502fd2dedd39c9f1c8dde76f647a95c13a0a1c9c772efa.lean#L60).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5a6720731a3e5409cd5549da583b90e404e223e9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
