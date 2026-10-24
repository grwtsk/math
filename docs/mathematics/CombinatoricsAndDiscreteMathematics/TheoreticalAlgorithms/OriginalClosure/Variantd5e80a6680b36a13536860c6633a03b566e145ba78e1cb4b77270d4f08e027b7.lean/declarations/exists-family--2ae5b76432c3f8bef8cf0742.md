# exists_family

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ba974b90b63a24fd5b63efb0d7c0c4cdb95a95c1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 15033,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d5/d5e80a6680b36a13536860c6633a03b566e145ba78e1cb4b77270d4f08e027b7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c25c2961-2ec2-c327-6576-95e50792504e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3f85ce92-0de1-d6a0-33ec-6e9c4ac55106",
  "kind": "theorem",
  "lexical_name": "exists_family",
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
  "slug": "exists-family--2ae5b76432c3f8bef8cf0742",
  "source": {
    "blob": "ba974b90b63a24fd5b63efb0d7c0c4cdb95a95c1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 15054,
    "line": 15033,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OriginalClosure/Variantd5e80a6680b36a13536860c6633a03b566e145ba78e1cb4b77270d4f08e027b7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2ae5b76432c3f8bef8cf0742c423b031ce07393d1d1b4b94823a7c43d853a0a1",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OriginalClosure/Variantd5e80a6680b36a13536860c6633a03b566e145ba78e1cb4b77270d4f08e027b7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3f85ce92-0de1-d6a0-33ec-6e9c4ac55106`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 15033–15054.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_family [Fintype S] : ∃ Γ, ValidContext P Γ ∧
    Nonempty (WitnessFamily P Γ (fun _ => .data)) := by
  let F : Finset (Set S) := Finset.univ.filter (FeasibleProfile P)
  let W := DataWitnessContext.ofFeasible F (by simp only [F,Finset.mem_filter]; tauto)
  have hw (I : Set S) (hI : FeasibleProfile P I) : ∃ T e : Expr S, T.AllData ∧ e.AllData ∧
      PureTypeSystem.Normal T.erase ∧ SortedAt P W.context T I ∧ HasType P W.context e T :=
    W.witness I (by simp [F,hI])
  let ty (I : Set S) : Expr S := if hi : FeasibleProfile P I then (hw I hi).choose else .var 0
  let val (I : Set S) : Expr S := if hi : FeasibleProfile P I then
    (hw I hi).choose_spec.choose else .var 0
  have hp (I : Set S) (hI : FeasibleProfile P I) :
      (ty I).AllData ∧ (val I).AllData ∧ PureTypeSystem.Normal (ty I).erase ∧
      SortedAt P W.context (ty I) I ∧ HasType P W.context (val I) (ty I) := by
    simpa only [ty,val,dite_eq_left hI] using (hw I hI).choose_spec.choose_spec
  exact ⟨W.context,W.valid,⟨⟨ty,val,fun I hi => (hp I hi).1,
    fun I hi => (hp I hi).2.2.1,fun I hi => (hp I hi).2.2.2.1,
    fun I hi => (hp I hi).2.2.2.2,fun I hi => (hp I hi).1.wellModed,
    fun I hi => (hp I hi).2.1.wellModed⟩⟩⟩
end WitnessFamily

/-- A term transformer under one temporary proof input. No product rule is
postulated for its input/output pair; that rule generally does not exist. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OriginalClosure/Variantd5e80a6680b36a13536860c6633a03b566e145ba78e1cb4b77270d4f08e027b7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OriginalClosure/Variantd5e80a6680b36a13536860c6633a03b566e145ba78e1cb4b77270d4f08e027b7.lean#L15033).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ba974b90b63a24fd5b63efb0d7c0c4cdb95a95c1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
