# f

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c49a1e376f39f32da4859b8350ad7f8759c6b5231e30fb7a540a8e8f54b41f00",
  "kind": "def",
  "lexical_name": "f",
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
  "slug": "f--cce69bc438002be9da76ac3b",
  "source": {
    "blob": "f91eb096aafc0da25f85ddc7ae80d0f97f2dae5e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 178,
    "line": 171,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Multivariate/Variant9b860d45504539feda9e2132f389afd6c737f0994c69c522e4240d823f9b7dfe.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cce69bc438002be9da76ac3bbe72f8f2cecbd67a0eecd89629a08f164b46e395",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Multivariate/Variant9b860d45504539feda9e2132f389afd6c737f0994c69c522e4240d823f9b7dfe.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c49a1e376f39f32da4859b8350ad7f8759c6b5231e30fb7a540a8e8f54b41f00`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 171–178.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def f :
    ∀ n α,
      (fun i : Fin2 (n + 1) => { p_1 // ofRepeat (PredLast' α pp i p_1) }) ⟹ fun i : Fin2 (n + 1) =>
        { p_1 : (α ::: β) i // PredLast α pp p_1 }
  | _, α, Fin2.fs i, x =>
    ⟨x.val, cast (by simp only [PredLast]; erw [const_iff_true]) x.property⟩
  | _, α, Fin2.fz, x => ⟨x.val, x.property⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Multivariate/Variant9b860d45504539feda9e2132f389afd6c737f0994c69c522e4240d823f9b7dfe.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Multivariate/Variant9b860d45504539feda9e2132f389afd6c737f0994c69c522e4240d823f9b7dfe.lean#L171).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f91eb096aafc0da25f85ddc7ae80d0f97f2dae5e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
