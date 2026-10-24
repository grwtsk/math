# ExplicitCoker.map_desc

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f98420aa-aafb-b3c9-f532-8b8d6edde4c0",
  "kind": "theorem",
  "lexical_name": "ExplicitCoker.map_desc",
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
  "slug": "explicitcoker-map-desc--8a5307b19055d45501c62dcf",
  "source": {
    "blob": "e238e1e26c1fd7077231d8b68c2bede27497d7d3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 422,
    "line": 408,
    "path": "GRWTSK/Analysis/Kernels/Variant5f415e30ad4dede6b2a2fe7e724a15cadc729e379d5848dbd0f2b2b1c1a62f92.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8a5307b19055d45501c62dcf1a60851974b3d4c650c728b018b3bdee1a39c049",
  "verification": {
    "reference": "docs/verification/Analysis/Kernels/Variant5f415e30ad4dede6b2a2fe7e724a15cadc729e379d5848dbd0f2b2b1c1a62f92.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f98420aa-aafb-b3c9-f532-8b8d6edde4c0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 408–422.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ExplicitCoker.map_desc {A B C D B' D' : SemiNormedGroupCat.{u}}
    {fab : A ⟶ B} {fbd : B ⟶ D} {fac : A ⟶ C} {fcd : C ⟶ D} {h : fab ≫ fbd = fac ≫ fcd}
    {fbb' : B ⟶ B'} {fdd' : D ⟶ D'} {condb : fab ≫ fbb' = 0} {condd : fcd ≫ fdd' = 0} {g : B' ⟶ D'}
    (h' : fbb' ≫ g = fbd ≫ fdd') :
    explicitCokernelDesc condb ≫ g = explicitCokernel.map h ≫ explicitCokernelDesc condd := by
  delta explicitCokernel.map
  simp [← cancel_epi (explicitCokernelπ fab), ← Category.assoc, explicitCokernelπ_desc, h']
set_option linter.uppercaseLean3 false in
#align SemiNormedGroup.explicit_coker.map_desc SemiNormedGroupCat.ExplicitCoker.map_desc

end ExplicitCokernel

end Cokernel

end SemiNormedGroupCat
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/Kernels/Variant5f415e30ad4dede6b2a2fe7e724a15cadc729e379d5848dbd0f2b2b1c1a62f92.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Kernels/Variant5f415e30ad4dede6b2a2fe7e724a15cadc729e379d5848dbd0f2b2b1c1a62f92.lean#L408).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e238e1e26c1fd7077231d8b68c2bede27497d7d3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
