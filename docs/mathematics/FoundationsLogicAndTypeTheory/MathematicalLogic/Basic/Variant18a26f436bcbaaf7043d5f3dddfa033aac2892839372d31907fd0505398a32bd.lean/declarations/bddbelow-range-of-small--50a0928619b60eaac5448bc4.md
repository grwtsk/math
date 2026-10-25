# bddBelow_range_of_small

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5f41b91caa4b5ed11a78925f5fe70ba3eff99d13",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 419,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/18/18a26f436bcbaaf7043d5f3dddfa033aac2892839372d31907fd0505398a32bd.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1e3f0a38-5174-bc18-c877-b39adf9fef85",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:bf8068ad-7108-6438-f7e2-b57d3853a8f0",
  "kind": "lemma",
  "lexical_name": "bddBelow_range_of_small",
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
  "slug": "bddbelow-range-of-small--50a0928619b60eaac5448bc4",
  "source": {
    "blob": "5f41b91caa4b5ed11a78925f5fe70ba3eff99d13",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 435,
    "line": 419,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant18a26f436bcbaaf7043d5f3dddfa033aac2892839372d31907fd0505398a32bd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:50a0928619b60eaac5448bc4b5d83d8664199fe6d6826774bf08af203ac5b64e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant18a26f436bcbaaf7043d5f3dddfa033aac2892839372d31907fd0505398a32bd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bf8068ad-7108-6438-f7e2-b57d3853a8f0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 419–435.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma bddBelow_range_of_small {ι : Type*} [Small.{u} ι] (f : ι → Surreal.{u}) :
    BddBelow (Set.range f) := by
  induction' f using Quotient.induction_on_pi with f
  let g : ι → PGame.{u} := Subtype.val ∘ f
  have hg (i) : (g i).Numeric := Subtype.prop _
  conv in (⟦f _⟧) =>
    change mk (g i) (hg i)
  clear_value g
  clear f
  let x : PGame.{u} := ⟨PEmpty, Σ i, (g <| (equivShrink.{u} ι).symm i).RightMoves,
    PEmpty.elim, fun x ↦ moveRight _ x.2⟩
  refine ⟨mk x (.mk (by simp [x]) (by simp [x]) (fun _ ↦ (hg _).moveRight _) ),
    Set.forall_mem_range.2 fun i ↦ ?_⟩
  rw [mk_le_mk, ← (equivShrink ι).symm_apply_apply i, le_iff_forall_lf]
  simpa [x] using fun j ↦ @lf_moveRight x ⟨equivShrink ι i, j⟩

/-- A small set of surreals is bounded below. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant18a26f436bcbaaf7043d5f3dddfa033aac2892839372d31907fd0505398a32bd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant18a26f436bcbaaf7043d5f3dddfa033aac2892839372d31907fd0505398a32bd.lean#L419).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5f41b91caa4b5ed11a78925f5fe70ba3eff99d13` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
