# denote_blastShiftRightConst

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d98444aa9dcbee552359921f0433108891af10b0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 151,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5a/5acfb1b9ddf9280355da456ee0b0f8bf766094fff089fe46b32ee18ec837c342.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8956a46b-bb78-8d7a-4d53-5a90e8d2a296",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c9062559-fe37-8dda-f3ab-2d7a321981fd",
  "kind": "theorem",
  "lexical_name": "denote_blastShiftRightConst",
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
  "slug": "denote-blastshiftrightconst--bc57c06579b73282e6804a19",
  "source": {
    "blob": "d98444aa9dcbee552359921f0433108891af10b0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 171,
    "line": 151,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ShiftRight/Variant5acfb1b9ddf9280355da456ee0b0f8bf766094fff089fe46b32ee18ec837c342.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bc57c06579b73282e6804a191dde4030737ad25a685b7cd79ab3c2a73f537637",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ShiftRight/Variant5acfb1b9ddf9280355da456ee0b0f8bf766094fff089fe46b32ee18ec837c342.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c9062559-fe37-8dda-f3ab-2d7a321981fd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 151–171.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem denote_blastShiftRightConst (aig : AIG α) (target : ShiftTarget aig w)
    (assign : α → Bool) :
    ∀ (idx : Nat) (hidx : idx < w),
        ⟦
          (blastShiftRightConst aig target).aig,
          (blastShiftRightConst aig target).vec.get idx hidx,
          assign
        ⟧
          =
        if hidx : (target.distance + idx) < w then
          ⟦aig, target.vec.get (target.distance + idx) (by omega), assign⟧
        else
          false
        := by
  intros
  unfold blastShiftRightConst
  apply blastShiftRightConst.go_denote_eq
  omega

namespace blastArithShiftRightConst

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ShiftRight/Variant5acfb1b9ddf9280355da456ee0b0f8bf766094fff089fe46b32ee18ec837c342.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ShiftRight/Variant5acfb1b9ddf9280355da456ee0b0f8bf766094fff089fe46b32ee18ec837c342.lean#L151).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d98444aa9dcbee552359921f0433108891af10b0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
