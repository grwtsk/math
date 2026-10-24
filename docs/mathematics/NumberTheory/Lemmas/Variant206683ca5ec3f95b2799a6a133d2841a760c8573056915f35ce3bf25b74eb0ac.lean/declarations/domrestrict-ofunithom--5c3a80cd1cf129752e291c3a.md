# domRestrict_ofUnitHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "90102fbc7a80e4dca25c75de152c3aa1eae2538d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 31,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/20/206683ca5ec3f95b2799a6a133d2841a760c8573056915f35ce3bf25b74eb0ac.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:219bfb6d-afe1-b741-5e90-ea416913c205",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3856d303-8245-6838-cb28-a0e14412d1ae",
  "kind": "theorem",
  "lexical_name": "domRestrict_ofUnitHom",
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
  "slug": "domrestrict-ofunithom--5c3a80cd1cf129752e291c3a",
  "source": {
    "blob": "90102fbc7a80e4dca25c75de152c3aa1eae2538d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 47,
    "line": 31,
    "path": "GRWTSK/NumberTheory/Lemmas/Variant206683ca5ec3f95b2799a6a133d2841a760c8573056915f35ce3bf25b74eb0ac.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5c3a80cd1cf129752e291c3a4c2655537ce3c3d9c1e09192ac981628fe8e7bbd",
  "verification": {
    "reference": "docs/verification/NumberTheory/Lemmas/Variant206683ca5ec3f95b2799a6a133d2841a760c8573056915f35ce3bf25b74eb0ac.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3856d303-8245-6838-cb28-a0e14412d1ae`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 31–47.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem domRestrict_ofUnitHom (f : Rˣ →* R'ˣ) (S : Submonoid R) : domRestrict S (ofUnitHom f) =
      ofUnitHom ((f.domRestrict S.units).comp S.unitsEquivUnitsType.symm) := by
  ext x
  simp only [ofUnitHom_eq, domRestrict_apply, Units.isUnit, reduceIte, equivToUnitHom_symm_coe,
    MonoidHom.coe_comp, MonoidHom.coe_coe, Function.comp_apply, MonoidHom.domRestrict_apply]
  rw [← Submonoid.val_unitsEquivUnitsType_symm_apply_coe S x, equivToUnitHom_symm_coe]

@[deprecated (since := "2026-07-19")] alias restrict_ofUnitHom := domRestrict_ofUnitHom

end CommMonoid

section Ring

variable {R R' : Type*} [CommRing R] [CommRing R']

/-- Define the conjugation (`star`) of a multiplicative character by conjugating pointwise. -/
@[simps!]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Lemmas/Variant206683ca5ec3f95b2799a6a133d2841a760c8573056915f35ce3bf25b74eb0ac.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Lemmas/Variant206683ca5ec3f95b2799a6a133d2841a760c8573056915f35ce3bf25b74eb0ac.lean#L31).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `90102fbc7a80e4dca25c75de152c3aa1eae2538d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
