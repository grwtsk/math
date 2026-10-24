# dualTensorIsoLinHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7d698368d8e07d9b0b94a30630f3f02df7b2578d4d432060b28c9b786859df65",
  "kind": "def",
  "lexical_name": "dualTensorIsoLinHom",
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
  "slug": "dualtensorisolinhom--f965106c4168e461ff72cf25",
  "source": {
    "blob": "109cefeafe06df762c6ef3d23855de477aeab095",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 225,
    "line": 220,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FDRep/Variantbc7123abd5da1f5d7d544e3d5e0a4daa902eaa9b87ef571f084d815bccc3f14d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f965106c4168e461ff72cf251354ca8b97c930316a6b740b763cf0e99fb54800",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FDRep/Variantbc7123abd5da1f5d7d544e3d5e0a4daa902eaa9b87ef571f084d815bccc3f14d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7d698368d8e07d9b0b94a30630f3f02df7b2578d4d432060b28c9b786859df65`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 220–225.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def dualTensorIsoLinHom : FDRep.of ρV.dual ⊗ W ≅ FDRep.of (linHom ρV W.ρ) := by
  refine Action.mkIso (dualTensorIsoLinHomAux ρV W) (fun g => ?_)
  ext : 1
  exact dualTensorHom_comm ρV W.ρ g

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FDRep/Variantbc7123abd5da1f5d7d544e3d5e0a4daa902eaa9b87ef571f084d815bccc3f14d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FDRep/Variantbc7123abd5da1f5d7d544e3d5e0a4daa902eaa9b87ef571f084d815bccc3f14d.lean#L220).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `109cefeafe06df762c6ef3d23855de477aeab095` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
