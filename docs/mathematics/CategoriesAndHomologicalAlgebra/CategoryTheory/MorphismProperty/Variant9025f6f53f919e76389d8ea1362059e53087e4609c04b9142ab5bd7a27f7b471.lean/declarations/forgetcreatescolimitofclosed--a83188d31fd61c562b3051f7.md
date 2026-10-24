# forgetCreatesColimitOfClosed

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bd7bcc38a41292cb208c546db0afc65a9acd0849eabc6bc505dac5920d7bc234",
  "kind": "def",
  "lexical_name": "forgetCreatesColimitOfClosed",
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
  "slug": "forgetcreatescolimitofclosed--a83188d31fd61c562b3051f7",
  "source": {
    "blob": "77887bf594e7b084cdea7a9c2ef439f99b7e4463",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 83,
    "line": 72,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/MorphismProperty/Variant9025f6f53f919e76389d8ea1362059e53087e4609c04b9142ab5bd7a27f7b471.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a83188d31fd61c562b3051f726f2a6517496e80b3911c616ee1f6dc3cda7b12d",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/MorphismProperty/Variant9025f6f53f919e76389d8ea1362059e53087e4609c04b9142ab5bd7a27f7b471.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bd7bcc38a41292cb208c546db0afc65a9acd0849eabc6bc505dac5920d7bc234`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 72–83.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def forgetCreatesColimitOfClosed
    [(P.commaObj L R).IsClosedUnderColimitsOfShape J]
    [HasColimit (D ⋙ forget L R P ⊤ ⊤)] :
    CreatesColimit D (forget L R P ⊤ ⊤) :=
  createsColimitOfFullyFaithfulOfIso
    (⟨colimit (D ⋙ forget L R P ⊤ ⊤),
      (P.commaObj L R).prop_colimit _ (fun j ↦ (D.obj j).prop)⟩) (Iso.refl _)

variable (J) in
/-- If `Comma L R` has colimits of shape `J` and `Comma L R` is closed under colimits of shape
`J`, then `forget L R P ⊤ ⊤` creates colimits of shape `J`. -/
@[instance_reducible]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/MorphismProperty/Variant9025f6f53f919e76389d8ea1362059e53087e4609c04b9142ab5bd7a27f7b471.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/MorphismProperty/Variant9025f6f53f919e76389d8ea1362059e53087e4609c04b9142ab5bd7a27f7b471.lean#L72).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `77887bf594e7b084cdea7a9c2ef439f99b7e4463` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
