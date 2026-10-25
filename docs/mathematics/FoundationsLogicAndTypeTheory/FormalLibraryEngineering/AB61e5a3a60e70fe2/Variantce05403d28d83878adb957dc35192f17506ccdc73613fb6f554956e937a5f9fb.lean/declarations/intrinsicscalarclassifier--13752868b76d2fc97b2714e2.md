# IntrinsicScalarClassifier

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0cb93cc5af7ecc1ada0431a0066679a39c09f42de63c24a4556f2f9a58c4f874",
  "kind": "structure",
  "lexical_name": "IntrinsicScalarClassifier",
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
  "slug": "intrinsicscalarclassifier--13752868b76d2fc97b2714e2",
  "source": {
    "blob": "e07012b57fc71cdf03086034843295dc6ab8ac6c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 38,
    "line": 26,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AB61e5a3a60e70fe2/Variantce05403d28d83878adb957dc35192f17506ccdc73613fb6f554956e937a5f9fb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:13752868b76d2fc97b2714e2a663603e28b146500196b68afd61643f56027590",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AB61e5a3a60e70fe2/Variantce05403d28d83878adb957dc35192f17506ccdc73613fb6f554956e937a5f9fb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0cb93cc5af7ecc1ada0431a0066679a39c09f42de63c24a4556f2f9a58c4f874`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 26–38.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure IntrinsicScalarClassifier
    (signature : StructuralSignature.{u, v}) where
  code : PolyHierarchy.{w, u, v} signature → Nat
  isoInvariant :
    ∀ {left right : PolyHierarchy.{w, u, v} signature},
      Nonempty (StructuralIso left right) →
        code left = code right
  complete :
    ∀ {left right : PolyHierarchy.{w, u, v} signature},
      code left = code right →
        Nonempty (StructuralIso left right)

end Mathematics.Projection
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AB61e5a3a60e70fe2/Variantce05403d28d83878adb957dc35192f17506ccdc73613fb6f554956e937a5f9fb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AB61e5a3a60e70fe2/Variantce05403d28d83878adb957dc35192f17506ccdc73613fb6f554956e937a5f9fb.lean#L26).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e07012b57fc71cdf03086034843295dc6ab8ac6c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
