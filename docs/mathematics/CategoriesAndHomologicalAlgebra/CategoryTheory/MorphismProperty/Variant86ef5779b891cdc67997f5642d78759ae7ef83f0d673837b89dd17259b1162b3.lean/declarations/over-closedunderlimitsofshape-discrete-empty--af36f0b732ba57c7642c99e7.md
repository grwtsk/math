# Over.closedUnderLimitsOfShape_discrete_empty

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e37899f7-908b-5dee-0ebd-498ba42f4b5e",
  "kind": "lemma",
  "lexical_name": "Over.closedUnderLimitsOfShape_discrete_empty",
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
  "slug": "over-closedunderlimitsofshape-discrete-empty--af36f0b732ba57c7642c99e7",
  "source": {
    "blob": "decdeb5317c240d0fdfefca4af560341cf5ea117",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 97,
    "line": 89,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/MorphismProperty/Variant86ef5779b891cdc67997f5642d78759ae7ef83f0d673837b89dd17259b1162b3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:af36f0b732ba57c7642c99e73083a111e9e447b7ce196b678e5abf7e9c968680",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/MorphismProperty/Variant86ef5779b891cdc67997f5642d78759ae7ef83f0d673837b89dd17259b1162b3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e37899f7-908b-5dee-0ebd-498ba42f4b5e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 89–97.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Over.closedUnderLimitsOfShape_discrete_empty [P.ContainsIdentities] [P.RespectsIso] :
    ClosedUnderLimitsOfShape (Discrete PEmpty.{1}) (fun f : Over X ↦ P f.hom) :=
  CostructuredArrow.closedUnderLimitsOfShape_discrete_empty P

/-- Let `P` be stable under composition and base change. If `P` satisfies cancellation on the right,
the subcategory of `Over X` defined by `P` is closed under pullbacks.

Without the cancellation property, this does not in general. Consider for example
`P = Function.Surjective` on `Type`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/MorphismProperty/Variant86ef5779b891cdc67997f5642d78759ae7ef83f0d673837b89dd17259b1162b3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/MorphismProperty/Variant86ef5779b891cdc67997f5642d78759ae7ef83f0d673837b89dd17259b1162b3.lean#L89).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `decdeb5317c240d0fdfefca4af560341cf5ea117` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
