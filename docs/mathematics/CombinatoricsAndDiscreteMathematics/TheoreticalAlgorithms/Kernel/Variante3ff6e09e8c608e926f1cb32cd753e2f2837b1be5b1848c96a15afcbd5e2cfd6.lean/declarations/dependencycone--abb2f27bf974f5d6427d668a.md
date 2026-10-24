# DependencyCone

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:05e61e1d261ee080accab8812714c994d6d5c61a18150b8164fc59f60ebf8806",
  "kind": "structure",
  "lexical_name": "DependencyCone",
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
  "slug": "dependencycone--abb2f27bf974f5d6427d668a",
  "source": {
    "blob": "8660fc651545e6175128e8d4db80090514c4a0c6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 96,
    "line": 74,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Kernel/Variante3ff6e09e8c608e926f1cb32cd753e2f2837b1be5b1848c96a15afcbd5e2cfd6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:abb2f27bf974f5d6427d668a93480e53eeddd7ae0c911c12fdae662235b41abb",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Kernel/Variante3ff6e09e8c608e926f1cb32cd753e2f2837b1be5b1848c96a15afcbd5e2cfd6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:05e61e1d261ee080accab8812714c994d6d5c61a18150b8164fc59f60ebf8806`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 74–96.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure DependencyCone
    (declaration : KernelDeclarationIdentity) where
  dependencies : List ObjectAddress
  directDependencies : ObjectAddress → List ObjectAddress
  root_listed :
    declaration.declarationAddress ∈ dependencies
  closed_under_direct_dependencies :
    ∀ parent ∈ dependencies,
      ∀ child ∈ directDependencies parent,
        child ∈ dependencies
  every_listed_dependency_reachable :
    ∀ dependency ∈ dependencies,
      DeclarationReachable directDependencies
        declaration.declarationAddress dependency
  every_reachable_dependency_listed :
    ∀ dependency,
      DeclarationReachable directDependencies
          declaration.declarationAddress dependency →
        dependency ∈ dependencies
  coneDigest : Digest
  coneDigest_valid : coneDigest.Valid

/-- Exact transitive axiom closure, bound to the audited declaration. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Kernel/Variante3ff6e09e8c608e926f1cb32cd753e2f2837b1be5b1848c96a15afcbd5e2cfd6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Kernel/Variante3ff6e09e8c608e926f1cb32cd753e2f2837b1be5b1848c96a15afcbd5e2cfd6.lean#L74).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8660fc651545e6175128e8d4db80090514c4a0c6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
