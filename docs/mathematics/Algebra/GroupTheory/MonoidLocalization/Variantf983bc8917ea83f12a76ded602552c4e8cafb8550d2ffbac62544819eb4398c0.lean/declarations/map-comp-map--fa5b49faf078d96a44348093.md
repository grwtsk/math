# map_comp_map

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "eb088e6a9653d1084284a08cee3570c313548705",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1211,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f9/f983bc8917ea83f12a76ded602552c4e8cafb8550d2ffbac62544819eb4398c0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:51852256-c9ab-8d30-a8f2-f935991e1bd0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:81de6085-e8ae-1b70-9c8d-6ea7a2728e80",
  "kind": "theorem",
  "lexical_name": "map_comp_map",
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
  "slug": "map-comp-map--fa5b49faf078d96a44348093",
  "source": {
    "blob": "eb088e6a9653d1084284a08cee3570c313548705",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1230,
    "line": 1211,
    "path": "GRWTSK/Algebra/GroupTheory/MonoidLocalization/Variantf983bc8917ea83f12a76ded602552c4e8cafb8550d2ffbac62544819eb4398c0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fa5b49faf078d96a4434809372a0ff4055647bc7bb76e7ced4910dcd9f5e7be9",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/MonoidLocalization/Variantf983bc8917ea83f12a76ded602552c4e8cafb8550d2ffbac62544819eb4398c0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:81de6085-e8ae-1b70-9c8d-6ea7a2728e80`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1211–1230.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem map_comp_map {A : Type*} [CommMonoid A] {U : Submonoid A} {R} [CommMonoid R]
    (j : LocalizationMap U R) {l : P →* A} (hl : ∀ w : T, l w ∈ U) :
    (k.map hl j).comp (f.map hy k) =
    f.map (fun x ↦ show l.comp g x ∈ U from hl ⟨g x, hy x⟩) j := by
  ext z
  show j.toMap _ * _ = j.toMap (l _) * _
  rw [mul_inv_left, ← mul_assoc, mul_inv_right]
  show j.toMap _ * j.toMap (l (g _)) = j.toMap (l _) * _
  rw [← j.toMap.map_mul, ← j.toMap.map_mul, ← l.map_mul, ← l.map_mul]
  exact
    k.comp_eq_of_eq hl j
      (by rw [k.toMap.map_mul, k.toMap.map_mul, sec_spec', mul_assoc, map_mul_right])
#align submonoid.localization_map.map_comp_map Submonoid.LocalizationMap.map_comp_map
#align add_submonoid.localization_map.map_comp_map AddSubmonoid.LocalizationMap.map_comp_map

/-- If `CommMonoid` homs `g : M →* P, l : P →* A` induce maps of localizations, the composition
of the induced maps equals the map of localizations induced by `l ∘ g`. -/
@[to_additive
    "If `AddCommMonoid` homs `g : M →+ P, l : P →+ A` induce maps of localizations, the composition
of the induced maps equals the map of localizations induced by `l ∘ g`."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/MonoidLocalization/Variantf983bc8917ea83f12a76ded602552c4e8cafb8550d2ffbac62544819eb4398c0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/MonoidLocalization/Variantf983bc8917ea83f12a76ded602552c4e8cafb8550d2ffbac62544819eb4398c0.lean#L1211).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eb088e6a9653d1084284a08cee3570c313548705` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
