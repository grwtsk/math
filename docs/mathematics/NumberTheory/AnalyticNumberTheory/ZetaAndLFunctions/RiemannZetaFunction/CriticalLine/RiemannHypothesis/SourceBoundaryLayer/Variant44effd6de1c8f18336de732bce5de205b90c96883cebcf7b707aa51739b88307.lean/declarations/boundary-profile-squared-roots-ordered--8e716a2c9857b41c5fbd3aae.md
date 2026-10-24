# boundary_profile_squared_roots_ordered

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:48ae808d-64a5-041e-4bbf-584c58e98161",
  "kind": "theorem",
  "lexical_name": "boundary_profile_squared_roots_ordered",
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
  "slug": "boundary-profile-squared-roots-ordered--8e716a2c9857b41c5fbd3aae",
  "source": {
    "blob": "a2af18921c9e15508675b3c1d33e987398dc4ac4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 308,
    "line": 300,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceBoundaryLayer/Variant44effd6de1c8f18336de732bce5de205b90c96883cebcf7b707aa51739b88307.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8e716a2c9857b41c5fbd3aae81f97b48222a2e09a738e858b77f2e7c16675250",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceBoundaryLayer/Variant44effd6de1c8f18336de732bce5de205b90c96883cebcf7b707aa51739b88307.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:48ae808d-64a5-041e-4bbf-584c58e98161`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 300–308.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem boundary_profile_squared_roots_ordered :
    0 < 288 - 48 * Real.sqrt 15 ∧
      288 - 48 * Real.sqrt 15 < 288 + 48 * Real.sqrt 15 := by
  have hs : 0 < Real.sqrt 15 := Real.sqrt_pos.2 (by norm_num)
  have hs2 : Real.sqrt 15 ^ 2 = 15 := Real.sq_sqrt (by norm_num)
  have hslt : Real.sqrt 15 < 6 := by nlinarith
  constructor <;> linarith

/-- One fixed boundary distance lies in the genuinely negative profile region. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceBoundaryLayer/Variant44effd6de1c8f18336de732bce5de205b90c96883cebcf7b707aa51739b88307.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceBoundaryLayer/Variant44effd6de1c8f18336de732bce5de205b90c96883cebcf7b707aa51739b88307.lean#L300).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a2af18921c9e15508675b3c1d33e987398dc4ac4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
