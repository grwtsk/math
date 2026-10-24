# mem_intermediateFieldEquivSubgroupChar_iff_conductor_dvd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4d44dfac65146ad625c990c79ed6841b297e1437",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 218,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4f/4fec8b04a9cb35f8772d0db25b10632967c10bdd327025aa1f3d7679b5614b82.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d0bd20e4-9093-34a6-c4b6-a5832e2d4a64",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5843b69b-0201-63cc-aa6e-38043ef49fbf",
  "kind": "theorem",
  "lexical_name": "mem_intermediateFieldEquivSubgroupChar_iff_conductor_dvd",
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
  "slug": "mem-intermediatefieldequivsubgroupchar-iff-conductor-dvd--873b9c0fb30e0b4a94c807c2",
  "source": {
    "blob": "4d44dfac65146ad625c990c79ed6841b297e1437",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 230,
    "line": 218,
    "path": "GRWTSK/Algebra/Galois/Variant4fec8b04a9cb35f8772d0db25b10632967c10bdd327025aa1f3d7679b5614b82.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:873b9c0fb30e0b4a94c807c239595374993f3d14ae926438818744eaf3710ea7",
  "verification": {
    "reference": "docs/verification/Algebra/Galois/Variant4fec8b04a9cb35f8772d0db25b10632967c10bdd327025aa1f3d7679b5614b82.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5843b69b-0201-63cc-aa6e-38043ef49fbf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 218–230.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_intermediateFieldEquivSubgroupChar_iff_conductor_dvd (F : IntermediateField ℚ K)
    {m : ℕ} [NeZero m] [IsGalois ℚ F] [IsCyclotomicExtension {m} ℚ F] (hdiv : m ∣ n)
    (χ : DirichletCharacter R n) :
    χ ∈ intermediateFieldEquivSubgroupChar n K R F ↔ χ.conductor ∣ m := by
  simp_rw [← χ.mem_conductorSet_iff_conductor_dvd hdiv, χ.mem_conductorSet_iff,
    factorsThrough_iff_ker_unitsMap hdiv, mem_intermediateFieldEquivSubgroupChar_iff,
    SetLike.le_def, ← (galEquivZMod n K).forall_congr_right, MonoidHom.mem_ker,
    MulEquiv.toEquiv_eq_coe, EquivLike.coe_coe, ← (galEquivZMod_restrictNormal_apply n K F hdiv _),
    EmbeddingLike.map_eq_one_iff, AlgEquiv.restrictNormal_eq_one_iff,
    IntermediateField.mem_fixingSubgroup_iff, Units.ext_iff, toUnitHom_eq, coe_equivToUnitHom,
    Units.val_one]

end IsCyclotomicExtension.Rat
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Galois/Variant4fec8b04a9cb35f8772d0db25b10632967c10bdd327025aa1f3d7679b5614b82.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Galois/Variant4fec8b04a9cb35f8772d0db25b10632967c10bdd327025aa1f3d7679b5614b82.lean#L218).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4d44dfac65146ad625c990c79ed6841b297e1437` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
