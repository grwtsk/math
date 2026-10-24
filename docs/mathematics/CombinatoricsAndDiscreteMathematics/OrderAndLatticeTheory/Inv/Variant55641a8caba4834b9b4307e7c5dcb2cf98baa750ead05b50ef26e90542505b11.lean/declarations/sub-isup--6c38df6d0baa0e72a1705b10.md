# sub_iSup

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8f7363d9d5aec468ef7ddb6ad12ca25179925b16",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 927,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/55/55641a8caba4834b9b4307e7c5dcb2cf98baa750ead05b50ef26e90542505b11.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:46c7f4e4-35ad-2c36-045d-2a12733ab05d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:fa977125-8117-c4f8-f1e8-25160f23a0e2",
  "kind": "lemma",
  "lexical_name": "sub_iSup",
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
  "slug": "sub-isup--6c38df6d0baa0e72a1705b10",
  "source": {
    "blob": "8f7363d9d5aec468ef7ddb6ad12ca25179925b16",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 939,
    "line": 927,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Inv/Variant55641a8caba4834b9b4307e7c5dcb2cf98baa750ead05b50ef26e90542505b11.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6c38df6d0baa0e72a1705b1081bbf5aa65f14d05ac6bd51be1a9a43a035521a1",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Inv/Variant55641a8caba4834b9b4307e7c5dcb2cf98baa750ead05b50ef26e90542505b11.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fa977125-8117-c4f8-f1e8-25160f23a0e2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 927–939.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma sub_iSup [Nonempty ι] (ha : a ≠ ∞) : a - ⨆ i, f i = ⨅ i, a - f i := by
  obtain ⟨i, hi⟩ | h := em (∃ i, a < f i)
  · rw [tsub_eq_zero_iff_le.2 <| le_iSup_of_le _ hi.le, (iInf_eq_bot _).2, bot_eq_zero]
    exact fun x hx ↦ ⟨i, by simpa [hi.le, tsub_eq_zero_of_le]⟩
  simp_rw [not_exists, not_lt] at h
  refine le_antisymm (le_iInf fun i ↦ tsub_le_tsub_left (le_iSup ..) _) <|
    ENNReal.le_sub_of_add_le_left (ne_top_of_le_ne_top ha <| iSup_le h) <|
    add_le_of_le_tsub_right_of_le (iInf_le_of_le (Classical.arbitrary _) tsub_le_self) <|
    iSup_le fun i ↦ ?_
  rw [← sub_sub_cancel ha (h _)]
  exact tsub_le_tsub_left (iInf_le (a - f ·) i) _

-- TODO: Prove the two one-side versions
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Inv/Variant55641a8caba4834b9b4307e7c5dcb2cf98baa750ead05b50ef26e90542505b11.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Inv/Variant55641a8caba4834b9b4307e7c5dcb2cf98baa750ead05b50ef26e90542505b11.lean#L927).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8f7363d9d5aec468ef7ddb6ad12ca25179925b16` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
