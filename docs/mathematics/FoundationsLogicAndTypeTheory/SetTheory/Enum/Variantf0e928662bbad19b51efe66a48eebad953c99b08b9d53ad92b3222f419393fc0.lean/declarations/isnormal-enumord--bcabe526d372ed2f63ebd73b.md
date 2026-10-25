# isNormal_enumOrd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ea03a3114102ec61188f415d4312045d7abc31a5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 126,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f0/f0e928662bbad19b51efe66a48eebad953c99b08b9d53ad92b3222f419393fc0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c11c8929-bd09-b3a5-c63c-10a94900c222",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8c56e4a5-743b-d815-e949-78cec8db7c7e",
  "kind": "theorem",
  "lexical_name": "isNormal_enumOrd",
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
  "slug": "isnormal-enumord--bcabe526d372ed2f63ebd73b",
  "source": {
    "blob": "ea03a3114102ec61188f415d4312045d7abc31a5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 138,
    "line": 126,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Enum/Variantf0e928662bbad19b51efe66a48eebad953c99b08b9d53ad92b3222f419393fc0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bcabe526d372ed2f63ebd73b308d507dac38648f4ed25442d2526cf05358af2b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/Enum/Variantf0e928662bbad19b51efe66a48eebad953c99b08b9d53ad92b3222f419393fc0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8c56e4a5-743b-d815-e949-78cec8db7c7e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 126–138.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isNormal_enumOrd (H : ∀ t ⊆ s, t.Nonempty → BddAbove t → sSup t ∈ s) (hs : ¬ BddAbove s) :
    IsNormal (enumOrd s) := by
  refine (isNormal_iff_strictMono_limit _).2 ⟨enumOrd_strictMono hs, fun o ho a ha ↦ ?_⟩
  trans ⨆ b : Iio o, enumOrd s b
  · refine enumOrd_le_of_forall_lt ?_ (fun b hb ↦ (enumOrd_strictMono hs (lt_succ b)).trans_le ?_)
    · have : Nonempty (Iio o) := ⟨0, ho.pos⟩
      apply H _ _ (range_nonempty _) (bddAbove_of_small _)
      rintro _ ⟨c, rfl⟩
      exact enumOrd_mem hs c
    · exact Ordinal.le_iSup _ (⟨_, ho.succ_lt hb⟩ : Iio o)
  · exact Ordinal.iSup_le fun x ↦ ha _ x.2

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/Enum/Variantf0e928662bbad19b51efe66a48eebad953c99b08b9d53ad92b3222f419393fc0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Enum/Variantf0e928662bbad19b51efe66a48eebad953c99b08b9d53ad92b3222f419393fc0.lean#L126).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ea03a3114102ec61188f415d4312045d7abc31a5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
