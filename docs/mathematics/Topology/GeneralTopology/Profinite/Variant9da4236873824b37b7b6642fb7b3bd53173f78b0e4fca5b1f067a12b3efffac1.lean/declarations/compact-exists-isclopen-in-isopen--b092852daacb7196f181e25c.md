# compact_exists_isClopen_in_isOpen

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c61066fe-d8da-cb65-b04a-2366ad447811",
  "kind": "theorem",
  "lexical_name": "compact_exists_isClopen_in_isOpen",
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
  "slug": "compact-exists-isclopen-in-isopen--b092852daacb7196f181e25c",
  "source": {
    "blob": "5cca9a9fa294e526b3e00dce3c45e10033d61bca",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 84,
    "line": 74,
    "path": "GRWTSK/Topology/GeneralTopology/Profinite/Variant9da4236873824b37b7b6642fb7b3bd53173f78b0e4fca5b1f067a12b3efffac1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b092852daacb7196f181e25c5cd893ca3db093830bfba1bc77c04bff94900424",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Profinite/Variant9da4236873824b37b7b6642fb7b3bd53173f78b0e4fca5b1f067a12b3efffac1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c61066fe-d8da-cb65-b04a-2366ad447811`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 74–84.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem compact_exists_isClopen_in_isOpen {x : X} {U : Set X} (is_open : IsOpen U) (memU : x ∈ U) :
    ∃ V : Set X, IsClopen V ∧ x ∈ V ∧ V ⊆ U :=
  isTopologicalBasis_isClopen.mem_nhds_iff.1 (is_open.mem_nhds memU)

end Profinite

section LocallyCompact

variable {H : Type*} [TopologicalSpace H] [LocallyCompactSpace H] [T2Space H]

/-- A locally compact Hausdorff totally disconnected space has a basis with clopen elements. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Profinite/Variant9da4236873824b37b7b6642fb7b3bd53173f78b0e4fca5b1f067a12b3efffac1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Profinite/Variant9da4236873824b37b7b6642fb7b3bd53173f78b0e4fca5b1f067a12b3efffac1.lean#L74).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5cca9a9fa294e526b3e00dce3c45e10033d61bca` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
