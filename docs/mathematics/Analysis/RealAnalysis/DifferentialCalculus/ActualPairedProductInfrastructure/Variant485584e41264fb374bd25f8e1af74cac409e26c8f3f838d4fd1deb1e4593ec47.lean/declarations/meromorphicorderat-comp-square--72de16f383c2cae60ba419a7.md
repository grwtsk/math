# meromorphicOrderAt_comp_square

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9f03722e-e20f-05c7-19f6-1e8201db46ab",
  "kind": "theorem",
  "lexical_name": "meromorphicOrderAt_comp_square",
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
  "slug": "meromorphicorderat-comp-square--72de16f383c2cae60ba419a7",
  "source": {
    "blob": "b9cebb037cd9c13757574c81723cfb1ecbdcf537",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 49,
    "line": 40,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ActualPairedProductInfrastructure/Variant485584e41264fb374bd25f8e1af74cac409e26c8f3f838d4fd1deb1e4593ec47.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:72de16f383c2cae60ba419a7af66fd94b8cf98be2d98957a5ce23a9db168f3fd",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/ActualPairedProductInfrastructure/Variant485584e41264fb374bd25f8e1af74cac409e26c8f3f838d4fd1deb1e4593ec47.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9f03722e-e20f-05c7-19f6-1e8201db46ab`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 40–49.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem meromorphicOrderAt_comp_square (f : ℂ → ℂ) (u : ℂ) (hu : u ≠ 0) :
    meromorphicOrderAt (f ∘ fun z : ℂ => z ^ 2) u =
      meromorphicOrderAt f (u ^ 2) := by
  apply meromorphicOrderAt_comp_of_deriv_ne_zero (f := f) (g := fun z : ℂ => z ^ 2)
  · fun_prop
  · rw [deriv_square]
    exact mul_ne_zero (by norm_num) hu

/-- Iterated derivatives of a locally-uniformly convergent family of entire
functions converge locally uniformly. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/ActualPairedProductInfrastructure/Variant485584e41264fb374bd25f8e1af74cac409e26c8f3f838d4fd1deb1e4593ec47.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ActualPairedProductInfrastructure/Variant485584e41264fb374bd25f8e1af74cac409e26c8f3f838d4fd1deb1e4593ec47.lean#L40).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b9cebb037cd9c13757574c81723cfb1ecbdcf537` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
