# adapter_exact_scope

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6cd7fe37-427f-1474-b400-50630fb41d02",
  "kind": "theorem",
  "lexical_name": "adapter_exact_scope",
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
  "slug": "adapter-exact-scope--d7cb89bea9ef1cfae60ad6a4",
  "source": {
    "blob": "1f732fc186c1b9ff8ffba35a0ce5a4ced509dfb2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 44,
    "line": 37,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ScopeFixtures/Variant7f7a1da2d9181512c27eebee8a9084ae509ba7ba6863653f4f55e6d4cb50a552.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d7cb89bea9ef1cfae60ad6a4e69bc504670f1db5af99e090243d740a696c8bfc",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/ScopeFixtures/Variant7f7a1da2d9181512c27eebee8a9084ae509ba7ba6863653f4f55e6d4cb50a552.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6cd7fe37-427f-1474-b400-50630fb41d02`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 37–44.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem adapter_exact_scope {A Y : ℝ} (hA : 0 < A) (hY0 : 0 ≤ Y) (hY2 : Y ≤ 2 * A) :
    peanoScale A * mangoldtLogWindow (2 * A - Y) (2 * A) (criticalPrimeTest A) =
      deriv (boundaryPeano A) Y + ∫ y in 0..Y,
        (mangoldtLogError (2 * A - y) - mangoldtLogError (2 * A - Y)) *
          deriv (deriv (deriv (boundaryPeano A))) y :=
  peanoScale_mul_mangoldtLogWindow_eq_centered_boundary_flux hA hY0 hY2

/-- Equal window endpoints retain zero prefix difference. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/ScopeFixtures/Variant7f7a1da2d9181512c27eebee8a9084ae509ba7ba6863653f4f55e6d4cb50a552.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ScopeFixtures/Variant7f7a1da2d9181512c27eebee8a9084ae509ba7ba6863653f4f55e6d4cb50a552.lean#L37).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1f732fc186c1b9ff8ffba35a0ce5a4ced509dfb2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
