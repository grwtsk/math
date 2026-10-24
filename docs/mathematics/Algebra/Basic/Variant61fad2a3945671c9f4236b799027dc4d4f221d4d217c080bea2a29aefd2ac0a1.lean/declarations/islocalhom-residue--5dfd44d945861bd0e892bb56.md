# isLocalHom_residue

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6f9262eddc439988026f70d67e5f555cd0643e46",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 195,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/61/61fad2a3945671c9f4236b799027dc4d4f221d4d217c080bea2a29aefd2ac0a1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:33d71e43-44c2-2411-1c6c-a6faaa51449a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:06ca7a1f-c720-1444-e4fe-7632ece92797",
  "kind": "theorem",
  "lexical_name": "isLocalHom_residue",
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
  "slug": "islocalhom-residue--5dfd44d945861bd0e892bb56",
  "source": {
    "blob": "6f9262eddc439988026f70d67e5f555cd0643e46",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 271,
    "line": 195,
    "path": "GRWTSK/Algebra/Basic/Variant61fad2a3945671c9f4236b799027dc4d4f221d4d217c080bea2a29aefd2ac0a1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5dfd44d945861bd0e892bb567a6860534295955e2bb8f1e90ebee1aa2fce5fcd",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variant61fad2a3945671c9f4236b799027dc4d4f221d4d217c080bea2a29aefd2ac0a1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:06ca7a1f-c720-1444-e4fe-7632ece92797`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 195–271.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isLocalHom_residue : IsLocalHom (IsLocalRing.residue R) := by
  constructor
  intro a ha
  by_contra h
  rw [residue_def, Ideal.Quotient.eq_zero_iff_mem.mpr ((IsLocalRing.mem_maximalIdeal _).mpr h)]
    at ha
  exact ha.ne_zero rfl

end

end IsLocalRing

@[deprecated (since := "2024-11-11")]
alias LocalRing.ker_residue := IsLocalRing.ker_residue

@[deprecated (since := "2024-11-11")]
alias LocalRing.residue_eq_zero_iff := IsLocalRing.residue_eq_zero_iff

@[deprecated (since := "2024-11-11")]
alias LocalRing.residue_ne_zero_iff_isUnit := IsLocalRing.residue_ne_zero_iff_isUnit

@[deprecated (since := "2024-11-11")]
alias LocalRing.residue_surjective := IsLocalRing.residue_surjective

@[deprecated (since := "2024-11-11")]
alias LocalRing.ResidueField.algebraMap_eq := IsLocalRing.ResidueField.algebraMap_eq

@[deprecated (since := "2024-11-11")]
alias LocalRing.ResidueField.lift := IsLocalRing.ResidueField.lift

@[deprecated (since := "2024-11-11")]
alias LocalRing.ResidueField.lift_comp_residue := IsLocalRing.ResidueField.lift_comp_residue

@[deprecated (since := "2024-11-11")]
alias LocalRing.ResidueField.lift_residue_apply := IsLocalRing.ResidueField.lift_residue_apply

@[deprecated (since := "2024-11-11")]
alias LocalRing.ResidueField.map := IsLocalRing.ResidueField.map

@[deprecated (since := "2024-11-11")]
alias LocalRing.ResidueField.map_id := IsLocalRing.ResidueField.map_id

@[deprecated (since := "2024-11-11")]
alias LocalRing.ResidueField.map_comp := IsLocalRing.ResidueField.map_comp

@[deprecated (since := "2024-11-11")]
alias LocalRing.ResidueField.map_comp_residue := IsLocalRing.ResidueField.map_comp_residue

@[deprecated (since := "2024-11-11")]
alias LocalRing.ResidueField.map_residue := IsLocalRing.ResidueField.map_residue

@[deprecated (since := "2024-11-11")]
alias LocalRing.ResidueField.map_id_apply := IsLocalRing.ResidueField.map_id_apply

@[deprecated (since := "2024-11-11")]
alias LocalRing.ResidueField.map_map := IsLocalRing.ResidueField.map_map

@[deprecated (since := "2024-11-11")]
alias LocalRing.ResidueField.mapEquiv := IsLocalRing.ResidueField.mapEquiv

@[deprecated (since := "2024-11-11")]
alias LocalRing.ResidueField.mapEquiv.symm := IsLocalRing.ResidueField.mapEquiv.symm

@[deprecated (since := "2024-11-11")]
alias LocalRing.ResidueField.mapEquiv_trans := IsLocalRing.ResidueField.mapEquiv_trans

@[deprecated (since := "2024-11-11")]
alias LocalRing.ResidueField.mapEquiv_refl := IsLocalRing.ResidueField.mapEquiv_refl

@[deprecated (since := "2024-11-11")]
alias LocalRing.ResidueField.mapAut := IsLocalRing.ResidueField.mapAut

@[deprecated (since := "2024-11-11")]
alias LocalRing.ResidueField.residue_smul := IsLocalRing.ResidueField.residue_smul

@[deprecated (since := "2024-11-11")]
alias LocalRing.ResidueField.finite_of_finite := IsLocalRing.ResidueField.finite_of_finite
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variant61fad2a3945671c9f4236b799027dc4d4f221d4d217c080bea2a29aefd2ac0a1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variant61fad2a3945671c9f4236b799027dc4d4f221d4d217c080bea2a29aefd2ac0a1.lean#L195).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6f9262eddc439988026f70d67e5f555cd0643e46` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
