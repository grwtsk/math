# positiveOnsetTail_eq_indicator

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c3ed99ab-75af-df28-72e6-bda94a8f234f",
  "kind": "theorem",
  "lexical_name": "positiveOnsetTail_eq_indicator",
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
  "slug": "positiveonsettail-eq-indicator--93e6b1924649e553615aa1a6",
  "source": {
    "blob": "0837fef432f3e4c3e640a4b5f14d07b6a8ebb1f7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 96,
    "line": 87,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ProperPowerTransport/Variantafe2b1399d026f919d642470978f3d6c548cd65a157ecb7099f93ef2046e105e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:93e6b1924649e553615aa1a6a8562086adadec870eea9766510396b22a94631d",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ProperPowerTransport/Variantafe2b1399d026f919d642470978f3d6c548cd65a157ecb7099f93ef2046e105e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c3ed99ab-75af-df28-72e6-bda94a8f234f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 87–96.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem positiveOnsetTail_eq_indicator :
    positiveOnsetTail = (Ioi 0).indicator omittedOnsetTail := by
  funext t
  unfold positiveOnsetTail
  simp_rw [positiveOnsetAtom_eq_omitted]
  by_cases ht : 0<t
  · simp [ht,omittedOnsetTail]
  · simp [ht]

/-- Nonnegative countable Tonelli, with the finite actual B1 sum established beforehand. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ProperPowerTransport/Variantafe2b1399d026f919d642470978f3d6c548cd65a157ecb7099f93ef2046e105e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ProperPowerTransport/Variantafe2b1399d026f919d642470978f3d6c548cd65a157ecb7099f93ef2046e105e.lean#L87).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0837fef432f3e4c3e640a4b5f14d07b6a8ebb1f7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
