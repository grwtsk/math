# even_deriv_at_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5bf3fca0-c4c9-fbb2-672d-f95b37ef1220",
  "kind": "theorem",
  "lexical_name": "even_deriv_at_zero",
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
  "slug": "even-deriv-at-zero--57ca9699b90ed4c5bab96079",
  "source": {
    "blob": "1ffdea9c3caeb2dbac544f6e442815756cf33076",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 34,
    "line": 21,
    "path": "GRWTSK/Analysis/Calculus/EvenLinearDefect.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:57ca9699b90ed4c5bab96079b746759044476e59cede7a5b51f065d088c742e4",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/EvenLinearDefect.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5bf3fca0-c4c9-fbb2-672d-f95b37ef1220`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 21–34.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem even_deriv_at_zero {f : ℝ → ℝ} (even : Function.Even f)
    (differentiable : DifferentiableAt ℝ f 0) : deriv f 0 = 0 := by
  have original := differentiable.hasDerivAt
  have reflected : HasDerivAt (fun x : ℝ ↦ f (-x)) (-deriv f 0) 0 := by
    have negativeIdentity : HasDerivAt (fun x : ℝ ↦ -x) (-1) 0 := by
      simpa using! ((hasDerivAt_id (0 : ℝ)).neg)
    have atNegativeZero : HasDerivAt f (deriv f 0) (-(0 : ℝ)) := by
      simpa using original
    simpa using! atNegativeZero.comp 0 negativeIdentity
  have equalFunctions : (fun x : ℝ ↦ f (-x)) = f := funext even
  rw [equalFunctions] at reflected
  have sameDerivative := original.unique reflected
  linarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/EvenLinearDefect.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Calculus/EvenLinearDefect.lean#L21).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1ffdea9c3caeb2dbac544f6e442815756cf33076` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
