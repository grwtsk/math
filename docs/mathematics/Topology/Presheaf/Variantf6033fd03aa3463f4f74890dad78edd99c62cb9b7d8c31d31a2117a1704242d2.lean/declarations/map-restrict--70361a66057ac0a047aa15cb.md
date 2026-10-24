# map_restrict

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "72fc4be0d1516126e666a7d8da5913eb3b312b71",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 139,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f6/f6033fd03aa3463f4f74890dad78edd99c62cb9b7d8c31d31a2117a1704242d2.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8b4feecc-bdce-f32d-1d5c-3b3c9db9f011",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7c399388-5463-6c9d-b2b4-abf4e046283d",
  "kind": "theorem",
  "lexical_name": "map_restrict",
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
  "slug": "map-restrict--70361a66057ac0a047aa15cb",
  "source": {
    "blob": "72fc4be0d1516126e666a7d8da5913eb3b312b71",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 148,
    "line": 139,
    "path": "GRWTSK/Topology/Presheaf/Variantf6033fd03aa3463f4f74890dad78edd99c62cb9b7d8c31d31a2117a1704242d2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:70361a66057ac0a047aa15cbf71e0eff16e85930f3bc2582184f1bba7ec1cf65",
  "verification": {
    "reference": "docs/verification/Topology/Presheaf/Variantf6033fd03aa3463f4f74890dad78edd99c62cb9b7d8c31d31a2117a1704242d2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7c399388-5463-6c9d-b2b4-abf4e046283d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 139–148.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem map_restrict {X : TopCat} {C : Type*} [Category C] [ConcreteCategory C]
    {F G : X.Presheaf C} (e : F ⟶ G) {U V : Opens X} (h : U ≤ V) (x : F.obj (op V)) :
    e.app _ (x |_ U) = e.app _ x |_ U := by
  delta restrictOpen restrict
  rw [← comp_apply, NatTrans.naturality, comp_apply]
set_option linter.uppercaseLean3 false in
#align Top.presheaf.map_restrict TopCat.Presheaf.map_restrict

/-- Pushforward a presheaf on `X` along a continuous map `f : X ⟶ Y`, obtaining a presheaf
on `Y`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Topology/Presheaf/Variantf6033fd03aa3463f4f74890dad78edd99c62cb9b7d8c31d31a2117a1704242d2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/Presheaf/Variantf6033fd03aa3463f4f74890dad78edd99c62cb9b7d8c31d31a2117a1704242d2.lean#L139).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `72fc4be0d1516126e666a7d8da5913eb3b312b71` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
