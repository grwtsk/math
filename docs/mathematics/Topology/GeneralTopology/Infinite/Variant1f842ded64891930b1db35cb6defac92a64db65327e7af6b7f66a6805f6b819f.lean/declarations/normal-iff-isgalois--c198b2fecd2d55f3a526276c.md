# normal_iff_isGalois

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f9523833f551d886ec45d137d31d72c4f83cbbea",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 261,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1f/1f842ded64891930b1db35cb6defac92a64db65327e7af6b7f66a6805f6b819f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:92556491-f319-3134-be13-74c30696d5c3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:41de2cfc-4d88-6310-a415-cff72c5fa9dc",
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
  "slug": "normal-iff-isgalois--c198b2fecd2d55f3a526276c",
  "source": {
    "blob": "f9523833f551d886ec45d137d31d72c4f83cbbea",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 287,
    "line": 261,
    "path": "GRWTSK/Topology/GeneralTopology/Infinite/Variant1f842ded64891930b1db35cb6defac92a64db65327e7af6b7f66a6805f6b819f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c198b2fecd2d55f3a526276c11c613fb33f08dc616307621274c715e6d268da1",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Infinite/Variant1f842ded64891930b1db35cb6defac92a64db65327e7af6b7f66a6805f6b819f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:41de2cfc-4d88-6310-a415-cff72c5fa9dc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 261–287.

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
    constructor
  · simpa only [IntermediateFieldEquivClosedSubgroup, RelIso.coe_fn_mk, Equiv.coe_fn_mk,
      ← L.restrictNormalHom_ker] using MonoidHom.normal_ker (restrictNormalHom L)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Infinite/Variant1f842ded64891930b1db35cb6defac92a64db65327e7af6b7f66a6805f6b819f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Infinite/Variant1f842ded64891930b1db35cb6defac92a64db65327e7af6b7f66a6805f6b819f.lean#L261).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f9523833f551d886ec45d137d31d72c4f83cbbea` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
