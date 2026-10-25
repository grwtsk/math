# exists_fundamental_sequence

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a397f13d-3c67-b7ce-8ccb-abfaf5049f1e",
  "kind": "theorem",
  "lexical_name": "exists_fundamental_sequence",
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
  "slug": "exists-fundamental-sequence--afdbd41929a8f7f361d4ab5e",
  "source": {
    "blob": "d2673133e538118c2096f31eeb83a1c681a798b1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 239,
    "line": 209,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/FundamentalSequence/Variantf3467c581f6e12ff105c5f86095e05a8cfbeabb2cca316e3fbd0af2f684722be.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:afdbd41929a8f7f361d4ab5ea25e1c878fe6ddb6a46219be6513c0c8f12e49e2",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/FundamentalSequence/Variantf3467c581f6e12ff105c5f86095e05a8cfbeabb2cca316e3fbd0af2f684722be.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a397f13d-3c67-b7ce-8ccb-abfaf5049f1e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 209–239.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_fundamental_sequence (a : Ordinal.{u}) :
    ∃ f, IsFundamentalSequence a a.cof.ord f := by
  suffices h : ∃ o f, IsFundamentalSequence a o f by
    rcases h with ⟨o, f, hf⟩
    exact ⟨_, hf.ord_cof⟩
  rcases exists_lsub_cof a with ⟨ι, f, hf, hι⟩
  rcases ord_eq ι with ⟨r, wo, hr⟩
  let r' := Subrel r fun i ↦ ∀ j, r j i → f j < f i
  let hrr' : r' ↪r r := Subrel.relEmbedding _ _
  have := hrr'.isWellOrder
  refine
    ⟨_, _, hrr'.ordinal_type_le.trans ?_, @fun i j _ h _ => (enum r' ⟨j, h⟩).prop _ ?_,
      le_antisymm (blsub_le fun i hi => lsub_le_iff.1 hf.le _) ?_⟩
  · rw [← hι, hr]
  · change r (hrr'.1 _) (hrr'.1 _)
    rwa [hrr'.2, @enum_lt_enum _ r']
  · rw [← hf, lsub_le_iff]
    intro i
    suffices h : ∃ i' hi', f i ≤ bfamilyOfFamily' r' (fun i => f i) i' hi' by
      rcases h with ⟨i', hi', hfg⟩
      exact hfg.trans_lt (lt_blsub _ _ _)
    by_cases! h : ∀ j, r j i → f j < f i
    · refine ⟨typein r' ⟨i, h⟩, typein_lt_type _ _, ?_⟩
      rw [bfamilyOfFamily'_typein]
    · obtain ⟨hji, hij⟩ := wo.wf.min_mem _ h
      refine ⟨typein r' ⟨_, fun k hkj => lt_of_lt_of_le ?_ hij⟩, typein_lt_type _ _, ?_⟩
      · by_contra! H
        exact (wo.wf.not_lt_min {j | r j i ∧ f i ≤ f j} ⟨IsTrans.trans _ _ _ hkj hji, H⟩) hkj
      · rwa [bfamilyOfFamily'_typein]

@[deprecated IsFundamentalSeq.comp_isNormal (since := "2026-03-23")]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/FundamentalSequence/Variantf3467c581f6e12ff105c5f86095e05a8cfbeabb2cca316e3fbd0af2f684722be.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/FundamentalSequence/Variantf3467c581f6e12ff105c5f86095e05a8cfbeabb2cca316e3fbd0af2f684722be.lean#L209).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d2673133e538118c2096f31eeb83a1c681a798b1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
