# bddBelow_range_of_small

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:55d463c9-bd7e-35fc-7306-d6444edae71f",
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
  "slug": "bddbelow-range-of-small--748b1913977586575f2d9ce1",
  "source": {
    "blob": "3343dc47c8e072a76a4d44c98528c1af496b8769",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 443,
    "line": 427,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant08df9c6f358654cbd9dbd48a36f4089e8b6c2aece1a9f340d1ecf2df262a7ca6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:748b1913977586575f2d9ce1361f4934390fc18f96ec92fa2573d14a9be7ef7f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant08df9c6f358654cbd9dbd48a36f4089e8b6c2aece1a9f340d1ecf2df262a7ca6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:55d463c9-bd7e-35fc-7306-d6444edae71f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 427–443.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant08df9c6f358654cbd9dbd48a36f4089e8b6c2aece1a9f340d1ecf2df262a7ca6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant08df9c6f358654cbd9dbd48a36f4089e8b6c2aece1a9f340d1ecf2df262a7ca6.lean#L427).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3343dc47c8e072a76a4d44c98528c1af496b8769` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
