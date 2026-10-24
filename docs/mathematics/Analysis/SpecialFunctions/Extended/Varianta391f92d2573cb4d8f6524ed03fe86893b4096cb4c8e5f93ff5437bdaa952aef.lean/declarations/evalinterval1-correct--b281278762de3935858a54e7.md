# evalInterval1_correct

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:50d8b85f-f69c-3c17-1a1b-aab720e20d08",
  "kind": "theorem",
  "lexical_name": "evalInterval1_correct",
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
  "slug": "evalinterval1-correct--b281278762de3935858a54e7",
  "source": {
    "blob": "c6c8968e1e1054c142c16146397b6c46d2109099",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 144,
    "line": 128,
    "path": "GRWTSK/Analysis/SpecialFunctions/Extended/Varianta391f92d2573cb4d8f6524ed03fe86893b4096cb4c8e5f93ff5437bdaa952aef.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b281278762de3935858a54e7aefa8f2b64082eaa586f18a593fc0f337e4a9162",
  "verification": {
    "reference": "docs/verification/Analysis/SpecialFunctions/Extended/Varianta391f92d2573cb4d8f6524ed03fe86893b4096cb4c8e5f93ff5437bdaa952aef.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:50d8b85f-f69c-3c17-1a1b-aab720e20d08`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 128–144.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem evalInterval1_correct (e : Expr) (hsupp : ExprSupported e)
    (x : ℝ) (I : IntervalRat) (hx : x ∈ I) :
    Expr.eval (fun _ => x) e ∈ evalInterval1 e I :=
  evalInterval_correct e hsupp _ _ (fun _ => hx)

/-! ### Partial interval evaluation with inv support -/

/-- Partial (Option-returning) interval evaluator supporting inv.

    For expressions with inv, this evaluator returns `none` if the denominator
    interval contains zero, and `some I` with a correct enclosure otherwise.

    This allows safe interval evaluation of expressions like 1/x when we can
    verify the denominator is bounded away from zero.

    For expressions without inv, this always returns `some` with the same
    result as `evalInterval`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/SpecialFunctions/Extended/Varianta391f92d2573cb4d8f6524ed03fe86893b4096cb4c8e5f93ff5437bdaa952aef.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/SpecialFunctions/Extended/Varianta391f92d2573cb4d8f6524ed03fe86893b4096cb4c8e5f93ff5437bdaa952aef.lean#L128).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c6c8968e1e1054c142c16146397b6c46d2109099` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
