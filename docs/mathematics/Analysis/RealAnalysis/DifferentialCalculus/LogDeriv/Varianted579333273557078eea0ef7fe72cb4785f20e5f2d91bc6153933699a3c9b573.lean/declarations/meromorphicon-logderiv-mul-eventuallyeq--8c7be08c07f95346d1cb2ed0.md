# MeromorphicOn.logDeriv_mul_eventuallyEq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c9693dd6fd57e2c98bf3b3875399f196429a420d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 38,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ed/ed579333273557078eea0ef7fe72cb4785f20e5f2d91bc6153933699a3c9b573.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1d08b679-c543-e957-2315-12a467d9b896",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2f036e2f-caf4-b366-a58c-2a19223e4f3f",
  "kind": "theorem",
  "lexical_name": "MeromorphicOn.logDeriv_mul_eventuallyEq",
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
  "slug": "meromorphicon-logderiv-mul-eventuallyeq--8c7be08c07f95346d1cb2ed0",
  "source": {
    "blob": "c9693dd6fd57e2c98bf3b3875399f196429a420d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 53,
    "line": 38,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/LogDeriv/Varianted579333273557078eea0ef7fe72cb4785f20e5f2d91bc6153933699a3c9b573.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8c7be08c07f95346d1cb2ed09fcf9844f201942effdcc6326b1e1ad927c1021a",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/LogDeriv/Varianted579333273557078eea0ef7fe72cb4785f20e5f2d91bc6153933699a3c9b573.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2f036e2f-caf4-b366-a58c-2a19223e4f3f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 38–53.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem MeromorphicOn.logDeriv_mul_eventuallyEq (hf : MeromorphicOn f U) (hg : MeromorphicOn g U)
    (h'f : ∀ x ∈ U, meromorphicOrderAt f x ≠ ⊤) (h'g : ∀ x ∈ U, meromorphicOrderAt g x ≠ ⊤) :
    logDeriv (f * g) =ᶠ[codiscreteWithin U] logDeriv f + logDeriv g := by
  filter_upwards [hf.analyticAt_mem_codiscreteWithin, hg.analyticAt_mem_codiscreteWithin,
    hf.eventually_codiscreteWithin_apply_ne_zero h'f,
    hg.eventually_codiscreteWithin_apply_ne_zero h'g]
    with y h₁y h₂y h₃y h₄y
  rw [Pi.add_apply]
  exact logDeriv_mul y h₃y h₄y h₁y.differentiableAt h₂y.differentiableAt

/--
The logarithmic derivative converts products into sums: away from a codiscrete subset of `𝕜`, the
logarithmic derivative of a product of two meromorphic functions is the sum of the logarithmic
derivatives.
-/
@[to_fun Meromorphic.logDeriv_fun_mul_eventuallyEq]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/LogDeriv/Varianted579333273557078eea0ef7fe72cb4785f20e5f2d91bc6153933699a3c9b573.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/LogDeriv/Varianted579333273557078eea0ef7fe72cb4785f20e5f2d91bc6153933699a3c9b573.lean#L38).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c9693dd6fd57e2c98bf3b3875399f196429a420d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
