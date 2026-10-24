# normal_iff_isGalois

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e54dcbced2dc3324deebac70c173bdf7908458e0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 232,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/60/60dba8872c9c69d03cdf25b98ebd38c885427272a8440a39b7e34e800d6afcd3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2ab85064-d33b-b531-acd8-3e9d4ebc0e14",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3007cc16-bf02-37b3-3ed2-bbf1b77aaf44",
  "kind": "theorem",
  "lexical_name": "normal_iff_isGalois",
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
  "slug": "normal-iff-isgalois--9b699c219812080fc0a32505",
  "source": {
    "blob": "e54dcbced2dc3324deebac70c173bdf7908458e0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 260,
    "line": 232,
    "path": "GRWTSK/Topology/GeneralTopology/Infinite/Variant60dba8872c9c69d03cdf25b98ebd38c885427272a8440a39b7e34e800d6afcd3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9b699c219812080fc0a32505dcd8e4cb20a5738075b3f1bcf6ab9966a4c4868a",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Infinite/Variant60dba8872c9c69d03cdf25b98ebd38c885427272a8440a39b7e34e800d6afcd3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3007cc16-bf02-37b3-3ed2-bbf1b77aaf44`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 232–260.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem normal_iff_isGalois (L : IntermediateField k K) [IsGalois k K] :
    L.fixingSubgroup.Normal ↔ IsGalois k L := by
  refine ⟨fun h ↦ ?_, fun h ↦ ?_⟩
  · let g (x : K) := L.fixingSubgroup.map (restrictNormalHom (adjoin k {x}))
    let f (x : L) : IntermediateField k K := IntermediateField.lift <|
      IntermediateField.fixedField <| g x.1
    have (x : K) : (g x).Normal :=
      Subgroup.Normal.map h (restrictNormalHom (adjoin k {x})) (restrictNormalHom_surjective K)
    have (l : L) := IsGalois.of_fixedField_normal_subgroup (g l.1)
    have (l : L) : Normal k (f l) :=
      Normal.of_algEquiv <| IntermediateField.liftAlgEquiv <| IntermediateField.fixedField (g l.1)
    have n : Normal k ↥(⨆ l : L, f l) := IntermediateField.normal_iSup k K f
    have : (⨆ l : L, f l) = L := by
      apply le_antisymm
      · apply iSup_le
        intro l
        simpa only [f, g, ← restrict_fixedField L.fixingSubgroup (adjoin k {l.1}),
          fixedField_fixingSubgroup L] using inf_le_left
      · intro l hl
        apply le_iSup f ⟨l, hl⟩
        simpa only [f, g, ← restrict_fixedField L.fixingSubgroup (adjoin k {l}),
          fixedField_fixingSubgroup L, IntermediateField.mem_inf, hl, true_and]
          using adjoin_simple_le_iff.mp le_rfl
    rw [this] at n
    let _ : Algebra.IsSeparable k L := Algebra.isSeparable_tower_bot_of_isSeparable k L K
    apply IsGalois.mk
  · simpa only [IntermediateFieldEquivClosedSubgroup, RelIso.coe_fn_mk, Equiv.coe_fn_mk,
      ← L.restrictNormalHom_ker] using MonoidHom.normal_ker (restrictNormalHom L)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Infinite/Variant60dba8872c9c69d03cdf25b98ebd38c885427272a8440a39b7e34e800d6afcd3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Infinite/Variant60dba8872c9c69d03cdf25b98ebd38c885427272a8440a39b7e34e800d6afcd3.lean#L232).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e54dcbced2dc3324deebac70c173bdf7908458e0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
