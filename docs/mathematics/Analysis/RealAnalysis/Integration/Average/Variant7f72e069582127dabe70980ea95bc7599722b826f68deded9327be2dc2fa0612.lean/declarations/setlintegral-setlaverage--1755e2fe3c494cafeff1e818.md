# setLIntegral_setLAverage

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5c09f5bf38f21d132cf04f107eb43830375cbfbb",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 243,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7f/7f72e069582127dabe70980ea95bc7599722b826f68deded9327be2dc2fa0612.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a32a5b7b-d12d-879d-3932-e07201c897e9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6292613f-e6f6-0cd6-c90d-00cf8a303d44",
  "kind": "theorem",
  "lexical_name": "setLIntegral_setLAverage",
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
  "slug": "setlintegral-setlaverage--1755e2fe3c494cafeff1e818",
  "source": {
    "blob": "5c09f5bf38f21d132cf04f107eb43830375cbfbb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 263,
    "line": 243,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Average/Variant7f72e069582127dabe70980ea95bc7599722b826f68deded9327be2dc2fa0612.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1755e2fe3c494cafeff1e81803479a7ba14051bd2b54cde15e90acd609a0e536",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Average/Variant7f72e069582127dabe70980ea95bc7599722b826f68deded9327be2dc2fa0612.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6292613f-e6f6-0cd6-c90d-00cf8a303d44`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 243–263.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem setLIntegral_setLAverage (μ : Measure α) [IsFiniteMeasure μ] (f : α → ℝ≥0∞) (s : Set α) :
    ∫⁻ _x in s, ⨍⁻ a in s, f a ∂μ ∂μ = ∫⁻ x in s, f x ∂μ :=
  lintegral_laverage _ _

@[deprecated (since := "2025-04-22")] alias setLintegral_setLaverage := setLIntegral_setLAverage

end ENNReal

section NormedAddCommGroup

variable (μ)
variable {f g : α → E}

/-- Average value of a function `f` w.r.t. a measure `μ`, denoted `⨍ x, f x ∂μ`.

It is equal to `(μ.real univ)⁻¹ • ∫ x, f x ∂μ`, so it takes value zero if `f` is not integrable or
if `μ` is an infinite measure. If `μ` is a probability measure, then the average of any function is
equal to its integral.

For the average on a set, use `⨍ x in s, f x ∂μ`, defined as `⨍ x, f x ∂(μ.restrict s)`. For the
average w.r.t. the volume, one can omit `∂volume`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Average/Variant7f72e069582127dabe70980ea95bc7599722b826f68deded9327be2dc2fa0612.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Average/Variant7f72e069582127dabe70980ea95bc7599722b826f68deded9327be2dc2fa0612.lean#L243).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5c09f5bf38f21d132cf04f107eb43830375cbfbb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
