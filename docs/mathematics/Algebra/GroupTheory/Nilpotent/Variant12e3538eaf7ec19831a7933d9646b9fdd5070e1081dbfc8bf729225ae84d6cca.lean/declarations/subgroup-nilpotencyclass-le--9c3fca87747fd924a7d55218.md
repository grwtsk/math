# Subgroup.nilpotencyClass_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bd364832-cc4e-f593-e691-7336b054b58d",
  "kind": "theorem",
  "lexical_name": "Subgroup.nilpotencyClass_le",
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
  "slug": "subgroup-nilpotencyclass-le--9c3fca87747fd924a7d55218",
  "source": {
    "blob": "ccfb097d3d7c128cba953d03f9c093ded8e0d998",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 487,
    "line": 477,
    "path": "GRWTSK/Algebra/GroupTheory/Nilpotent/Variant12e3538eaf7ec19831a7933d9646b9fdd5070e1081dbfc8bf729225ae84d6cca.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9c3fca87747fd924a7d55218b9ffe7235e44388bdddb79536121e73fd45afb0b",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Nilpotent/Variant12e3538eaf7ec19831a7933d9646b9fdd5070e1081dbfc8bf729225ae84d6cca.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bd364832-cc4e-f593-e691-7336b054b58d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 477–487.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Subgroup.nilpotencyClass_le (H : Subgroup G) [hG : IsNilpotent G] :
    Group.nilpotencyClass H ≤ Group.nilpotencyClass G := by
  repeat rw [← lowerCentralSeries_length_eq_nilpotencyClass]
  --- Porting note : Lean needs to be told that predicates are decidable
  refine @Nat.find_mono _ _ (Classical.decPred _) (Classical.decPred _) ?_ _ _
  intro n hG
  have := lowerCentralSeries_map_subtype_le H n
  simp only [hG, SetLike.le_def, mem_map, forall_apply_eq_imp_iff₂, exists_imp] at this
  exact eq_bot_iff.mpr fun x hx => Subtype.ext (this x ⟨hx, rfl⟩)
#align subgroup.nilpotency_class_le Subgroup.nilpotencyClass_le

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Nilpotent/Variant12e3538eaf7ec19831a7933d9646b9fdd5070e1081dbfc8bf729225ae84d6cca.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Nilpotent/Variant12e3538eaf7ec19831a7933d9646b9fdd5070e1081dbfc8bf729225ae84d6cca.lean#L477).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ccfb097d3d7c128cba953d03f9c093ded8e0d998` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
