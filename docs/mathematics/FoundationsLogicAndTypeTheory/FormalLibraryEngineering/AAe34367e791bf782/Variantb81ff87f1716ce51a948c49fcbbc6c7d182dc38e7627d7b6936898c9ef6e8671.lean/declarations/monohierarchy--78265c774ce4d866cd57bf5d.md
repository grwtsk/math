# MonoHierarchy

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:863875c3bf31f93bac4abeafea959c02ceae84183d5274e2d7aa5eb7295090dd",
  "kind": "structure",
  "lexical_name": "MonoHierarchy",
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
  "slug": "monohierarchy--78265c774ce4d866cd57bf5d",
  "source": {
    "blob": "300013b7988d9345c6ae17bf0ac675497dcc54ac",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 31,
    "line": 18,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AAe34367e791bf782/Variantb81ff87f1716ce51a948c49fcbbc6c7d182dc38e7627d7b6936898c9ef6e8671.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:78265c774ce4d866cd57bf5d2dd1d00b959c0f0561d711a3ccaecc0e903bb2fc",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AAe34367e791bf782/Variantb81ff87f1716ce51a948c49fcbbc6c7d182dc38e7627d7b6936898c9ef6e8671.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:863875c3bf31f93bac4abeafea959c02ceae84183d5274e2d7aa5eb7295090dd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 18–31.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure MonoHierarchy (Element : Type u) where
  root : Element
  parent : Element → Option Element
  siblingBefore : Element → Element → Bool
  crossingResolution : Element → Element → Bool
  contractionRepresentative : Element → Option Element

namespace MonoHierarchy

variable {Element : Type u} {Other : Type v}

end MonoHierarchy

end Mathematics.Projection
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AAe34367e791bf782/Variantb81ff87f1716ce51a948c49fcbbc6c7d182dc38e7627d7b6936898c9ef6e8671.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AAe34367e791bf782/Variantb81ff87f1716ce51a948c49fcbbc6c7d182dc38e7627d7b6936898c9ef6e8671.lean#L18).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `300013b7988d9345c6ae17bf0ac675497dcc54ac` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
