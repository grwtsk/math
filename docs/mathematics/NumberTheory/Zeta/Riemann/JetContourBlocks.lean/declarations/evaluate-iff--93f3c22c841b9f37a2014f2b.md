# evaluate_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:21ba7e56-d280-d76c-b4e3-b9a8fad48ad3",
  "kind": "theorem",
  "lexical_name": "evaluate_iff",
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
  "slug": "evaluate-iff--93f3c22c841b9f37a2014f2b",
  "source": {
    "blob": "ea22d25c3257ff2fa390d0ccb8a896acb552891d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 97,
    "line": 86,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/JetContourBlocks.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:93f3c22c841b9f37a2014f2b523e4cef7d3161e2fd50142bccac6273670fd418",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/JetContourBlocks.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:21ba7e56-d280-d76c-b4e3-b9a8fad48ad3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 86–97.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem evaluate_iff (n cap : ℕ) (widths : List ℕ) (claims : List ℤ)
    (v : List Coordinates) (p : List Plan) (y : List Coordinates) (k : ℤ) :
    evaluate n cap widths claims v p y = some k ↔
      Header n v p y ∧ partition n cap widths = true ∧
      verify (cellTest v p y) (term y) 0 widths claims = true ∧ claims.sum = k := by
  by_cases hh : Header n v p y <;>
    by_cases hp : partition n cap widths = true <;>
    by_cases hv : verify (cellTest v p y) (term y) 0 widths claims = true <;>
    simp [evaluate,hh,hp,hv]

/-- A passing partitioned result is the SAME old finite result, not merely an
analytic theorem with a weaker numerical guard. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/JetContourBlocks.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/JetContourBlocks.lean#L86).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ea22d25c3257ff2fa390d0ccb8a896acb552891d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
