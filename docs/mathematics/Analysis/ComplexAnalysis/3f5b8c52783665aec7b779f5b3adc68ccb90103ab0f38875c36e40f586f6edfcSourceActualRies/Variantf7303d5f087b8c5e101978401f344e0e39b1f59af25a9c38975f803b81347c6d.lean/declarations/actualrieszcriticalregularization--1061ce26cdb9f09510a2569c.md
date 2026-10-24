# actualRieszCriticalRegularization

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e00c24a7a66ed6eabdc6690ba4c902f54bf400615bdf54c80a793b792831a8ca",
  "kind": "def",
  "lexical_name": "actualRieszCriticalRegularization",
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
  "slug": "actualrieszcriticalregularization--1061ce26cdb9f09510a2569c",
  "source": {
    "blob": "f931dc5f30c0af415c734d24207a97c7e90694f0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 35,
    "line": 32,
    "path": "GRWTSK/Analysis/ComplexAnalysis/3f5b8c52783665aec7b779f5b3adc68ccb90103ab0f38875c36e40f586f6edfcSourceActualRies/Variantf7303d5f087b8c5e101978401f344e0e39b1f59af25a9c38975f803b81347c6d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1061ce26cdb9f09510a2569cfa937a1b5f53d6733318a4a4058d4fb49294e69e",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/3f5b8c52783665aec7b779f5b3adc68ccb90103ab0f38875c36e40f586f6edfcSourceActualRies/Variantf7303d5f087b8c5e101978401f344e0e39b1f59af25a9c38975f803b81347c6d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e00c24a7a66ed6eabdc6690ba4c902f54bf400615bdf54c80a793b792831a8ca`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 32–35.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def actualRieszCriticalRegularization : ℂ → ℂ :=
  dslope (dslope actualRieszCriticalNumerator 0) 0

/-- Completed-zeta symmetry fixes its logarithmic derivative at the real midpoint. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/3f5b8c52783665aec7b779f5b3adc68ccb90103ab0f38875c36e40f586f6edfcSourceActualRies/Variantf7303d5f087b8c5e101978401f344e0e39b1f59af25a9c38975f803b81347c6d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/3f5b8c52783665aec7b779f5b3adc68ccb90103ab0f38875c36e40f586f6edfcSourceActualRies/Variantf7303d5f087b8c5e101978401f344e0e39b1f59af25a9c38975f803b81347c6d.lean#L32).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f931dc5f30c0af415c734d24207a97c7e90694f0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
