# InnerProductSpace.isPositive_rankOne_self

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f560e852-a1ec-d94c-6629-eca6e5793973",
  "kind": "lemma",
  "lexical_name": "InnerProductSpace.isPositive_rankOne_self",
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
  "slug": "innerproductspace-ispositive-rankone-self--5f4a6bcdb24b40584fdb970d",
  "source": {
    "blob": "dfeea1d22145aa5e14fe4588b9aa41a4451e4753",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 559,
    "line": 552,
    "path": "GRWTSK/Algebra/LinearAlgebra/Positive/Variant7c451eca316c4a4b315258bba9090585fffae97589b48a12c3f9df28859eedbb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5f4a6bcdb24b40584fdb970de4f1bf943166e8f1faffee007c63909ae6f09711",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Positive/Variant7c451eca316c4a4b315258bba9090585fffae97589b48a12c3f9df28859eedbb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f560e852-a1ec-d94c-6629-eca6e5793973`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 552–559.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] lemma InnerProductSpace.isPositive_rankOne_self (x : E) :
    (rankOne 𝕜 x x).IsPositive := by
  simp_rw [ContinuousLinearMap.isPositive_iff, isSymmetric_rankOne_self, rankOne_apply,
    inner_smul_left, RCLike.conj_mul, ← RCLike.ofReal_pow, RCLike.ofReal_nonneg]
  simp

/-- In finite-dimensional spaces, a continuous linear map is positive iff it is equal to the sum
of rank-one positive operators. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Positive/Variant7c451eca316c4a4b315258bba9090585fffae97589b48a12c3f9df28859eedbb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Positive/Variant7c451eca316c4a4b315258bba9090585fffae97589b48a12c3f9df28859eedbb.lean#L552).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dfeea1d22145aa5e14fe4588b9aa41a4451e4753` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
