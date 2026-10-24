# isLittleO_exp_neg_mul_sq_cocompact

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ded0add86e0d70e917cf9fa58af4a92373418336",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 78,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b8/b8eab715bff1f1f28932b8ff1b2b3051108b9dc83ce50ede77b8e6fbd1a57d42.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:bea78f93-9b0a-99c8-fef9-3dd13b24577e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:50f7b19c-1d88-9453-33b8-ea8dd26cf7dd",
  "kind": "theorem",
  "lexical_name": "isLittleO_exp_neg_mul_sq_cocompact",
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
  "slug": "islittleo-exp-neg-mul-sq-cocompact--6f13f9c093b8dccd3d2363d2",
  "source": {
    "blob": "ded0add86e0d70e917cf9fa58af4a92373418336",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 85,
    "line": 78,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/PoissonSummation/Variantb8eab715bff1f1f28932b8ff1b2b3051108b9dc83ce50ede77b8e6fbd1a57d42.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6f13f9c093b8dccd3d2363d290362c60bfc6300f197d1a314bd754051fc7ca54",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/PoissonSummation/Variantb8eab715bff1f1f28932b8ff1b2b3051108b9dc83ce50ede77b8e6fbd1a57d42.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:50f7b19c-1d88-9453-33b8-ea8dd26cf7dd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 78–85.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isLittleO_exp_neg_mul_sq_cocompact {a : ℂ} (ha : 0 < a.re) (s : ℝ) :
    (fun x : ℝ => Complex.exp (-a * x ^ 2)) =o[cocompact ℝ] fun x : ℝ => |x| ^ s := by
  convert! cexp_neg_quadratic_isLittleO_abs_rpow_cocompact (?_ : (-a).re < 0) 0 s using 1
  · simp_rw [zero_mul, add_zero]
  · rwa [neg_re, neg_lt_zero]

/-- Jacobi's theta-function transformation formula for the sum of `exp -Q(x)`, where `Q` is a
negative definite quadratic form. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/PoissonSummation/Variantb8eab715bff1f1f28932b8ff1b2b3051108b9dc83ce50ede77b8e6fbd1a57d42.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/PoissonSummation/Variantb8eab715bff1f1f28932b8ff1b2b3051108b9dc83ce50ede77b8e6fbd1a57d42.lean#L78).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ded0add86e0d70e917cf9fa58af4a92373418336` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
