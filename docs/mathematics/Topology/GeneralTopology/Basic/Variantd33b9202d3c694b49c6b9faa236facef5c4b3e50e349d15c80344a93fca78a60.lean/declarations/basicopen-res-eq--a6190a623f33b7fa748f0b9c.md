# basicOpen_res_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4e7c4a57-cbb0-73ea-4f05-52f838b03e8f",
  "kind": "theorem",
  "lexical_name": "basicOpen_res_eq",
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
  "slug": "basicopen-res-eq--a6190a623f33b7fa748f0b9c",
  "source": {
    "blob": "2b04359237e0bb4496e01ce81574d13c2726acb0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 219,
    "line": 209,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variantd33b9202d3c694b49c6b9faa236facef5c4b3e50e349d15c80344a93fca78a60.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a6190a623f33b7fa748f0b9c51b173a5f0b4cd471d15a9d37114f6c39b30294e",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variantd33b9202d3c694b49c6b9faa236facef5c4b3e50e349d15c80344a93fca78a60.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4e7c4a57-cbb0-73ea-4f05-52f838b03e8f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 209–219.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem basicOpen_res_eq {U V : (Opens X)ᵒᵖ} (i : U ⟶ V) [IsIso i] (f : X.presheaf.obj U) :
    @basicOpen X (unop V) (X.presheaf.map i f) = @RingedSpace.basicOpen X (unop U) f := by
  apply le_antisymm
  · rw [X.basicOpen_res i f]; exact inf_le_right
  · have := X.basicOpen_res (inv i) (X.presheaf.map i f)
    rw [← CommRingCat.comp_apply, ← X.presheaf.map_comp, IsIso.hom_inv_id, X.presheaf.map_id,
        CommRingCat.id_apply] at this
    rw [this]
    exact inf_le_right

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variantd33b9202d3c694b49c6b9faa236facef5c4b3e50e349d15c80344a93fca78a60.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variantd33b9202d3c694b49c6b9faa236facef5c4b3e50e349d15c80344a93fca78a60.lean#L209).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2b04359237e0bb4496e01ce81574d13c2726acb0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
