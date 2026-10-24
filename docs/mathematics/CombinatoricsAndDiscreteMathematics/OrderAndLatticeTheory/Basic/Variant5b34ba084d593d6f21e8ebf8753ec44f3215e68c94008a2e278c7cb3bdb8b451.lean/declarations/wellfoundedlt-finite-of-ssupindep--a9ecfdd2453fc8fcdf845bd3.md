# WellFoundedLT.finite_of_sSupIndep

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "94b3e9e3caf72aca2ac3db9c4e735b0c09eb4909",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 316,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5b/5b34ba084d593d6f21e8ebf8753ec44f3215e68c94008a2e278c7cb3bdb8b451.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2ab150d3-fc8d-0902-b52b-64e36fac4aed",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d72c60ca-04bd-2c00-f17f-c40bdb98ae48",
  "kind": "theorem",
  "lexical_name": "WellFoundedLT.finite_of_sSupIndep",
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
  "slug": "wellfoundedlt-finite-of-ssupindep--a9ecfdd2453fc8fcdf845bd3",
  "source": {
    "blob": "94b3e9e3caf72aca2ac3db9c4e735b0c09eb4909",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 330,
    "line": 316,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant5b34ba084d593d6f21e8ebf8753ec44f3215e68c94008a2e278c7cb3bdb8b451.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a9ecfdd2453fc8fcdf845bd3c35f7698380381432e311a5d2ed935a2762e2330",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant5b34ba084d593d6f21e8ebf8753ec44f3215e68c94008a2e278c7cb3bdb8b451.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d72c60ca-04bd-2c00-f17f-c40bdb98ae48`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 316–330.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem WellFoundedLT.finite_of_sSupIndep [WellFoundedLT α] {s : Set α}
    (hs : sSupIndep s) : s.Finite := by
  by_contra inf
  let e := (Infinite.diff inf <| finite_singleton ⊥).to_subtype.natEmbedding
  let a n := ⨆ i ≥ n, (e i).1
  have sup_le n : (e n).1 ⊔ a (n + 1) ≤ a n := sup_le_iff.mpr ⟨le_iSup₂_of_le n le_rfl le_rfl,
    iSup₂_le fun i hi ↦ le_iSup₂_of_le i (n.le_succ.trans hi) le_rfl⟩
  have lt n : a (n + 1) < a n := (Disjoint.right_lt_sup_of_left_ne_bot
    ((hs (e n).2.1).mono_right <| iSup₂_le fun i hi ↦ le_sSup ?_) (e n).2.2).trans_le (sup_le n)
  · exact (RelEmbedding.natGT a lt).not_wellFounded_of_decreasing_seq wellFounded_lt
  exact ⟨(e i).2.1, fun h ↦ n.lt_succ_self.not_le <| hi.trans_eq <| e.2 <| Subtype.val_injective h⟩

@[deprecated (since := "2024-11-24")]
alias CompleteLattice.WellFoundedLT.finite_of_setIndependent := WellFoundedLT.finite_of_sSupIndep

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant5b34ba084d593d6f21e8ebf8753ec44f3215e68c94008a2e278c7cb3bdb8b451.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant5b34ba084d593d6f21e8ebf8753ec44f3215e68c94008a2e278c7cb3bdb8b451.lean#L316).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `94b3e9e3caf72aca2ac3db9c4e735b0c09eb4909` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
