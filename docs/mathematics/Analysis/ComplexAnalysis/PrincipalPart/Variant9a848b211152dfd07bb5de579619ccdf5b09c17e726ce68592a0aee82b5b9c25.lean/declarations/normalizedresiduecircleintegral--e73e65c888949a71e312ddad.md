# normalizedResidueCircleIntegral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:edc757ad52efb136304c1efbb464a776158a54e972b47b96a45ee224df54d6ce",
  "kind": "def",
  "lexical_name": "normalizedResidueCircleIntegral",
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
  "slug": "normalizedresiduecircleintegral--e73e65c888949a71e312ddad",
  "source": {
    "blob": "26cea7ab8ef95dd8302d097b63d74b05f087f2a9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 48,
    "line": 40,
    "path": "GRWTSK/Analysis/ComplexAnalysis/PrincipalPart/Variant9a848b211152dfd07bb5de579619ccdf5b09c17e726ce68592a0aee82b5b9c25.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e73e65c888949a71e312ddad28d1eab1e6e397cc502172a80529f92444ad82ee",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/PrincipalPart/Variant9a848b211152dfd07bb5de579619ccdf5b09c17e726ce68592a0aee82b5b9c25.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:edc757ad52efb136304c1efbb464a776158a54e972b47b96a45ee224df54d6ce`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 40–48.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def normalizedResidueCircleIntegral
    (h : ℂ → ℂ) (z : ℂ) (r : ℝ) : ℂ :=
  (2 * Real.pi * Complex.I : ℂ)⁻¹ • circleIntegral h z r

namespace AnalyticAt

/-- Every sufficiently small positive circle around a finite-order analytic
zero integrates its logarithmic derivative to its multiplicity. -/
@[surface_novel, surface_published]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/PrincipalPart/Variant9a848b211152dfd07bb5de579619ccdf5b09c17e726ce68592a0aee82b5b9c25.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/PrincipalPart/Variant9a848b211152dfd07bb5de579619ccdf5b09c17e726ce68592a0aee82b5b9c25.lean#L40).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `26cea7ab8ef95dd8302d097b63d74b05f087f2a9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
