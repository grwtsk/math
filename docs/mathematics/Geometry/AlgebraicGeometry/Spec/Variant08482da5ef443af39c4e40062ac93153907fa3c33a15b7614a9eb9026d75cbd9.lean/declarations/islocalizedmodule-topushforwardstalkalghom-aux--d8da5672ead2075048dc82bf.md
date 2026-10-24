# isLocalizedModule_toPushforwardStalkAlgHom_aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "18230a358725ee8a60d2fe0f6956d80bfcf2184d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 368,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/08/08482da5ef443af39c4e40062ac93153907fa3c33a15b7614a9eb9026d75cbd9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:fac13ee2-48aa-6d7a-efd2-2a0cf87f1530",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7c9f2d2a-3d5d-85ec-84a8-aed4f3dc20e0",
  "kind": "theorem",
  "lexical_name": "isLocalizedModule_toPushforwardStalkAlgHom_aux",
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
  "slug": "islocalizedmodule-topushforwardstalkalghom-aux--d8da5672ead2075048dc82bf",
  "source": {
    "blob": "18230a358725ee8a60d2fe0f6956d80bfcf2184d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 400,
    "line": 368,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Spec/Variant08482da5ef443af39c4e40062ac93153907fa3c33a15b7614a9eb9026d75cbd9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d8da5672ead2075048dc82bfafda52dde5620d238bb106bae504418c46a884ba",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Spec/Variant08482da5ef443af39c4e40062ac93153907fa3c33a15b7614a9eb9026d75cbd9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7c9f2d2a-3d5d-85ec-84a8-aed4f3dc20e0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 368–400.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isLocalizedModule_toPushforwardStalkAlgHom_aux (y) :
    ∃ x : S × p.asIdeal.primeCompl, x.2 • y = toPushforwardStalkAlgHom R S p x.1 := by
  obtain ⟨U, hp, s, e⟩ := TopCat.Presheaf.exists_germ_eq _ y
  obtain ⟨_, ⟨r, rfl⟩, hpr : p ∈ PrimeSpectrum.basicOpen r, hrU : PrimeSpectrum.basicOpen r ≤ U⟩ :=
    PrimeSpectrum.isTopologicalBasis_basic_opens.exists_subset_of_mem_open (show p ∈ U from hp) U.2
  change PrimeSpectrum.basicOpen r ≤ U at hrU
  replace e :=
    ((Spec.topMap (CommRingCat.ofHom (algebraMap R S)) _* (structureSheaf S).1).germ_res_apply
      (homOfLE hrU) p hpr _).trans e
  set s' := (Spec.topMap (CommRingCat.ofHom (algebraMap R S)) _* (structureSheaf S).1).map
      (homOfLE hrU).op s with h
  replace e : ((Spec.topMap (CommRingCat.ofHom (algebraMap R S)) _* (structureSheaf S).obj).germ _
      p hpr) s' = y := by
    rw [h]; exact e
  clear_value s'; clear! U
  obtain ⟨⟨s, ⟨_, n, rfl⟩⟩, hsn⟩ :=
    @IsLocalization.surj _ _ _ _ _ _
      (StructureSheaf.IsLocalization.to_basicOpen S <| algebraMap R S r) s'
  refine ⟨⟨s, ⟨r, hpr⟩ ^ n⟩, ?_⟩
  rw [Submonoid.smul_def, Algebra.smul_def, algebraMap_pushforward_stalk, toPushforwardStalk,
    CommRingCat.comp_apply, CommRingCat.comp_apply]
  iterate 2
    erw [← (Spec.topMap (CommRingCat.ofHom (algebraMap R S)) _* (structureSheaf S).1).germ_res_apply
      (homOfLE le_top) p hpr]
  rw [← e]
  let f := TopCat.Presheaf.germ (Spec.topMap (CommRingCat.ofHom (algebraMap R S)) _*
      (structureSheaf S).obj) _ p hpr
  rw [← map_mul, mul_comm]
  dsimp only [Subtype.coe_mk] at hsn
  rw [← map_pow (algebraMap R S)] at hsn
  congr 1

set_option backward.isDefEq.respectTransparency.types false in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Spec/Variant08482da5ef443af39c4e40062ac93153907fa3c33a15b7614a9eb9026d75cbd9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Spec/Variant08482da5ef443af39c4e40062ac93153907fa3c33a15b7614a9eb9026d75cbd9.lean#L368).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `18230a358725ee8a60d2fe0f6956d80bfcf2184d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
