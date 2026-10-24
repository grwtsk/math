# apply_mul_absNorm_pow_eq_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c7bf4cd451ec751e28abba4b324dbd759232da16",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 509,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/81/81e217d74199d9319deebe5e9047de7093b9c7e3843d5cf19785e2df9eb86e22.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:779e3add-87e0-e9e4-d463-7cdbd9b91a99",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:36284d36-fdd0-7579-abf4-e38d108ad1ff",
  "kind": "lemma",
  "lexical_name": "apply_mul_absNorm_pow_eq_one",
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
  "slug": "apply-mul-absnorm-pow-eq-one--cdc79fe112b2e36aba3ce152",
  "source": {
    "blob": "c7bf4cd451ec751e28abba4b324dbd759232da16",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 530,
    "line": 509,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/FinitePlace/Variant81e217d74199d9319deebe5e9047de7093b9c7e3843d5cf19785e2df9eb86e22.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cdc79fe112b2e36aba3ce1524f19af02e8ba640a3292620c32fe4fb829517352",
  "verification": {
    "reference": "docs/verification/NumberTheory/AlgebraicNumberTheory/FinitePlace/Variant81e217d74199d9319deebe5e9047de7093b9c7e3843d5cf19785e2df9eb86e22.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:36284d36-fdd0-7579-abf4-e38d108ad1ff`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 509–530.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma apply_mul_absNorm_pow_eq_one (v : FinitePlace K) {x : 𝓞 K} (hx : x ≠ 0) :
    v x * v.maximalIdeal.asIdeal.absNorm ^ multiplicity v.maximalIdeal.asIdeal (span {x}) = 1 := by
  have hnz : span {x} ≠ ⊥ := mt Submodule.span_singleton_eq_bot.mp hx
  rw [← norm_embedding_eq v x, ← Nat.cast_pow, ← map_pow, ← maxPowDividing_eq_pow_multiplicity hnz]
  exact HeightOneSpectrum.embedding_mul_absNorm K v.maximalIdeal hx

end FinitePlace

section LiesOver

namespace HeightOneSpectrum

variable [NumberField K] [NumberField L]
variable (v : HeightOneSpectrum (𝓞 K)) (w : HeightOneSpectrum (𝓞 L))
variable [Algebra (v.adicCompletion K) (w.adicCompletion L)]
    [ContinuousSMul (v.adicCompletion K) (w.adicCompletion L)]
    [IsScalarTower K (v.adicCompletion K) (w.adicCompletion L)]

local notation "Kv" => v.adicCompletion K
local notation "Lw" => w.adicCompletion L

open scoped TensorProduct Valued in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AlgebraicNumberTheory/FinitePlace/Variant81e217d74199d9319deebe5e9047de7093b9c7e3843d5cf19785e2df9eb86e22.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/FinitePlace/Variant81e217d74199d9319deebe5e9047de7093b9c7e3843d5cf19785e2df9eb86e22.lean#L509).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c7bf4cd451ec751e28abba4b324dbd759232da16` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
