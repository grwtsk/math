# toWeakSpaceCLM_bijective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1f524952-75dd-caef-80ef-1157175b9e89",
  "kind": "theorem",
  "lexical_name": "toWeakSpaceCLM_bijective",
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
  "slug": "toweakspaceclm-bijective--88b50c6b0d46e3784a18bdda",
  "source": {
    "blob": "92ebff7ea6f7f6a21d132c5091fb72e0b34fae86",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 252,
    "line": 248,
    "path": "GRWTSK/Topology/GeneralTopology/WeakDual/Variant752ba107d83b9de3d4b074dcd79681a170ccd7ab9138002b7d52460527ddd7d0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:88b50c6b0d46e3784a18bddaef0e31cbbb517c6eeab05ff914c90af5710c5290",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/WeakDual/Variant752ba107d83b9de3d4b074dcd79681a170ccd7ab9138002b7d52460527ddd7d0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1f524952-75dd-caef-80ef-1157175b9e89`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 248–252.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem toWeakSpaceCLM_bijective :
    Function.Bijective (toWeakSpaceCLM 𝕜 E) :=
  (toWeakSpace 𝕜 E).bijective

/-- The canonical map from `WeakSpace 𝕜 E` to `E` is an open map. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/WeakDual/Variant752ba107d83b9de3d4b074dcd79681a170ccd7ab9138002b7d52460527ddd7d0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/WeakDual/Variant752ba107d83b9de3d4b074dcd79681a170ccd7ab9138002b7d52460527ddd7d0.lean#L248).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `92ebff7ea6f7f6a21d132c5091fb72e0b34fae86` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
