# card_vonNeumann

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b81921dc116b5f06783c204013566a0652bf0f5b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 141,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/65/655c3ac026f15c654b3b49874d9158220d9fd96f453800b4e5a87718b0ff6eed.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1b598093-14ca-5c98-f7e1-41273c485ed2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:89d734b0-19d3-58be-b0a9-159d04208723",
  "kind": "theorem",
  "lexical_name": "card_vonNeumann",
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
  "slug": "card-vonneumann--d8cb9450c2927040c37d2e77",
  "source": {
    "blob": "b81921dc116b5f06783c204013566a0652bf0f5b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 162,
    "line": 141,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/VonNeumann/Variant655c3ac026f15c654b3b49874d9158220d9fd96f453800b4e5a87718b0ff6eed.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d8cb9450c2927040c37d2e77fb8a8bbd2d10afac4dc46e3ff24a2fc786fb1e54",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/VonNeumann/Variant655c3ac026f15c654b3b49874d9158220d9fd96f453800b4e5a87718b0ff6eed.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:89d734b0-19d3-58be-b0a9-159d04208723`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 141–162.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem card_vonNeumann (o : Ordinal.{u}) : card (V_ o) = preBeth o := by
  induction o using Ordinal.limitRecOn with
  | zero => simp
  | add_one o ih => simp [ih]
  | limit o ho ih =>
    simp_rw [preBeth_limit ho.isSuccPrelimit, ← fun i : Set.Iio o => ih i i.2,
      vonNeumann_of_isSuccPrelimit ho.isSuccPrelimit]
    apply iSup_card_le_card_iUnion.antisymm'
    rw [← lift_le.{u + 1}]
    apply lift_card_iUnion_le_sum_card.trans
    refine (sum_eq_lift_iSup_of_lift_mk_le_lift_iSup ?_ ?_).le
    · rw [mk_Iio_ordinal, ← lift_aleph0.{u + 1, u}, lift_le, Ordinal.aleph0_le_card]
      exact Ordinal.omega0_le_of_isSuccLimit ho
    · rw [mk_Iio_ordinal, lift_lift, lift_le]
      by_contra! h
      refine (⨆ i : Set.Iio o, (V_ ↑i).card).card_ord.not_lt <|
        (Ordinal.card_le_card_vonNeumann _).trans_lt <| (cantor _).trans_le ?_
      rw [← card_powerset, ← vonNeumann_add_one]
      refine le_ciSup bddAbove_of_small (⟨_, ho.succ_lt ?_⟩ : Set.Iio o)
      exact (ord_card_le _).trans_lt' (ord_strictMono h)

end ZFSet
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/VonNeumann/Variant655c3ac026f15c654b3b49874d9158220d9fd96f453800b4e5a87718b0ff6eed.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/VonNeumann/Variant655c3ac026f15c654b3b49874d9158220d9fd96f453800b4e5a87718b0ff6eed.lean#L141).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b81921dc116b5f06783c204013566a0652bf0f5b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
