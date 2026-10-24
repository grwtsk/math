# evalDomainValidAffine_of_ExprSupported

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0ffc984b99a55970796ddec55732ef4e61bcb806",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 206,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/28/282d7cfeba2622654816e7755f858d14914022c5e1ba2403ac6e853d4959b9c6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ec7140ea-6763-6c5e-cb3c-fc6378e2bc64",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2cbf8aed-b59c-9cd7-385f-96f7a5039aa6",
  "kind": "theorem",
  "lexical_name": "evalDomainValidAffine_of_ExprSupported",
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
  "slug": "evaldomainvalidaffine-of-exprsupported--18058219c85edc6007c8095b",
  "source": {
    "blob": "0ffc984b99a55970796ddec55732ef4e61bcb806",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 227,
    "line": 206,
    "path": "GRWTSK/Analysis/SpecialFunctions/IntervalEvalAffine/Variant282d7cfeba2622654816e7755f858d14914022c5e1ba2403ac6e853d4959b9c6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:18058219c85edc6007c8095b2f67dfe038a0de199577961ecf2653f79030feed",
  "verification": {
    "reference": "docs/verification/Analysis/SpecialFunctions/IntervalEvalAffine/Variant282d7cfeba2622654816e7755f858d14914022c5e1ba2403ac6e853d4959b9c6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2cbf8aed-b59c-9cd7-385f-96f7a5039aa6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 206–227.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem evalDomainValidAffine_of_ExprSupported {e : Expr} (hsupp : ExprSupported e)
    (ρ : AffineEnv) (cfg : AffineConfig := {}) : evalDomainValidAffine e ρ cfg := by
  induction hsupp with
  | const _ => trivial
  | var _ => trivial
  | add _ _ ih1 ih2 => exact ⟨ih1, ih2⟩
  | mul _ _ ih1 ih2 => exact ⟨ih1, ih2⟩
  | neg _ ih => exact ih
  | sin _ ih => exact ih
  | cos _ ih => exact ih
  | exp _ ih => exact ih

/-- Correctness theorem for Affine interval evaluation.

If all input variables are represented by their affine forms (via noise assignment eps),
then the real evaluation of the expression is represented by the affine result.

This proves soundness: the affine form always contains the true value.

Note: Requires valid noise assignment and domain validity for log.
Some transcendental cases (sin, cos, pi) use interval fallback and have
separate soundness via interval bounds. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/SpecialFunctions/IntervalEvalAffine/Variant282d7cfeba2622654816e7755f858d14914022c5e1ba2403ac6e853d4959b9c6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/SpecialFunctions/IntervalEvalAffine/Variant282d7cfeba2622654816e7755f858d14914022c5e1ba2403ac6e853d4959b9c6.lean#L206).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0ffc984b99a55970796ddec55732ef4e61bcb806` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
