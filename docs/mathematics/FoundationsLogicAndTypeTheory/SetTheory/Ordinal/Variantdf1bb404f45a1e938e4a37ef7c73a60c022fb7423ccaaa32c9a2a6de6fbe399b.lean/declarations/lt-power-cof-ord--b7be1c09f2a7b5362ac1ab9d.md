# lt_power_cof_ord

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "61f131f55787d63d860900145f5680c395d874da",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 591,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/df/df1bb404f45a1e938e4a37ef7c73a60c022fb7423ccaaa32c9a2a6de6fbe399b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:38bf55d3-eb3a-c96a-a8e2-3167f0a0cf8a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7cbcbb55-9b4c-555c-bb95-be638bc24832",
  "kind": "theorem",
  "lexical_name": "lt_power_cof_ord",
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
  "slug": "lt-power-cof-ord--b7be1c09f2a7b5362ac1ab9d",
  "source": {
    "blob": "61f131f55787d63d860900145f5680c395d874da",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 604,
    "line": 591,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variantdf1bb404f45a1e938e4a37ef7c73a60c022fb7423ccaaa32c9a2a6de6fbe399b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b7be1c09f2a7b5362ac1ab9dfe8af5ac94cf332edacba1f0814ba39c67c1187b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variantdf1bb404f45a1e938e4a37ef7c73a60c022fb7423ccaaa32c9a2a6de6fbe399b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7cbcbb55-9b4c-555c-bb95-be638bc24832`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 591–604.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lt_power_cof_ord {c : Cardinal} (hc : ℵ₀ ≤ c) : c < c ^ c.ord.cof := by
  induction c using Cardinal.inductionOn with | mk α
  obtain ⟨_, _, hα⟩ := exists_ord_eq_type_lt α
  have : NoMaxOrder α := by
    rw [← isSuccPrelimit_type_lt_iff, ← hα]
    exact (isSuccLimit_ord hc).isSuccPrelimit
  obtain ⟨s, hs, hs'⟩ := exists_ord_cof_eq α
  rw [hα, cof_type, ← card_ord (Order.cof _), ← hs', card_type, ← prod_const']
  refine (mk_iUnion_le_sum_mk.trans' ?_).trans_lt (sum_lt_prod _ _ fun i ↦ mk_Iio_lt i.1 hα)
  rw [← mk_univ, ← isCofinal_iff_iUnion_Iio_eq_univ.1 hs, iUnion_coe_set]

@[deprecated (since := "2026-03-30")]
alias lt_power_cof := lt_power_cof_ord

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variantdf1bb404f45a1e938e4a37ef7c73a60c022fb7423ccaaa32c9a2a6de6fbe399b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variantdf1bb404f45a1e938e4a37ef7c73a60c022fb7423ccaaa32c9a2a6de6fbe399b.lean#L591).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `61f131f55787d63d860900145f5680c395d874da` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
