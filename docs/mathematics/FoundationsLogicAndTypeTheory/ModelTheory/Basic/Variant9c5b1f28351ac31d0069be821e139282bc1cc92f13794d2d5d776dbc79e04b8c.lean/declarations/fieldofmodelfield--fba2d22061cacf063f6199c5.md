# fieldOfModelField

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:65931f5d0c54a8600994542a8a3d4434d096472d1c7949df8da56bfde2888125",
  "kind": "abbrev",
  "lexical_name": "fieldOfModelField",
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
  "slug": "fieldofmodelfield--fba2d22061cacf063f6199c5",
  "source": {
    "blob": "751f335adf8496f6c3f8b93fdef7a8e59b8a6e37",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 136,
    "line": 102,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Basic/Variant9c5b1f28351ac31d0069be821e139282bc1cc92f13794d2d5d776dbc79e04b8c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fba2d22061cacf063f6199c529a9825d49cd2cd80276b7ea9ff547a2a85715c0",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/ModelTheory/Basic/Variant9c5b1f28351ac31d0069be821e139282bc1cc92f13794d2d5d776dbc79e04b8c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:65931f5d0c54a8600994542a8a3d4434d096472d1c7949df8da56bfde2888125`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 102–136.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable abbrev fieldOfModelField (K : Type*) [Language.ring.Structure K]
    [Theory.field.Model K] : Field K :=
  letI : DecidableEq K := Classical.decEq K
  letI := addOfRingStructure K
  letI := mulOfRingStructure K
  letI := negOfRingStructure K
  letI := zeroOfRingStructure K
  letI := oneOfRingStructure K
  letI := compatibleRingOfRingStructure K
  have exists_inv : ∀ x : K, x ≠ 0 → ∃ y : K, x * y = 1 :=
    existsInv.toProp_of_model
  letI : Inv K := ⟨fun x => if hx0 : x = 0 then 0 else Classical.choose (exists_inv x hx0)⟩
  Field.ofMinimalAxioms K
    addAssoc.toProp_of_model
    zeroAdd.toProp_of_model
    negAddCancel.toProp_of_model
    mulAssoc.toProp_of_model
    mulComm.toProp_of_model
    oneMul.toProp_of_model
    (fun x hx0 => show x * (dite _ _ _) = _ from
        (dif_neg hx0).symm ▸ Classical.choose_spec (existsInv.toProp_of_model x hx0))
    (dif_pos rfl)
    leftDistrib.toProp_of_model
    existsPairNE.toProp_of_model

section

attribute [local instance] fieldOfModelField

/-- The instances given by `fieldOfModelField` are compatible with the `Language.ring.Structure`
instance on `K`. This instance is to be used on models for the language of fields that do
not already have the ring operations on the Type.

Always add `fieldOfModelField` as a local instance first before using this instance.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/ModelTheory/Basic/Variant9c5b1f28351ac31d0069be821e139282bc1cc92f13794d2d5d776dbc79e04b8c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Basic/Variant9c5b1f28351ac31d0069be821e139282bc1cc92f13794d2d5d776dbc79e04b8c.lean#L102).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `751f335adf8496f6c3f8b93fdef7a8e59b8a6e37` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
