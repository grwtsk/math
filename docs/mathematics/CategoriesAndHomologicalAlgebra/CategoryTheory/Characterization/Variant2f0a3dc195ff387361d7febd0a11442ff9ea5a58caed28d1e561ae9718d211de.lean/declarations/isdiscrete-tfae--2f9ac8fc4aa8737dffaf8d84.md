# isDiscrete_tfae

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "609b43545d9205de9c6388773a61af5de6a124e4",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 76,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2f/2f0a3dc195ff387361d7febd0a11442ff9ea5a58caed28d1e561ae9718d211de.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4d0e3646-4de0-400c-9ab2-34556d78e981",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7ab8e868-d4cb-989b-a3a8-d9b7c7226b2c",
  "kind": "theorem",
  "lexical_name": "isDiscrete_tfae",
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
  "slug": "isdiscrete-tfae--2f9ac8fc4aa8737dffaf8d84",
  "source": {
    "blob": "609b43545d9205de9c6388773a61af5de6a124e4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 113,
    "line": 76,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Characterization/Variant2f0a3dc195ff387361d7febd0a11442ff9ea5a58caed28d1e561ae9718d211de.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2f9ac8fc4aa8737dffaf8d84fa0b176b51d8b7d36a87d7d9cfb76cfb914e30c1",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Characterization/Variant2f0a3dc195ff387361d7febd0a11442ff9ea5a58caed28d1e561ae9718d211de.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7ab8e868-d4cb-989b-a3a8-d9b7c7226b2c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 76–113.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isDiscrete_tfae (X : CondensedSet.{u}) :
    TFAE
    [ X.IsDiscrete
    , IsIso ((Condensed.discreteUnderlyingAdj _).counit.app X)
    , (Condensed.discrete _).essImage X
    , CondensedSet.LocallyConstant.functor.essImage X
    , IsIso (CondensedSet.LocallyConstant.adjunction.counit.app X)
    , Sheaf.IsConstant (coherentTopology Profinite)
        ((Condensed.ProfiniteCompHaus.equivalence _).inverse.obj X)
    , ∀ S : Profinite.{u}, Nonempty
        (IsColimit <| (profiniteToCompHaus.op ⋙ X.obj).mapCocone S.asLimitCone.op)
    ] := by
  tfae_have 1 ↔ 2 := Sheaf.isConstant_iff_isIso_counit_app _ _ _
  tfae_have 1 ↔ 3 := ⟨fun ⟨h⟩ ↦ h, fun h ↦ ⟨h⟩⟩
  tfae_have 1 ↔ 4 := Sheaf.isConstant_iff_mem_essImage _ CompHaus.isTerminalPUnit adjunction _
  tfae_have 1 ↔ 5 :=
    have : functor.Faithful := inferInstance
    have : functor.Full := inferInstance
    -- These `have` statements above shouldn't be needed, but they are.
    Sheaf.isConstant_iff_isIso_counit_app' _ CompHaus.isTerminalPUnit adjunction _
  tfae_have 1 ↔ 6 :=
    (Sheaf.isConstant_iff_of_equivalence (coherentTopology Profinite)
      (coherentTopology CompHaus) profiniteToCompHaus Profinite.isTerminalPUnit
      CompHaus.isTerminalPUnit _).symm
  tfae_have 7 → 4 := fun h ↦
    mem_locallyConstant_essImage_of_isColimit_mapCocone X (fun S ↦ (h S).some)
  tfae_have 4 → 7 := fun ⟨Y, ⟨i⟩⟩ S ↦
    ⟨IsColimit.mapCoconeEquiv (isoWhiskerLeft profiniteToCompHaus.op
      ((sheafToPresheaf _ _).mapIso i))
      (Condensed.isColimitLocallyConstantPresheafDiagram Y S)⟩
  tfae_finish

end CondensedSet

namespace CondensedMod

variable (R : Type (u + 1)) [Ring R]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Characterization/Variant2f0a3dc195ff387361d7febd0a11442ff9ea5a58caed28d1e561ae9718d211de.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Characterization/Variant2f0a3dc195ff387361d7febd0a11442ff9ea5a58caed28d1e561ae9718d211de.lean#L76).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `609b43545d9205de9c6388773a61af5de6a124e4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
