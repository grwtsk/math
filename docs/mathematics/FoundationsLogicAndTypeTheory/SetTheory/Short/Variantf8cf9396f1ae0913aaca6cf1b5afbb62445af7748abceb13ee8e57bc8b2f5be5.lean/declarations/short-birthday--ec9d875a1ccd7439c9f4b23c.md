# short_birthday

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "18bbc42ca1dc866f62b38b1d52d595c77a9a6c99",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 153,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f8/f8cf9396f1ae0913aaca6cf1b5afbb62445af7748abceb13ee8e57bc8b2f5be5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5ebbbbac-91f0-2c77-1596-f3e6dc327fb3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d5ec3a83-2fdc-e464-f365-80676ef93d53",
  "kind": "theorem",
  "lexical_name": "short_birthday",
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
  "slug": "short-birthday--ec9d875a1ccd7439c9f4b23c",
  "source": {
    "blob": "18bbc42ca1dc866f62b38b1d52d595c77a9a6c99",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 171,
    "line": 153,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Short/Variantf8cf9396f1ae0913aaca6cf1b5afbb62445af7748abceb13ee8e57bc8b2f5be5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ec9d875a1ccd7439c9f4b23c07049a086ad6cc42d53d6b99702b547b782a8d14",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/Short/Variantf8cf9396f1ae0913aaca6cf1b5afbb62445af7748abceb13ee8e57bc8b2f5be5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d5ec3a83-2fdc-e464-f365-80676ef93d53`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 153–171.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem short_birthday (x : PGame.{u}) : [Short x] → x.birthday < Ordinal.omega := by
  -- Porting note: Again `induction` is used instead of `pgame_wf_tac`
  induction x with
  | mk xl xr xL xR ihl ihr =>
    intro hs
    rcases hs with ⟨sL, sR⟩
    rw [birthday, max_lt_iff]
    constructor
    all_goals
      rw [← Cardinal.ord_aleph0]
      refine'
        Cardinal.lsub_lt_ord_of_isRegular.{u, u} Cardinal.isRegular_aleph0
          (Cardinal.lt_aleph0_of_finite _) fun i => _
      rw [Cardinal.ord_aleph0]
    · apply ihl
    · apply ihr
#align pgame.short_birthday SetTheory.PGame.short_birthday

/-- This leads to infinite loops if made into an instance. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/Short/Variantf8cf9396f1ae0913aaca6cf1b5afbb62445af7748abceb13ee8e57bc8b2f5be5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Short/Variantf8cf9396f1ae0913aaca6cf1b5afbb62445af7748abceb13ee8e57bc8b2f5be5.lean#L153).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `18bbc42ca1dc866f62b38b1d52d595c77a9a6c99` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
