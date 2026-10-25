# emptyWf

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9cbe27802588df4a1d77b2372a5cc7fadf097f11c87608ccfbef7c0218aa5201",
  "kind": "def",
  "lexical_name": "emptyWf",
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
  "slug": "emptywf--7b17e461fa52ee1f3eba566b",
  "source": {
    "blob": "1d0216ed49d1250db35bc6b551fb03c0c7777293",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 160,
    "line": 148,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WF/Variantfe7c0a49de4a9c4b4fac24493f40598a1374837b17a6c334fc1ed03e23646e01.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7b17e461fa52ee1f3eba566bb6417a1b5235bd3ff4d9d85ab72b820b82b25744",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WF/Variantfe7c0a49de4a9c4b4fac24493f40598a1374837b17a6c334fc1ed03e23646e01.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9cbe27802588df4a1d77b2372a5cc7fadf097f11c87608ccfbef7c0218aa5201`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 148–160.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def emptyWf {α : Sort u} : WellFoundedRelation α where
  rel := emptyRelation
  wf  := by
    apply WellFounded.intro
    intro a
    apply Acc.intro a
    intro b h
    cases h

-- Subrelation of a well-founded relation is well-founded
namespace Subrelation
variable {α : Sort u} {r q : α → α → Prop}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WF/Variantfe7c0a49de4a9c4b4fac24493f40598a1374837b17a6c334fc1ed03e23646e01.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WF/Variantfe7c0a49de4a9c4b4fac24493f40598a1374837b17a6c334fc1ed03e23646e01.lean#L148).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1d0216ed49d1250db35bc6b551fb03c0c7777293` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
