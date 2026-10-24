# RightExactFunctor.ofExact_map

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ad6aaf26-5865-8b94-5e1b-5949979db0b1",
  "kind": "theorem",
  "lexical_name": "RightExactFunctor.ofExact_map",
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
  "slug": "rightexactfunctor-ofexact-map--2075108bd039cdc982955d12",
  "source": {
    "blob": "8de08ee9823c23a269b7353671a76b2b5441b5c0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 150,
    "line": 146,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactFunctor/Variant2fc08e5f62ef3587f91ba6ca41eeb533f1df41aa356d26bdb123fe5254f7d66a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2075108bd039cdc982955d12513d23c48b0ad8874882b65251e9b0f7617c0d35",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactFunctor/Variant2fc08e5f62ef3587f91ba6ca41eeb533f1df41aa356d26bdb123fe5254f7d66a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ad6aaf26-5865-8b94-5e1b-5949979db0b1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 146–150.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem RightExactFunctor.ofExact_map {F G : C ⥤ₑ D} (α : F ⟶ G) :
    (RightExactFunctor.ofExact C D).map α = α :=
  rfl

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactFunctor/Variant2fc08e5f62ef3587f91ba6ca41eeb533f1df41aa356d26bdb123fe5254f7d66a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactFunctor/Variant2fc08e5f62ef3587f91ba6ca41eeb533f1df41aa356d26bdb123fe5254f7d66a.lean#L146).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8de08ee9823c23a269b7353671a76b2b5441b5c0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
