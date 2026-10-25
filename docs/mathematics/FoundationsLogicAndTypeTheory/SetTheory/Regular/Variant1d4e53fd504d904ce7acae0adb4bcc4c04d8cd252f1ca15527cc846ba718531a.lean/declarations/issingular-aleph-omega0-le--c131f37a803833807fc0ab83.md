# IsSingular.aleph_omega0_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d1731880-ff3b-99df-8bdf-ead2085cc231",
  "kind": "theorem",
  "lexical_name": "IsSingular.aleph_omega0_le",
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
  "slug": "issingular-aleph-omega0-le--c131f37a803833807fc0ab83",
  "source": {
    "blob": "d7fc4de252c8a6bc6eff85392daf317bb0f04fc1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 378,
    "line": 370,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Regular/Variant1d4e53fd504d904ce7acae0adb4bcc4c04d8cd252f1ca15527cc846ba718531a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c131f37a803833807fc0ab83aacf9a3b0c4e27d0c29b24136f16d5c6f0d2c654",
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

Occurrence: `result:d1731880-ff3b-99df-8bdf-ead2085cc231`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 370–378.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsSingular.aleph_omega0_le (hc : IsSingular c) : ℵ_ ω ≤ c := by
  obtain ⟨o, rfl⟩ := mem_range_aleph_iff.2 hc.aleph0_le
  rw [isSingular_aleph_iff] at hc
  rw [aleph_le_aleph]
  exact omega0_le_of_isSuccLimit hc.1

/-! ### Inaccessible cardinals -/

/-- A cardinal is inaccessible if it is an uncountable regular strong limit cardinal. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/Regular/Variant1d4e53fd504d904ce7acae0adb4bcc4c04d8cd252f1ca15527cc846ba718531a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Regular/Variant1d4e53fd504d904ce7acae0adb4bcc4c04d8cd252f1ca15527cc846ba718531a.lean#L370).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d7fc4de252c8a6bc6eff85392daf317bb0f04fc1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
