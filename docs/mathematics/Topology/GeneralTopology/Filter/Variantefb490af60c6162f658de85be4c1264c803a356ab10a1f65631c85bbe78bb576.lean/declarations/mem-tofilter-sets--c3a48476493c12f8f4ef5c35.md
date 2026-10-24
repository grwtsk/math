# mem_toFilter_sets

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c71edd72-21de-cb4c-9a36-1ecf9e4823e1",
  "kind": "theorem",
  "lexical_name": "mem_toFilter_sets",
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
  "slug": "mem-tofilter-sets--c3a48476493c12f8f4ef5c35",
  "source": {
    "blob": "30304ed3562f3464c2d77a8a3fb2e3175d32d489",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 98,
    "line": 92,
    "path": "GRWTSK/Topology/GeneralTopology/Filter/Variantefb490af60c6162f658de85be4c1264c803a356ab10a1f65631c85bbe78bb576.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c3a48476493c12f8f4ef5c358cb74e7f1b1eb9d177f2d5ff9d2d28cf8f94c915",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Filter/Variantefb490af60c6162f658de85be4c1264c803a356ab10a1f65631c85bbe78bb576.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c71edd72-21de-cb4c-9a36-1ecf9e4823e1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 92–98.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_toFilter_sets (F : CFilter (Set α) σ) {a : Set α} : a ∈ F.toFilter ↔ ∃ b, F b ⊆ a :=
  Iff.rfl

end CFilter

-- TODO write doc strings
/-- A realizer for filter `f` is a cfilter which generates `f`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Filter/Variantefb490af60c6162f658de85be4c1264c803a356ab10a1f65631c85bbe78bb576.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Filter/Variantefb490af60c6162f658de85be4c1264c803a356ab10a1f65631c85bbe78bb576.lean#L92).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `30304ed3562f3464c2d77a8a3fb2e3175d32d489` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
