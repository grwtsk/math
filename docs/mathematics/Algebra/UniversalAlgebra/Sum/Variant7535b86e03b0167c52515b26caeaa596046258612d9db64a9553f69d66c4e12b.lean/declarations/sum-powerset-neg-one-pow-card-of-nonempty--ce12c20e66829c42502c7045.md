# sum_powerset_neg_one_pow_card_of_nonempty

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0124a7cf-a56c-7f62-7ec4-72655894e245",
  "kind": "theorem",
  "lexical_name": "sum_powerset_neg_one_pow_card_of_nonempty",
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
  "slug": "sum-powerset-neg-one-pow-card-of-nonempty--ce12c20e66829c42502c7045",
  "source": {
    "blob": "f06529f8a0051e53853de45710fedfb327e12238",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 200,
    "line": 192,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Sum/Variant7535b86e03b0167c52515b26caeaa596046258612d9db64a9553f69d66c4e12b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ce12c20e66829c42502c7045460a1a09d138b2c26efcf74763d22c5fe5bb8b78",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Sum/Variant7535b86e03b0167c52515b26caeaa596046258612d9db64a9553f69d66c4e12b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0124a7cf-a56c-7f62-7ec4-72655894e245`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 192–200.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sum_powerset_neg_one_pow_card_of_nonempty {α : Type*} {x : Finset α} (h0 : x.Nonempty) :
    (∑ m ∈ x.powerset, (-1 : ℤ) ^ #m) = 0 := by
  classical
  rw [sum_powerset_neg_one_pow_card]
  exact if_neg (nonempty_iff_ne_empty.mp h0)

variable [NonAssocSemiring R]

@[to_additive sum_choose_succ_nsmul]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Sum/Variant7535b86e03b0167c52515b26caeaa596046258612d9db64a9553f69d66c4e12b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Sum/Variant7535b86e03b0167c52515b26caeaa596046258612d9db64a9553f69d66c4e12b.lean#L192).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f06529f8a0051e53853de45710fedfb327e12238` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
