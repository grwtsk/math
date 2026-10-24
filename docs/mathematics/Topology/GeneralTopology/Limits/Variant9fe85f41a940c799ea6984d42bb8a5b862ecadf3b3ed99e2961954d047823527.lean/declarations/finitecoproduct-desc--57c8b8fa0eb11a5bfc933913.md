# finiteCoproduct.desc

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:684c8b527af097ac37246ec5c881b5b6772e6c639bd5e3ee7e3d8c29e72ca74c",
  "kind": "def",
  "lexical_name": "finiteCoproduct.desc",
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
  "slug": "finitecoproduct-desc--57c8b8fa0eb11a5bfc933913",
  "source": {
    "blob": "1fa71ebcd4bf11f815be82f5caee3dbd0818b1b6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 158,
    "line": 150,
    "path": "GRWTSK/Topology/GeneralTopology/Limits/Variant9fe85f41a940c799ea6984d42bb8a5b862ecadf3b3ed99e2961954d047823527.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:57c8b8fa0eb11a5bfc933913704cc0d0091d60a7905aeba0397e24f272327091",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Limits/Variant9fe85f41a940c799ea6984d42bb8a5b862ecadf3b3ed99e2961954d047823527.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:684c8b527af097ac37246ec5c881b5b6772e6c639bd5e3ee7e3d8c29e72ca74c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 150–158.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def finiteCoproduct.desc {B : Profinite.{u}} (e : (a : α) → (X a ⟶ B)) :
    finiteCoproduct X ⟶ B where
  toFun := fun ⟨a, x⟩ => e a x
  continuous_toFun := by
    apply continuous_sigma
    intro a
    exact (e a).continuous

@[reassoc (attr := simp)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Limits/Variant9fe85f41a940c799ea6984d42bb8a5b862ecadf3b3ed99e2961954d047823527.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Limits/Variant9fe85f41a940c799ea6984d42bb8a5b862ecadf3b3ed99e2961954d047823527.lean#L150).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1fa71ebcd4bf11f815be82f5caee3dbd0818b1b6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
