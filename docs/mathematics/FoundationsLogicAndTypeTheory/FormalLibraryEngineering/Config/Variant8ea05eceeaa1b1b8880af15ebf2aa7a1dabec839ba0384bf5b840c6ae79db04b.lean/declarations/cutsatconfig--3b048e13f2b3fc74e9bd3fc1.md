# CutsatConfig

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:81989b2cf254861691a1349a2d471870124734e66eeec0cde9abac2f855d2a45",
  "kind": "structure",
  "lexical_name": "CutsatConfig",
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
  "slug": "cutsatconfig--3b048e13f2b3fc74e9bd3fc1",
  "source": {
    "blob": "be7efd36fe006cde0bfab2af1a5e53be2e880272",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 313,
    "line": 299,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Config/Variant8ea05eceeaa1b1b8880af15ebf2aa7a1dabec839ba0384bf5b840c6ae79db04b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3b048e13f2b3fc74e9bd3fc12101529cf79c786b2d1956b5de001a60044edb2e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Config/Variant8ea05eceeaa1b1b8880af15ebf2aa7a1dabec839ba0384bf5b840c6ae79db04b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:81989b2cf254861691a1349a2d471870124734e66eeec0cde9abac2f855d2a45`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 299–313.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure CutsatConfig extends NoopConfig where
  lia := true
  -- Allow the default number of splits.
  splits := ({} : Config).splits
  -- Re-enable E-matching, so the `@[lia]` lemma set is instantiated.
  -- The active theorem set is restricted to lemmas tagged `@[lia]`, not the full `@[grind]` set.
  ematch := ({} : Config).ematch
  -- despite having e-matching for @[lia] we do not want (potentially runaway) local theorem
  -- instantiation
  genLocal := 0

/--
A `grind` configuration that only uses `linarith`.
-/
-- This is a `structure` rather than `def` so we can use `declare_config_elab`.
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Config/Variant8ea05eceeaa1b1b8880af15ebf2aa7a1dabec839ba0384bf5b840c6ae79db04b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Config/Variant8ea05eceeaa1b1b8880af15ebf2aa7a1dabec839ba0384bf5b840c6ae79db04b.lean#L299).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `be7efd36fe006cde0bfab2af1a5e53be2e880272` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
