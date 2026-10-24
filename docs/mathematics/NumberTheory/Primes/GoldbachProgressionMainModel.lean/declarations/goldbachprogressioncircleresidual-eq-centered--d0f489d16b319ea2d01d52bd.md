# goldbachProgressionCircleResidual_eq_centered

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:45619b85-7e33-29cb-01ce-d379782137eb",
  "kind": "theorem",
  "lexical_name": "goldbachProgressionCircleResidual_eq_centered",
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
  "slug": "goldbachprogressioncircleresidual-eq-centered--d0f489d16b319ea2d01d52bd",
  "source": {
    "blob": "4da2b82bcf448e61696d7c1f87424b02332028f5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 224,
    "line": 207,
    "path": "GRWTSK/NumberTheory/Primes/GoldbachProgressionMainModel.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d0f489d16b319ea2d01d52bd545a98dcc9f10a6bfd7aec500aaa823403df465d",
  "verification": {
    "reference": "docs/verification/NumberTheory/Primes/GoldbachProgressionMainModel.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:45619b85-7e33-29cb-01ce-d379782137eb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 207–224.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem goldbachProgressionCircleResidual_eq_centered
    (N a q : ℕ) (hq : 0 < q) (x : ℝ) :
    goldbachProgressionCircleResidual N a q x =
      goldbachCenteredProgressionCircleResidual N a q
        (goldbachRationalArcOffset a q x) := by
  unfold goldbachProgressionCircleResidual
    goldbachProgressionCircleModel
    goldbachCenteredProgressionCircleResidual
  rw [goldbachCircleIntegrand_recenter]
  exact congrArg
    (fun z =>
      z - goldbachProgressionCircleKernel N a q
        (goldbachRationalArcOffset a q x))
    (goldbachCenteredCircleIntegrand_eq_residueClassKernel
      N a q hq (goldbachRationalArcOffset a q x))

/-- In central coordinates, the original-coordinate residual is exactly the
centered residual. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Primes/GoldbachProgressionMainModel.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Primes/GoldbachProgressionMainModel.lean#L207).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4da2b82bcf448e61696d7c1f87424b02332028f5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
