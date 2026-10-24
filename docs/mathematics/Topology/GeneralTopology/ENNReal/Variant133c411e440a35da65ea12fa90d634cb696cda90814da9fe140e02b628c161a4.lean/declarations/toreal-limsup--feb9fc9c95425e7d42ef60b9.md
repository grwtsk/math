# toReal_limsup

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4c069575bfbdc71ab4cff473270180e2d69edb7f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 133,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/13/133c411e440a35da65ea12fa90d634cb696cda90814da9fe140e02b628c161a4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7c627661-377a-19e7-8b94-11a369b46b9d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d0a65b56-2272-e289-ab6c-fe2009df809b",
  "kind": "lemma",
  "lexical_name": "toReal_limsup",
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
  "slug": "toreal-limsup--feb9fc9c95425e7d42ef60b9",
  "source": {
    "blob": "4c069575bfbdc71ab4cff473270180e2d69edb7f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 151,
    "line": 133,
    "path": "GRWTSK/Topology/GeneralTopology/ENNReal/Variant133c411e440a35da65ea12fa90d634cb696cda90814da9fe140e02b628c161a4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:feb9fc9c95425e7d42ef60b921fb88d78cf1a8069272f8eff3d5bf37572e8d8f",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ENNReal/Variant133c411e440a35da65ea12fa90d634cb696cda90814da9fe140e02b628c161a4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d0a65b56-2272-e289-ab6c-fe2009df809b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 133–151.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma toReal_limsup : limsup (fun i ↦ (u i : ℝ)) f = limsup u f := by
  obtain rfl | hf := f.eq_or_neBot
  · simp [limsup, limsSup, Real.sInf_of_not_bddBelow]
  by_cases hf : f.IsBoundedUnder (· ≤ ·) u; swap
  · simp [*]
  have : f.IsCoboundedUnder (· ≤ ·) u := by isBoundedDefault
  refine eq_of_forall_le_iff fun c ↦ ?_
  rw [← Real.toNNReal_le_iff_le_coe, le_limsup_iff (by simpa) (by simpa), le_limsup_iff ‹_›]
  simp only [← coe_lt_coe, Real.coe_toNNReal', lt_sup_iff, or_imp, isEmpty_Prop, not_lt,
    zero_le_coe, IsEmpty.forall_iff, and_true, NNReal.forall, coe_mk, forall_swap (α := _ ≤ _)]
  refine forall₂_congr fun r hr ↦ ?_
  simpa using (le_or_lt 0 r).imp_right fun hr ↦ .of_forall fun i ↦ hr.trans_le (by simp)

end NNReal

namespace ENNReal

variable {α : Type*} {f : Filter α}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ENNReal/Variant133c411e440a35da65ea12fa90d634cb696cda90814da9fe140e02b628c161a4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ENNReal/Variant133c411e440a35da65ea12fa90d634cb696cda90814da9fe140e02b628c161a4.lean#L133).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4c069575bfbdc71ab4cff473270180e2d69edb7f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
