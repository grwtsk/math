# difference_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "53f24c15df1f11f2dc06895624ae2a0a0c5827dc",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 299,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/04/04e5d67d1c4003b2ee1f4866744cef3b20460385cdd769ed620cb520fa78c58f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:40931701-d754-3973-6101-e69b3724707a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8a71d259-aba1-efef-e093-92e968315c98",
  "kind": "theorem",
  "lexical_name": "difference_eq",
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
  "slug": "difference-eq--6988bedc9c220382dc7aea71",
  "source": {
    "blob": "53f24c15df1f11f2dc06895624ae2a0a0c5827dc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 312,
    "line": 299,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Month/Variant04e5d67d1c4003b2ee1f4866744cef3b20460385cdd769ed620cb520fa78c58f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6988bedc9c220382dc7aea7187f17e6a21281a843dc5953f82fdd8ba0a4a16e8",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/Month/Variant04e5d67d1c4003b2ee1f4866744cef3b20460385cdd769ed620cb520fa78c58f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8a71d259-aba1-efef-e093-92e968315c98`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 299–312.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem difference_eq (p : month.val ≤ 11) :
  let next := month.truncateTop p |>.addTop 1 (by decide)
  (cumulativeDays leap next).val = (cumulativeDays leap month).val + (days leap month).val := by
  match month with
  | ⟨1, _⟩ | ⟨2, _⟩ | ⟨3, _⟩  | ⟨4, _⟩  | ⟨5, _⟩  | ⟨6, _⟩  | ⟨7, _⟩  | ⟨8, _⟩  | ⟨9, _⟩  | ⟨10, _⟩  | ⟨11, _⟩ =>
    simp [cumulativeDays, Bounded.LE.addTop, days, monthSizesNonLeap];
    try split <;> rfl
    try rfl
  | ⟨12, _⟩ => contradiction

/--
Checks if a given day is valid for the specified month and year. For example, `29/02` is valid only
if the year is a leap year.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/Month/Variant04e5d67d1c4003b2ee1f4866744cef3b20460385cdd769ed620cb520fa78c58f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Month/Variant04e5d67d1c4003b2ee1f4866744cef3b20460385cdd769ed620cb520fa78c58f.lean#L299).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `53f24c15df1f11f2dc06895624ae2a0a0c5827dc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
