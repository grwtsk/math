# affineSubspaceMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c7c4e7c022f31d54a170dc9b484e4b42321102495cb058b5811f2dcbe744b79e",
  "kind": "def",
  "lexical_name": "affineSubspaceMap",
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
  "slug": "affinesubspacemap--1755d86839449dd57da160cb",
  "source": {
    "blob": "ac90f3ca6d1e35602e403dcfdf98a33f5fe6335c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 77,
    "line": 67,
    "path": "GRWTSK/Topology/GeneralTopology/AffineSubspace/Variant098546b57342d564bb206554d296b7285aafba0e140f3bbec977501f84de6b01.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1755d86839449dd57da160cbcca456804f31e360fa30c22f9622f9ffae48e838",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/AffineSubspace/Variant098546b57342d564bb206554d296b7285aafba0e140f3bbec977501f84de6b01.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c7c4e7c022f31d54a170dc9b484e4b42321102495cb058b5811f2dcbe744b79e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 67–77.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def affineSubspaceMap (e : P ≃ᴬ[R] Q) (s : AffineSubspace R P) [Nonempty s] :
    s ≃ᴬ[R] s.map e.toAffineMap :=
  { e.toAffineEquiv.affineSubspaceMap s with
    continuous_toFun := by simpa [Topology.IsEmbedding.subtypeVal.continuous_iff] using!
      (e.continuous.comp continuous_subtype_val).congr fun _ => rfl
    continuous_invFun := by simpa [Topology.IsEmbedding.subtypeVal.continuous_iff] using!
      (e.continuous_invFun.comp continuous_subtype_val).congr fun x ↦
        (e.eq_symm_apply.mpr
          (AffineEquiv.affineSubspaceMap_apply_symm_apply e.toAffineEquiv s x)).symm }

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/AffineSubspace/Variant098546b57342d564bb206554d296b7285aafba0e140f3bbec977501f84de6b01.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/AffineSubspace/Variant098546b57342d564bb206554d296b7285aafba0e140f3bbec977501f84de6b01.lean#L67).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ac90f3ca6d1e35602e403dcfdf98a33f5fe6335c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
