# counitCofork

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3e29246d8f7f83ce06288c8a54924d77fa495c84e310f3ebe3c309264f17afe3",
  "kind": "def",
  "lexical_name": "counitCofork",
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
  "slug": "counitcofork--5240507bbc7bd758c18a6284",
  "source": {
    "blob": "4399e6d06d0004008f76360bb6b2a0ed8c1e1235",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 200,
    "line": 194,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Monadicity/Variantc90f66ee0cad3aaa875a861179d96e946db357134b8013d07b93ee34bbf78629.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5240507bbc7bd758c18a6284e1712a629acec3ea150de61f633265090c8184a2",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Monadicity/Variantc90f66ee0cad3aaa875a861179d96e946db357134b8013d07b93ee34bbf78629.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3e29246d8f7f83ce06288c8a54924d77fa495c84e310f3ebe3c309264f17afe3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 194–200.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def counitCofork (B : D) :
    Cofork (F.map (G.map (adj.counit.app B)))
      (adj.counit.app (F.obj (G.obj B))) :=
  Cofork.ofπ (adj.counit.app B) (adj.counit_naturality _)

variable {adj} in
/-- The unit cofork is a colimit provided `G` preserves it. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Monadicity/Variantc90f66ee0cad3aaa875a861179d96e946db357134b8013d07b93ee34bbf78629.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Monadicity/Variantc90f66ee0cad3aaa875a861179d96e946db357134b8013d07b93ee34bbf78629.lean#L194).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4399e6d06d0004008f76360bb6b2a0ed8c1e1235` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
