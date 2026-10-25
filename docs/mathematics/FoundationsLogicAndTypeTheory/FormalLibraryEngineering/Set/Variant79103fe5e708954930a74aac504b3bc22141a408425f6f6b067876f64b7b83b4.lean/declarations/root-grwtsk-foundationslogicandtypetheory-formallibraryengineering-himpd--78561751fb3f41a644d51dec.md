# _root_.GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.HimpDef.Variant9b6121b2d9658fdb39a61f2a5b3a09b4c0fc29eb762437963aa21d4cae400e10.LE.le.sdiff_ssubset_of_nonempty

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3bd641a4-b5ef-4c8c-00ef-18eda3aeb5e3",
  "kind": "lemma",
  "lexical_name": "_root_.GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.HimpDef.Variant9b6121b2d9658fdb39a61f2a5b3a09b4c0fc29eb762437963aa21d4cae400e10.LE.le.sdiff_ssubset_of_nonempty",
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
  "slug": "root-grwtsk-foundationslogicandtypetheory-formallibraryengineering-himpd--78561751fb3f41a644d51dec",
  "source": {
    "blob": "e77230401b1cafc9e83d80f14fa8d56d53049984",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 517,
    "line": 507,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Set/Variant79103fe5e708954930a74aac504b3bc22141a408425f6f6b067876f64b7b83b4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:78561751fb3f41a644d51deca6055db4007c20de10b1c39d45d809d5f3db8057",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Set/Variant79103fe5e708954930a74aac504b3bc22141a408425f6f6b067876f64b7b83b4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3bd641a4-b5ef-4c8c-00ef-18eda3aeb5e3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 507–517.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma _root_.GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.HimpDef.Variant9b6121b2d9658fdb39a61f2a5b3a09b4c0fc29eb762437963aa21d4cae400e10.LE.le.sdiff_ssubset_of_nonempty (hst : s ⊆ t) (hs : s.Nonempty) :
    t \ s ⊂ t := by
  simpa [inter_eq_self_of_subset_right hst]

@[deprecated (since := "2026-06-05")]
alias _root_.HasSubset.Subset.sdiff_ssubset_of_nonempty := LE.le.sdiff_ssubset_of_nonempty

@[deprecated (since := "2026-06-03")]
alias _root_.HasSubset.Subset.diff_ssubset_of_nonempty :=
  _root_.GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.HimpDef.Variant9b6121b2d9658fdb39a61f2a5b3a09b4c0fc29eb762437963aa21d4cae400e10.LE.le.sdiff_ssubset_of_nonempty

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Set/Variant79103fe5e708954930a74aac504b3bc22141a408425f6f6b067876f64b7b83b4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Set/Variant79103fe5e708954930a74aac504b3bc22141a408425f6f6b067876f64b7b83b4.lean#L507).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e77230401b1cafc9e83d80f14fa8d56d53049984` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
