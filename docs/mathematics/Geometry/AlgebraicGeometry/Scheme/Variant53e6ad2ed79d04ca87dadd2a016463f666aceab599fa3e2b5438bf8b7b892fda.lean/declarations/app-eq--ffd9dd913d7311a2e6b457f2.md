# app_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "eb4373799c548d13d1e2a75d2e7d49e75a96d6e3",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 154,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/53/53e6ad2ed79d04ca87dadd2a016463f666aceab599fa3e2b5438bf8b7b892fda.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:eb825689-ab7e-8991-2cd1-875fa573ed52",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:eecc17ee-9216-b59a-befe-f9b61af93072",
  "kind": "theorem",
  "lexical_name": "app_eq",
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
  "slug": "app-eq--ffd9dd913d7311a2e6b457f2",
  "source": {
    "blob": "eb4373799c548d13d1e2a75d2e7d49e75a96d6e3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 165,
    "line": 154,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Scheme/Variant53e6ad2ed79d04ca87dadd2a016463f666aceab599fa3e2b5438bf8b7b892fda.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ffd9dd913d7311a2e6b457f243051daa8cfd44b3f1d59bdbad0c72a5de6f97d1",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Scheme/Variant53e6ad2ed79d04ca87dadd2a016463f666aceab599fa3e2b5438bf8b7b892fda.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:eecc17ee-9216-b59a-befe-f9b61af93072`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 154–165.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem app_eq {X Y : Scheme} (f : X ⟶ Y) {U V : Opens Y.carrier} (e : U = V) :
    f.val.c.app (op U) =
      Y.presheaf.map (eqToHom e.symm).op ≫
        f.val.c.app (op V) ≫
          X.presheaf.map (eqToHom (congr_arg (Opens.map f.val.base).obj e)).op := by
  rw [← IsIso.inv_comp_eq, ← Functor.map_inv, f.val.c.naturality, Presheaf.pushforwardObj_map]
  cases e
  rfl
#align algebraic_geometry.Scheme.app_eq AlgebraicGeometry.Scheme.app_eq

-- Porting note : in `AffineScheme.lean` file, `eqToHom_op` can't be used in `(e)rw` or `simp(_rw)`
-- when terms get very complicated. See `AlgebraicGeometry.IsAffineOpen.isLocalization_stalk_aux`.
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Scheme/Variant53e6ad2ed79d04ca87dadd2a016463f666aceab599fa3e2b5438bf8b7b892fda.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Scheme/Variant53e6ad2ed79d04ca87dadd2a016463f666aceab599fa3e2b5438bf8b7b892fda.lean#L154).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eb4373799c548d13d1e2a75d2e7d49e75a96d6e3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
