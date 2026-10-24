# pair_summable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0560f42a-08f7-9261-d7ed-5dd6771d252c",
  "kind": "theorem",
  "lexical_name": "pair_summable",
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
  "slug": "pair-summable--ae12a518e3148d1d1fbed43a",
  "source": {
    "blob": "28c18f45d502ff45cbc1c56f2869c8e2aa0fff86",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 88,
    "line": 85,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/ZeroEta/Variant9dc5e8b1df5afe1e53a88ae5263130e31b988054ae89b2efcb1257327b9e3df4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ae12a518e3148d1d1fbed43af83e1cfc1f8746f5aa5efb8c9350cf8fb0debe28",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/ZeroEta/Variant9dc5e8b1df5afe1e53a88ae5263130e31b988054ae89b2efcb1257327b9e3df4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0560f42a-08f7-9261-d7ed-5dd6771d252c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 85–88.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pair_summable {z : ℂ} (hz : 0 < z.re) : Summable (pair z) := by
  exact (summable_majorant hz ‖z‖).of_norm_bounded (pair_bound_uniform hz le_rfl le_rfl)

/-- The paired eta sum; `pair_summable` supplies genuine convergence on the stated domain. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/ZeroEta/Variant9dc5e8b1df5afe1e53a88ae5263130e31b988054ae89b2efcb1257327b9e3df4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/ZeroEta/Variant9dc5e8b1df5afe1e53a88ae5263130e31b988054ae89b2efcb1257327b9e3df4.lean#L85).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `28c18f45d502ff45cbc1c56f2869c8e2aa0fff86` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
