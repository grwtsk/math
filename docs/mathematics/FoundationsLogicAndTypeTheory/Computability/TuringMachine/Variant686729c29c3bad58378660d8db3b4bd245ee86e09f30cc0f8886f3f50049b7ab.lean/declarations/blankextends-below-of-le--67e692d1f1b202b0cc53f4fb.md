# BlankExtends.below_of_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "30890dff70be24bc3f7b22ac2b7a36e25d3765ab",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 90,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/68/686729c29c3bad58378660d8db3b4bd245ee86e09f30cc0f8886f3f50049b7ab.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1b10ffa8-0905-16d6-8d0d-b6132cb8f5ce",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6eeb8ae0-e82d-e8e2-453e-4092daf03295",
  "kind": "theorem",
  "lexical_name": "BlankExtends.below_of_le",
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
  "slug": "blankextends-below-of-le--67e692d1f1b202b0cc53f4fb",
  "source": {
    "blob": "30890dff70be24bc3f7b22ac2b7a36e25d3765ab",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 98,
    "line": 90,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Computability/TuringMachine/Variant686729c29c3bad58378660d8db3b4bd245ee86e09f30cc0f8886f3f50049b7ab.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:67e692d1f1b202b0cc53f4fb7298e9a57f19c736fcacd98f654a2ae4d37081b8",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Computability/TuringMachine/Variant686729c29c3bad58378660d8db3b4bd245ee86e09f30cc0f8886f3f50049b7ab.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6eeb8ae0-e82d-e8e2-453e-4092daf03295`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 90–98.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem BlankExtends.below_of_le {Γ} [Inhabited Γ] {l l₁ l₂ : List Γ} :
    BlankExtends l l₁ → BlankExtends l l₂ → l₁.length ≤ l₂.length → BlankExtends l₁ l₂ := by
  rintro ⟨i, rfl⟩ ⟨j, rfl⟩ h; use j - i
  simp only [List.length_append, add_le_add_iff_left, List.length_replicate] at h
  simp only [← List.replicate_add, add_tsub_cancel_of_le h, List.append_assoc]
#align turing.blank_extends.below_of_le Turing.BlankExtends.below_of_le

/-- Any two extensions by blank `l₁,l₂` of `l` have a common join (which can be taken to be the
longer of `l₁` and `l₂`). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/Computability/TuringMachine/Variant686729c29c3bad58378660d8db3b4bd245ee86e09f30cc0f8886f3f50049b7ab.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Computability/TuringMachine/Variant686729c29c3bad58378660d8db3b4bd245ee86e09f30cc0f8886f3f50049b7ab.lean#L90).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `30890dff70be24bc3f7b22ac2b7a36e25d3765ab` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
