# isRegular_succ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:14040e57-722b-fc6f-a359-d34ce4d18ae0",
  "kind": "theorem",
  "lexical_name": "isRegular_succ",
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
  "slug": "isregular-succ--28f91573fcc261d54d34226c",
  "source": {
    "blob": "d7fc4de252c8a6bc6eff85392daf317bb0f04fc1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 98,
    "line": 87,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Regular/Variant1d4e53fd504d904ce7acae0adb4bcc4c04d8cd252f1ca15527cc846ba718531a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:28f91573fcc261d54d34226c5130d7627959ead2bf497c48b89e27a4eff06836",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/Regular/Variant1d4e53fd504d904ce7acae0adb4bcc4c04d8cd252f1ca15527cc846ba718531a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:14040e57-722b-fc6f-a359-d34ce4d18ae0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 87–98.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isRegular_succ {c : Cardinal} (hc : ℵ₀ ≤ c) : IsRegular (succ c) := by
  have hc₀ := hc.trans (le_succ c)
  use hc₀
  by_contra! hc'
  obtain ⟨f, hf⟩ := exists_isFundamentalSeq (o := (succ c).ord) rfl
  apply hf.iSup_add_one_eq.not_lt
  rw [← card_le_iff]
  refine card_iSup_Iio_le ?_ fun i ↦ ?_
  · simpa using hc'
  · rw [card_le_iff]
    exact (isSuccLimit_ord hc₀).add_one_lt (f i).2

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/Regular/Variant1d4e53fd504d904ce7acae0adb4bcc4c04d8cd252f1ca15527cc846ba718531a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Regular/Variant1d4e53fd504d904ce7acae0adb4bcc4c04d8cd252f1ca15527cc846ba718531a.lean#L87).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d7fc4de252c8a6bc6eff85392daf317bb0f04fc1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
