# denote_blastShiftConcat

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b3f8150d-4021-8695-a121-a688e2565e0f",
  "kind": "theorem",
  "lexical_name": "denote_blastShiftConcat",
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
  "slug": "denote-blastshiftconcat--0be5180a92398e1f89358d95",
  "source": {
    "blob": "998244df6bb4a850e68272281fc7dee1d8731171",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 60,
    "line": 46,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Udiv/Variantf90b99d6a8b004fe4b319fdaa4d86146815825bc192fdfb5cf5a9b1a73a4ec7c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0be5180a92398e1f89358d9570c8cf2b859bb7d7aba271300824a7c5fe4d80c2",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Udiv/Variantf90b99d6a8b004fe4b319fdaa4d86146815825bc192fdfb5cf5a9b1a73a4ec7c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b3f8150d-4021-8695-a121-a688e2565e0f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 46–60.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem denote_blastShiftConcat (aig : AIG α) (target : ShiftConcatInput aig w)
  (assign : α → Bool) :
  ∀ (idx : Nat) (hidx : idx < w),
      ⟦(blastShiftConcat aig target).aig, (blastShiftConcat aig target).vec.get idx hidx, assign⟧
        =
      if idx = 0 then
        ⟦aig, target.bit, assign⟧
      else
        ⟦aig, target.lhs.get (idx - 1) (by omega), assign⟧
      := by
  intro idx hidx
  unfold blastShiftConcat
  have hidx_lt : idx < 1 + w := by omega
  by_cases hidx_eq : idx = 0 <;> simp +arith [hidx_lt, hidx_eq, RefVec.get_append]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Udiv/Variantf90b99d6a8b004fe4b319fdaa4d86146815825bc192fdfb5cf5a9b1a73a4ec7c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Udiv/Variantf90b99d6a8b004fe4b319fdaa4d86146815825bc192fdfb5cf5a9b1a73a4ec7c.lean#L46).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `998244df6bb4a850e68272281fc7dee1d8731171` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
