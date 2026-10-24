# ofScalarsSubmodule

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4c824723050a67a9c234ab6c5823ba06e23031ed1ff87dc55664aff8c0d491fa",
  "kind": "def",
  "lexical_name": "ofScalarsSubmodule",
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
  "slug": "ofscalarssubmodule--54e88705f6a8328aa56d1d38",
  "source": {
    "blob": "e023a4985dca7a2838c80579aa7cd25c54e8bf89",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 116,
    "line": 109,
    "path": "GRWTSK/Topology/GeneralTopology/OfScalars/Variant90f407674e2fb7e956e88919284e182994b7a57f8d77c236d699e5d35f1b719c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:54e88705f6a8328aa56d1d381cffcf6315936c6c498f1fc71c1ff5ccdb1fa2b8",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/OfScalars/Variant90f407674e2fb7e956e88919284e182994b7a57f8d77c236d699e5d35f1b719c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4c824723050a67a9c234ab6c5823ba06e23031ed1ff87dc55664aff8c0d491fa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 109–116.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ofScalarsSubmodule : Submodule 𝕜 (FormalMultilinearSeries 𝕜 E E) where
  carrier := {ofScalars E f | f}
  add_mem' := fun ⟨c, hc⟩ ⟨c', hc'⟩ ↦ ⟨c + c', hc' ▸ hc ▸ ofScalars_add E c c'⟩
  zero_mem' := ⟨0, ofScalars_series_eq_zero_of_scalar_zero 𝕜 E⟩
  smul_mem' := fun x _ ⟨c, hc⟩ ↦ ⟨x • c, hc ▸ ofScalars_smul E c x⟩

variable {E}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/OfScalars/Variant90f407674e2fb7e956e88919284e182994b7a57f8d77c236d699e5d35f1b719c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/OfScalars/Variant90f407674e2fb7e956e88919284e182994b7a57f8d77c236d699e5d35f1b719c.lean#L109).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e023a4985dca7a2838c80579aa7cd25c54e8bf89` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
