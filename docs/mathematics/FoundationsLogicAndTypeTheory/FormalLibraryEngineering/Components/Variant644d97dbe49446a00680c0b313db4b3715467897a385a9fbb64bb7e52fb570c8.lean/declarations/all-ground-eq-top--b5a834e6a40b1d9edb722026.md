# all_ground_eq_top

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8eaa2c24-f30e-214e-5d8b-b3a74fa21097",
  "kind": "theorem",
  "lexical_name": "all_ground_eq_top",
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
  "slug": "all-ground-eq-top--b5a834e6a40b1d9edb722026",
  "source": {
    "blob": "68baae488ecd98ceb41720aa3fd546b20530119f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 456,
    "line": 413,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Components/Variant644d97dbe49446a00680c0b313db4b3715467897a385a9fbb64bb7e52fb570c8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b5a834e6a40b1d9edb722026ba78a147ebd05d16e01c63451784e4385786e8ba",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Components/Variant644d97dbe49446a00680c0b313db4b3715467897a385a9fbb64bb7e52fb570c8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8eaa2c24-f30e-214e-5d8b-b3a74fa21097`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 413–456.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem all_ground_eq_top {S : Type u} [Finite S] {P : Specification S}
    (Ω : ContextTower P) (hw : SystemWeaklyNormalizing P)
    (interfaces : ∀ C, IsComponent (PrimaryEdge P) C →
      Nonempty (ComponentInterface.{u, v} Ω hw C)) :
    ∀ {T}, ActualType Ω T → Ground Ω T = Top Ω T := by
  let _ := Fintype.ofFinite S
  intro T hT
  let E := PrimaryEdge P
  have h : ∀ n, ∀ T : Expr S, Reach.rank E (Ω.profile T) = n → ActualType Ω T →
      Ground Ω T = Top Ω T := by
    intro n
    induction n using Nat.strong_induction_on with
    | h n ih =>
      intro T hr hT
      let V := Ω.profile T
      let C := Reach.component E V
      let U := {I | Reach.rank E I < n}
      have hC : IsComponent E C := Reach.component_isComponent E V
      have rankC {I} (hi : I ∈ C) : Reach.rank E I = n := by
        exact (Nat.le_antisymm (Reach.rank_mono E hi.2) (Reach.rank_mono E hi.1)).trans hr
      have hp : Processed Ω U C := by
        refine ⟨?_,?_,?_,?_⟩
        · apply Set.disjoint_left.mpr
          intro I hI hc
          have : Reach.rank E I < n := hI
          rw [rankC hc] at this
          exact Nat.lt_irrefl _ this
        · intro I J hj hij
          exact lt_of_le_of_lt (Reach.rank_mono E hij) hj
        · intro I J hj hij
          have hle : Reach.rank E I ≤ n := (Reach.rank_mono E hij).trans (le_of_eq (rankC hj))
          rcases lt_or_eq_of_le hle with hlt | heq
          · exact .inl hlt
          · exact .inr ⟨hj.1.trans (Reach.reverse_of_rank_eq E hij (heq.trans (rankC hj).symm)),
              hij.trans hj.2⟩
        · intro A hA hAu
          exact ih _ hAu A rfl hA
      obtain ⟨J⟩ := interfaces C hC
      exact J.advance hp hT (Reach.mem_component E V)
  exact h _ T rfl hT

open Classical in
/-- Once all actual types have Ground=Top, typed application preserves SN.
Types and annotations are normalized using WN, not assumed SN. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Components/Variant644d97dbe49446a00680c0b313db4b3715467897a385a9fbb64bb7e52fb570c8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Components/Variant644d97dbe49446a00680c0b313db4b3715467897a385a9fbb64bb7e52fb570c8.lean#L413).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `68baae488ecd98ceb41720aa3fd546b20530119f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
