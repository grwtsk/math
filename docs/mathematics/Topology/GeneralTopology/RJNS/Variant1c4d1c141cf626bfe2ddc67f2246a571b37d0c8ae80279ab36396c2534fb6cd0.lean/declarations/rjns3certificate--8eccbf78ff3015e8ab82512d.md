# rjns3Certificate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:975c6151-45f4-baa7-a2e6-5ec1a7da8ed5",
  "kind": "theorem",
  "lexical_name": "rjns3Certificate",
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
  "slug": "rjns3certificate--8eccbf78ff3015e8ab82512d",
  "source": {
    "blob": "464a5017fb270baa62a28c085aada73adf5ffae7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 209,
    "line": 186,
    "path": "GRWTSK/Topology/GeneralTopology/RJNS/Variant1c4d1c141cf626bfe2ddc67f2246a571b37d0c8ae80279ab36396c2534fb6cd0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8eccbf78ff3015e8ab82512d789040bfbb73f87cb9debd4f07c0f5687f34a42a",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/RJNS/Variant1c4d1c141cf626bfe2ddc67f2246a571b37d0c8ae80279ab36396c2534fb6cd0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:975c6151-45f4-baa7-a2e6-5ec1a7da8ed5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 186–209.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rjns3Certificate
    {X k : Type*} [Fintype X] [DecidableEq X] [Field k]
    (relation : OperationalRelation X)
    (ontologyIdeal : FunctionIdeal X k) :
    ReflectiveJacobsonNullstellensatzCertificate X k relation ontologyIdeal where
  theoryMatches := rfl
  theoremMatches := rfl
  kuratowski := relation.kuratowskiCertificate
  topologyClosure := relation.topological_closure_eq
  nullstellensatz := ontologyIdeal.finite_nullstellensatz
  satisfiability := ontologyIdeal.satisfiable_iff_not_top
  representedConsequence := ontologyIdeal.represented_consequence_iff
  reflectivePreservation := reflective_preservation_iff ontologyIdeal
  determiningSampleScoped := full_function_determining_sample_eq_univ
  precisionBounds := by
    intro extensional evidenceResolution
    exact ⟨normativePrecision_le_extensional _ _,
      normativePrecision_le_evidence _ _⟩
  changeClassification := by
    intro Y inst before after
    exact SemanticChangeClass.classify_sound before after
  oiBoundary := ⟨oi4_unclaimed, oi5_unclaimed⟩

end Cord
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/RJNS/Variant1c4d1c141cf626bfe2ddc67f2246a571b37d0c8ae80279ab36396c2534fb6cd0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/RJNS/Variant1c4d1c141cf626bfe2ddc67f2246a571b37d0c8ae80279ab36396c2534fb6cd0.lean#L186).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `464a5017fb270baa62a28c085aada73adf5ffae7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
