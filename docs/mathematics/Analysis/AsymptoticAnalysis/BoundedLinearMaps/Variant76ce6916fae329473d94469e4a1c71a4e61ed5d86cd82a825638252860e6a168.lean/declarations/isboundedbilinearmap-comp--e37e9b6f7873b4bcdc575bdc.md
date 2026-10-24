# isBoundedBilinearMap_comp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0b60a2c186c0a2aa44ea7c16ce0f23fc691d2a15",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 383,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/76/76ce6916fae329473d94469e4a1c71a4e61ed5d86cd82a825638252860e6a168.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:67a2a509-f2ab-5291-d303-8774c110ad0a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4c4e8bdd-ab86-2965-53c4-495020ad6a09",
  "kind": "theorem",
  "lexical_name": "isBoundedBilinearMap_comp",
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
  "slug": "isboundedbilinearmap-comp--e37e9b6f7873b4bcdc575bdc",
  "source": {
    "blob": "0b60a2c186c0a2aa44ea7c16ce0f23fc691d2a15",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 386,
    "line": 383,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/BoundedLinearMaps/Variant76ce6916fae329473d94469e4a1c71a4e61ed5d86cd82a825638252860e6a168.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e37e9b6f7873b4bcdc575bdcc9eb3878958cdeabd52088c78b3ad7ce7cdba607",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/BoundedLinearMaps/Variant76ce6916fae329473d94469e4a1c71a4e61ed5d86cd82a825638252860e6a168.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4c4e8bdd-ab86-2965-53c4-495020ad6a09`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 383–386.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isBoundedBilinearMap_comp :
    IsBoundedBilinearMap 𝕜 fun p : (F →L[𝕜] G) × (E →L[𝕜] F) => p.1.comp p.2 :=
  (compL 𝕜 E F G).isBoundedBilinearMap

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/BoundedLinearMaps/Variant76ce6916fae329473d94469e4a1c71a4e61ed5d86cd82a825638252860e6a168.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/BoundedLinearMaps/Variant76ce6916fae329473d94469e4a1c71a4e61ed5d86cd82a825638252860e6a168.lean#L383).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0b60a2c186c0a2aa44ea7c16ce0f23fc691d2a15` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
