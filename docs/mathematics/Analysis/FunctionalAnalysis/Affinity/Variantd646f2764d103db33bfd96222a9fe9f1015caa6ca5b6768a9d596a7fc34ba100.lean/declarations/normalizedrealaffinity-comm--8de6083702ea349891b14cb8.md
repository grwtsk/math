# normalizedRealAffinity_comm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1d30d320-3fbb-255d-687f-f60ac8a92684",
  "kind": "theorem",
  "lexical_name": "normalizedRealAffinity_comm",
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
  "slug": "normalizedrealaffinity-comm--8de6083702ea349891b14cb8",
  "source": {
    "blob": "6cc13e3088740d472fce5f057beb86696c98f5a1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 71,
    "line": 58,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/Affinity/Variantd646f2764d103db33bfd96222a9fe9f1015caa6ca5b6768a9d596a7fc34ba100.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8de6083702ea349891b14cb855170985a808443311469bbb384bad24c69aa17a",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/Affinity/Variantd646f2764d103db33bfd96222a9fe9f1015caa6ca5b6768a9d596a7fc34ba100.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1d30d320-3fbb-255d-687f-f60ac8a92684`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 58–71.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem normalizedRealAffinity_comm
    (left right : RhetoricalSpace kernel) :
    normalizedRealAffinity kernel left right =
      normalizedRealAffinity kernel right left := by
  rw [normalizedRealAffinity, normalizedRealAffinity]
  by_cases leftNull : ‖left‖ = 0
  · simp [leftNull]
  · by_cases rightNull : ‖right‖ = 0
    · simp [rightNull]
    · simp [leftNull, rightNull, normalizedRealAffinityValue_comm kernel]

/-- Cauchy--Schwarz bounds every normalized real score by one in absolute
value.  This algebraic lemma remains true at zero because Lean's field
division is total; the public API still rejects that case. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/Affinity/Variantd646f2764d103db33bfd96222a9fe9f1015caa6ca5b6768a9d596a7fc34ba100.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/Affinity/Variantd646f2764d103db33bfd96222a9fe9f1015caa6ca5b6768a9d596a7fc34ba100.lean#L58).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6cc13e3088740d472fce5f057beb86696c98f5a1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
