# Config

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:606597cd1df7fe275f4e536267576a964b69b1d1759c08452c486efe8eb6a0e7",
  "kind": "structure",
  "lexical_name": "Config",
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
  "slug": "config--acb0d41f68cbf7ab120db2be",
  "source": {
    "blob": "262ef55c9888b1aab82897271fa7303669306050",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 45,
    "line": 19,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Config/Variantf928116e06514370372886f9372d82ca7bf9a4af9544bcc14aca52695ce68163.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:acb0d41f68cbf7ab120db2be48a74a0e385f7510dd3ac8fbe5b69381f78e3100",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Config/Variantf928116e06514370372886f9372d82ca7bf9a4af9544bcc14aca52695ce68163.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:606597cd1df7fe275f4e536267576a964b69b1d1759c08452c486efe8eb6a0e7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 19–45.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure Config where
  /--
  If `etaPoly` is true, we eta expand any global function application when
  the function takes local instances. The idea is that we do not generate code
  for this kind of application, and we want all of them to specialized or inlined.
  -/
  etaPoly : Bool := false
  /--
  If `inlinePartial` is `true`, we inline partial function applications tagged
  with `[inline]`. Note that this option is automatically disabled when processing
  declarations tagged with `[inline]`, marked to be specialized, or instances.
  -/
  inlinePartial := false
  /--
  If `implementedBy` is `true`, we apply the `implemented_by` replacements.
  Remark: we only apply `casesOn` replacements at phase 2 because `cases` constructor
  may not have enough information for reconstructing the original `casesOn` application at
  phase 1.
  -/
  implementedBy := false
  /--
  If `inlineDefs` is `true` then top-level definitions are inlined when they are small are
  annotated with inlining attributes.
  -/
  inlineDefs := true
  deriving Inhabited

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Config/Variantf928116e06514370372886f9372d82ca7bf9a4af9544bcc14aca52695ce68163.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Config/Variantf928116e06514370372886f9372d82ca7bf9a4af9544bcc14aca52695ce68163.lean#L19).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `262ef55c9888b1aab82897271fa7303669306050` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
