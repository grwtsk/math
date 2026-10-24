# isoQuotientStabilizerOfIsConnected

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:72e4c5ad9f101f71d60a01de497224bb1755eb05b677e89efaf76d732f89b489",
  "kind": "def",
  "lexical_name": "isoQuotientStabilizerOfIsConnected",
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
  "slug": "isoquotientstabilizerofisconnected--f9aa9a2eb207738d0e55c607",
  "source": {
    "blob": "51b8c05b6c24110f3375d34cc6d18fd07f7f896d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 176,
    "line": 161,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Examples/Varianta058bc49b630ace667dc67ccba2a22fadab075136358938492705235713b864f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f9aa9a2eb207738d0e55c607a0b42ac149e9e061dc1a585dbf7415a2daf7ba15",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Examples/Varianta058bc49b630ace667dc67ccba2a22fadab075136358938492705235713b864f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:72e4c5ad9f101f71d60a01de497224bb1755eb05b677e89efaf76d732f89b489`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 161–176.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def isoQuotientStabilizerOfIsConnected (X : Action FintypeCat G)
    [IsConnected X] (x : X.V) [Fintype (G ⧸ (MulAction.stabilizer G x))] :
    X ≅ G ⧸ₐ MulAction.stabilizer G x :=
  haveI : MulAction.IsPretransitive G X.V := Action.pretransitive_of_isConnected G X
  let e : X.V ≃ G ⧸ MulAction.stabilizer G x :=
    (Equiv.Set.univ X.V).symm.trans <|
      (Equiv.setCongr ((MulAction.orbit_eq_univ G x).symm)).trans <|
      MulAction.orbitEquivQuotientStabilizer G x
  Iso.symm <| Action.mkIso (FintypeCat.equivEquivIso e.symm) <| fun σ : G ↦ by
    ext (a : G ⧸ MulAction.stabilizer G x)
    obtain ⟨τ, rfl⟩ := Quotient.exists_rep a
    exact mul_smul σ τ x

end FintypeCat

end CategoryTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Examples/Varianta058bc49b630ace667dc67ccba2a22fadab075136358938492705235713b864f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Examples/Varianta058bc49b630ace667dc67ccba2a22fadab075136358938492705235713b864f.lean#L161).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `51b8c05b6c24110f3375d34cc6d18fd07f7f896d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
