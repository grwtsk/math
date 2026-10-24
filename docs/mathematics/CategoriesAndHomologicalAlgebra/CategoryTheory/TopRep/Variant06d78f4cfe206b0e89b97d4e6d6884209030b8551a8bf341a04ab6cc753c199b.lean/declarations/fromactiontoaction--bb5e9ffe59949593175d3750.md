# fromActionToAction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:96ff50fbbc7880b6d5044ae5e24964e64c50cf3c39692039a7b76b89049c10d2",
  "kind": "def",
  "lexical_name": "fromActionToAction",
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
  "slug": "fromactiontoaction--bb5e9ffe59949593175d3750",
  "source": {
    "blob": "841f1cafa0c80e0da7db105d77dfcfb7e8fdeab6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 212,
    "line": 207,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/TopRep/Variant06d78f4cfe206b0e89b97d4e6d6884209030b8551a8bf341a04ab6cc753c199b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bb5e9ffe59949593175d3750c43d39616affd99b15570506e2c4227d4295d5ae",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/TopRep/Variant06d78f4cfe206b0e89b97d4e6d6884209030b8551a8bf341a04ab6cc753c199b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:96ff50fbbc7880b6d5044ae5e24964e64c50cf3c39692039a7b76b89049c10d2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 207–212.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def fromActionToAction (X : Action (TopModuleCat.{w} k) G) :
    toActionTopModFunc.obj (fromActionTopModFunc.obj X) ≅ X where
  hom := ⟨𝟙 _, fun _ ↦ rfl⟩
  inv := ⟨𝟙 _, fun _ ↦ rfl⟩

/-- The equivalence of categories between `TopRep k G` and `Action (TopModuleCat k) G`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/TopRep/Variant06d78f4cfe206b0e89b97d4e6d6884209030b8551a8bf341a04ab6cc753c199b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/TopRep/Variant06d78f4cfe206b0e89b97d4e6d6884209030b8551a8bf341a04ab6cc753c199b.lean#L207).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `841f1cafa0c80e0da7db105d77dfcfb7e8fdeab6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
