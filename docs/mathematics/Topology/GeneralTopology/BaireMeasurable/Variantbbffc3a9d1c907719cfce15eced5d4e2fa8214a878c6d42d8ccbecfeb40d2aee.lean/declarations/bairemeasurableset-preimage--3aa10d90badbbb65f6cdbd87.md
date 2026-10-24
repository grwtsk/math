# BaireMeasurableSet.preimage

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "fc445a39538cd7275e52fc6b2efc1321a4e2681b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 204,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/bb/bbffc3a9d1c907719cfce15eced5d4e2fa8214a878c6d42d8ccbecfeb40d2aee.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:694959c8-ca09-ea0d-dc3d-00fad6866f21",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:fd39d453-eb54-e8e4-0b45-7e4bfa5eebbf",
  "kind": "theorem",
  "lexical_name": "BaireMeasurableSet.preimage",
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
  "slug": "bairemeasurableset-preimage--3aa10d90badbbb65f6cdbd87",
  "source": {
    "blob": "fc445a39538cd7275e52fc6b2efc1321a4e2681b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 210,
    "line": 204,
    "path": "GRWTSK/Topology/GeneralTopology/BaireMeasurable/Variantbbffc3a9d1c907719cfce15eced5d4e2fa8214a878c6d42d8ccbecfeb40d2aee.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3aa10d90badbbb65f6cdbd879c1a2e14e6272653bc8b75963d35cc0406b7e62b",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/BaireMeasurable/Variantbbffc3a9d1c907719cfce15eced5d4e2fa8214a878c6d42d8ccbecfeb40d2aee.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fd39d453-eb54-e8e4-0b45-7e4bfa5eebbf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 204–210.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem BaireMeasurableSet.preimage (hc : Continuous f) (ho : IsOpenMap f)
    {s : Set β} (h : BaireMeasurableSet s) : BaireMeasurableSet (f ⁻¹' s) := by
  rcases h with ⟨u, hu, hsu⟩
  refine ⟨f ⁻¹' u, ?_, hsu.filter_mono <| tendsto_residual_of_isOpenMap hc ho⟩
  borelize α β
  exact hc.measurable hu

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/BaireMeasurable/Variantbbffc3a9d1c907719cfce15eced5d4e2fa8214a878c6d42d8ccbecfeb40d2aee.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/BaireMeasurable/Variantbbffc3a9d1c907719cfce15eced5d4e2fa8214a878c6d42d8ccbecfeb40d2aee.lean#L204).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fc445a39538cd7275e52fc6b2efc1321a4e2681b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
