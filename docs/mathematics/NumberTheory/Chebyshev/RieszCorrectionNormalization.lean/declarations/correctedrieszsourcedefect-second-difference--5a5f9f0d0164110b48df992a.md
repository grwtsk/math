# correctedRieszSourceDefect_second_difference

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:498357bc-5091-c3f8-ed02-332d89cc27e4",
  "kind": "theorem",
  "lexical_name": "correctedRieszSourceDefect_second_difference",
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
  "slug": "correctedrieszsourcedefect-second-difference--5a5f9f0d0164110b48df992a",
  "source": {
    "blob": "a0ab995416291369f35bb714076bc29b0b74b697",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 53,
    "line": 41,
    "path": "GRWTSK/NumberTheory/Chebyshev/RieszCorrectionNormalization.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5a5f9f0d0164110b48df992aab94be7cecbc483ca49d72ac71942bb74c1b6d70",
  "verification": {
    "reference": "docs/verification/NumberTheory/Chebyshev/RieszCorrectionNormalization.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:498357bc-5091-c3f8-ed02-332d89cc27e4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 41–53.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem correctedRieszSourceDefect_second_difference (N : ℕ) (a x h : ℝ)
    (ha : 1 < a) (hh : 0 < h) (hal : a ≤ x - h) (hN : x + h ≤ N) :
    correctedRieszSourceDefect N a (x + h) - 2 * correctedRieszSourceDefect N a x +
      correctedRieszSourceDefect N a (x - h) = 0 := by
  have hs := firstRieszSourceDefect_second_difference N x h hh (by linarith) hN
  have hp := congrArg (fun t : ℝ => (t : ℂ))
    (rationalRieszPrimitive_second_difference a x h ha hh hal)
  push_cast at hp
  unfold correctedRieszSourceDefect
  linear_combination hs - hp

/-- The corrected actual defect obeys the midpoint equation. Recovering
real-affine interpolation still requires a regularity argument. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Chebyshev/RieszCorrectionNormalization.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Chebyshev/RieszCorrectionNormalization.lean#L41).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a0ab995416291369f35bb714076bc29b0b74b697` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
