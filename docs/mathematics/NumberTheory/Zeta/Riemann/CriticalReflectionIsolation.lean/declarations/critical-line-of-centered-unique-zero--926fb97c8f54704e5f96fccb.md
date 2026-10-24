# critical_line_of_centered_unique_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bb0f63be-610d-c0fe-cbf6-de57defdfcc0",
  "kind": "theorem",
  "lexical_name": "critical_line_of_centered_unique_zero",
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
  "slug": "critical-line-of-centered-unique-zero--926fb97c8f54704e5f96fccb",
  "source": {
    "blob": "33a5123d384e404d23dd8af54db8c04e0bc28dc0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 90,
    "line": 82,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalReflectionIsolation.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:926fb97c8f54704e5f96fccb02597bfbd7449cca1fead7efbf6c260215ac2ebb",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CriticalReflectionIsolation.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bb0f63be-610d-c0fe-cbf6-de57defdfcc0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 82–90.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem critical_line_of_centered_unique_zero (c s : ℂ) (r : ℝ)
    (centerOnLine : c.re = 1 / 2) (zero : NontrivialZetaZero s)
    (member : s ∈ closedBall c r)
    (unique : ∀ z ∈ closedBall c r, riemannZeta z = 0 → z = s) : s.re = 1 / 2 := by
  exact critical_line_of_reflection_stable_unique (closedBall c r) s zero member
    (fun z hz => reflection_mem_centered_closedBall c z r centerOnLine hz) unique

/-- An actual off-line pair forces every correction-map Lipschitz bound on that pair to be >= 1.
No nonzero-inverse premise is needed: this concerns already witnessed zeros, not existence. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CriticalReflectionIsolation.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CriticalReflectionIsolation.lean#L82).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `33a5123d384e404d23dd8af54db8c04e0bc28dc0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
