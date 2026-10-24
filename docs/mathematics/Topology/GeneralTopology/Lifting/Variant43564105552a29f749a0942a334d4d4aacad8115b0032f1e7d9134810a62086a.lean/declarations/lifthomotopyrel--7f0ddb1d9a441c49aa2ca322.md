# liftHomotopyRel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:961608267349a00b8220735fe875de9fd780972516de9afa8ec7335d6484bdd0",
  "kind": "def",
  "lexical_name": "liftHomotopyRel",
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
  "slug": "lifthomotopyrel--7f0ddb1d9a441c49aa2ca322",
  "source": {
    "blob": "69caae4abbcaab0a74b29815e6fe28549d12295d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 326,
    "line": 304,
    "path": "GRWTSK/Topology/GeneralTopology/Lifting/Variant43564105552a29f749a0942a334d4d4aacad8115b0032f1e7d9134810a62086a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7f0ddb1d9a441c49aa2ca322e9bdacf2d6d1576b1193259cf4df58dda6c88b34",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Lifting/Variant43564105552a29f749a0942a334d4d4aacad8115b0032f1e7d9134810a62086a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:961608267349a00b8220735fe875de9fd780972516de9afa8ec7335d6484bdd0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 304–326.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def liftHomotopyRel [PreconnectedSpace A]
    {f₀' f₁' : C(A, E)} (he : ∃ a ∈ S, f₀' a = f₁' a)
    (h₀ : p ∘ f₀' = f₀) (h₁ : p ∘ f₁' = f₁) : f₀'.HomotopyRel f₁' S :=
  have F_0 : ∀ a, F (0, a) = p (f₀' a) := fun a ↦ (F.apply_zero a).trans (congr_fun h₀ a).symm
  have rel : ∀ t, ∀ a ∈ S, cov.liftHomotopy F f₀' F_0 (t, a) = f₀' a := fun t a ha ↦ by
    rw [liftHomotopy_apply, cov.const_of_comp (ContinuousMap.continuous _) _ t 0]
    · apply cov.liftPath_zero
    · intro t t'; simp_rw [← p.comp_apply, cov.liftPath_lifts]
      exact (F.prop t a ha).trans (F.prop t' a ha).symm
  { toContinuousMap := cov.liftHomotopy F f₀' F_0
    map_zero_left := cov.liftHomotopy_zero F f₀' F_0
    map_one_left := by
      obtain ⟨a, ha, he⟩ := he
      simp_rw [toFun_eq_coe, ← curry_apply]
      refine congr_fun (cov.eq_of_comp_eq
        (ContinuousMap.continuous _) f₁'.continuous ?_ a <| (rel 1 a ha).trans he)
      ext a; rw [h₁, Function.comp_apply, curry_apply]
      exact (congr_fun (cov.liftHomotopy_lifts F f₀' _) (1, a)).trans (F.apply_one a)
    prop' := rel }

/-- Two continuous maps from a preconnected space to the total space of a covering map
  are homotopic relative to a set `S` if and only if their compositions with the covering map
  are homotopic relative to `S`, assuming that they agree at a point in `S`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Lifting/Variant43564105552a29f749a0942a334d4d4aacad8115b0032f1e7d9134810a62086a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Lifting/Variant43564105552a29f749a0942a334d4d4aacad8115b0032f1e7d9134810a62086a.lean#L304).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `69caae4abbcaab0a74b29815e6fe28549d12295d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
