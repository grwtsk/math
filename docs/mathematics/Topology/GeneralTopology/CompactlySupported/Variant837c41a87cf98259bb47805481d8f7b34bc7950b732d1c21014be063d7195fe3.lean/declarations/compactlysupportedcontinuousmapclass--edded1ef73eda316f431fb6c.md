# CompactlySupportedContinuousMapClass

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d00e3a3d40541e54dfa22f5f2df996bce4956a2bd5172ff899bf77f1caa3d158",
  "kind": "class",
  "lexical_name": "CompactlySupportedContinuousMapClass",
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
  "slug": "compactlysupportedcontinuousmapclass--edded1ef73eda316f431fb6c",
  "source": {
    "blob": "756663c8d2496bfcef23a2d7e7545579bcc4bdf7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 83,
    "line": 69,
    "path": "GRWTSK/Topology/GeneralTopology/CompactlySupported/Variant837c41a87cf98259bb47805481d8f7b34bc7950b732d1c21014be063d7195fe3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:edded1ef73eda316f431fb6c3c406e59771d4adb0764a24192f19281068ab8a9",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/CompactlySupported/Variant837c41a87cf98259bb47805481d8f7b34bc7950b732d1c21014be063d7195fe3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d00e3a3d40541e54dfa22f5f2df996bce4956a2bd5172ff899bf77f1caa3d158`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 69–83.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class CompactlySupportedContinuousMapClass (F : Type*) (α β : outParam <| Type*)
    [TopologicalSpace α] [Zero β] [TopologicalSpace β] [FunLike F α β] : Prop
    extends ContinuousMapClass F α β where
  /-- Each member of the class has compact support. -/
  hasCompactSupport (f : F) : HasCompactSupport f

end

namespace CompactlySupportedContinuousMap

section Basics

variable [TopologicalSpace β] [Zero β]

@[macro_inline]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/CompactlySupported/Variant837c41a87cf98259bb47805481d8f7b34bc7950b732d1c21014be063d7195fe3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/CompactlySupported/Variant837c41a87cf98259bb47805481d8f7b34bc7950b732d1c21014be063d7195fe3.lean#L69).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `756663c8d2496bfcef23a2d7e7545579bcc4bdf7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
