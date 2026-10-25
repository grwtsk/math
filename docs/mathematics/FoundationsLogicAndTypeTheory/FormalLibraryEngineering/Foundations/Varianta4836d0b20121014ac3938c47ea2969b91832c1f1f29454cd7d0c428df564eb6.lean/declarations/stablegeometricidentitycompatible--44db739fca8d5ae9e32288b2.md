# StableGeometricIdentityCompatible

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d019bacb6e08429f8a4c8fce5809783b06ee1b3a956c50e6aa24503726033cdc",
  "kind": "structure",
  "lexical_name": "StableGeometricIdentityCompatible",
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
  "slug": "stablegeometricidentitycompatible--44db739fca8d5ae9e32288b2",
  "source": {
    "blob": "46bd270ba5c3b0c427c85a8ae874b04504ffc083",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 56,
    "line": 38,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Foundations/Varianta4836d0b20121014ac3938c47ea2969b91832c1f1f29454cd7d0c428df564eb6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:44db739fca8d5ae9e32288b2275d2b87d0a28e20a3a9f7a4425ebe055b50f701",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Foundations/Varianta4836d0b20121014ac3938c47ea2969b91832c1f1f29454cd7d0c428df564eb6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d019bacb6e08429f8a4c8fce5809783b06ee1b3a956c50e6aa24503726033cdc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 38–56.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure StableGeometricIdentityCompatible
    {Stage : Type uStage}
    (refines : Stage → Stage → Prop)
    (I : StableGeometricIdentityData Stage) : Prop where
  identityStable :
    ∀ {next prev}, refines next prev →
      I.witnessAt next = I.witnessAt prev
  versionCompatible :
    ∀ {next prev}, refines next prev →
      I.versionRefines (I.versionAt next) (I.versionAt prev)
  validityCompatible :
    ∀ {next prev}, refines next prev →
      I.validityRefines (I.validityAt next) (I.validityAt prev)

/--
A modular provenance-bearing source signature.  Except for entity identity and
the numerical traversal weight, fields are relations so entities need not have
exactly one incidence, factorization, coordinate, version, or provenance ref.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Foundations/Varianta4836d0b20121014ac3938c47ea2969b91832c1f1f29454cd7d0c428df564eb6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Foundations/Varianta4836d0b20121014ac3938c47ea2969b91832c1f1f29454cd7d0c428df564eb6.lean#L38).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `46bd270ba5c3b0c427c85a8ae874b04504ffc083` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
