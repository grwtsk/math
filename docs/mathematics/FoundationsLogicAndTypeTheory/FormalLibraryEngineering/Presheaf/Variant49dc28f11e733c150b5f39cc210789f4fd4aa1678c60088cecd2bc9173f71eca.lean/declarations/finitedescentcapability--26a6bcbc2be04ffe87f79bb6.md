# FiniteDescentCapability

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:acdff1186a041fa06c79ee8a1b90d2cd97a17a1fe288b7973075a0fd15b4880f",
  "kind": "structure",
  "lexical_name": "FiniteDescentCapability",
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
  "slug": "finitedescentcapability--26a6bcbc2be04ffe87f79bb6",
  "source": {
    "blob": "4fbf8719af1a7849af749081f43cf3a416b51c71",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 83,
    "line": 69,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Presheaf/Variant49dc28f11e733c150b5f39cc210789f4fd4aa1678c60088cecd2bc9173f71eca.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:26a6bcbc2be04ffe87f79bb6952f9fddcba97e8aba34c5befaea20786d52f9df",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Presheaf/Variant49dc28f11e733c150b5f39cc210789f4fd4aa1678c60088cecd2bc9173f71eca.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:acdff1186a041fa06c79ee8a1b90d2cd97a17a1fe288b7973075a0fd15b4880f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 69–83.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure FiniteDescentCapability
    {site : FiniteCommunicationSite}
    (presheaf : FiniteWorldModelPresheaf site) where
  CompatibleFamily : Type w
  GlobalSection : Type w
  localize : GlobalSection → CompatibleFamily
  glue : CompatibleFamily → GlobalSection
  restrict_glue : ∀ family, localize (glue family) = family
  glue_unique :
    ∀ family global,
      localize global = family → global = glue family

namespace FiniteDescentCapability

/-- GLUE-01: every declared compatible family glues. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Presheaf/Variant49dc28f11e733c150b5f39cc210789f4fd4aa1678c60088cecd2bc9173f71eca.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Presheaf/Variant49dc28f11e733c150b5f39cc210789f4fd4aa1678c60088cecd2bc9173f71eca.lean#L69).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4fbf8719af1a7849af749081f43cf3a416b51c71` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
