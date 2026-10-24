# enlarge

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:af274ae0d170207110ceb9be5047c00b51445f3e4f97b4102ab2cfe70b328c89",
  "kind": "def",
  "lexical_name": "enlarge",
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
  "slug": "enlarge--a7b24f905b1c6a7310d3fe03",
  "source": {
    "blob": "ca83846355bb18f6af94af916fdb3fd812a15601",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 225,
    "line": 194,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/VitaliFamily/Variant93f325fb8aacf0a85ad09d545edbc830a2ee159db6060ea451ac308f8b819c4a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a7b24f905b1c6a7310d3fe0344ea92c7e7b0609b3bb64842b5913eae1d61d45e",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/VitaliFamily/Variant93f325fb8aacf0a85ad09d545edbc830a2ee159db6060ea451ac308f8b819c4a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:af274ae0d170207110ceb9be5047c00b51445f3e4f97b4102ab2cfe70b328c89`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 194–225.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def enlarge (v : VitaliFamily μ) (δ : ℝ) (δpos : 0 < δ) : VitaliFamily μ where
  setsAt x := v.setsAt x ∪ { a | MeasurableSet a ∧ (interior a).Nonempty ∧ ¬a ⊆ closedBall x δ }
  MeasurableSet' x a ha := by
    cases' ha with ha ha
    exacts [v.MeasurableSet' _ _ ha, ha.1]
  nonempty_interior x a ha := by
    cases' ha with ha ha
    exacts [v.nonempty_interior _ _ ha, ha.2.1]
  Nontrivial := by
    intro x ε εpos
    rcases v.Nontrivial x ε εpos with ⟨a, ha, h'a⟩
    exact ⟨a, mem_union_left _ ha, h'a⟩
  covering := by
    intro s f fset ffine
    let g : α → Set (Set α) := fun x => f x ∩ v.setsAt x
    have : ∀ x ∈ s, ∀ ε : ℝ, ε > 0 → ∃ (a : Set α), a ∈ g x ∧ a ⊆ closedBall x ε := by
      intro x hx ε εpos
      obtain ⟨a, af, ha⟩ : ∃ a ∈ f x, a ⊆ closedBall x (min ε δ)
      exact ffine x hx (min ε δ) (lt_min εpos δpos)
      rcases fset x hx af with (h'a | h'a)
      · exact ⟨a, ⟨af, h'a⟩, ha.trans (closedBall_subset_closedBall (min_le_left _ _))⟩
      · refine' False.elim (h'a.2.2 _)
        exact ha.trans (closedBall_subset_closedBall (min_le_right _ _))
    rcases v.covering s g (fun x _ => inter_subset_right _ _) this with ⟨t, ts, tdisj, tg, μt⟩
    exact ⟨t, ts, tdisj, fun p hp => (tg p hp).1, μt⟩
#align vitali_family.enlarge VitaliFamily.enlarge

variable (v : VitaliFamily μ)

/-- Given a vitali family `v`, then `v.filterAt x` is the filter on `Set α` made of those families
that contain all sets of `v.setsAt x` of a sufficiently small diameter. This filter makes it
possible to express limiting behavior when sets in `v.setsAt x` shrink to `x`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/VitaliFamily/Variant93f325fb8aacf0a85ad09d545edbc830a2ee159db6060ea451ac308f8b819c4a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/VitaliFamily/Variant93f325fb8aacf0a85ad09d545edbc830a2ee159db6060ea451ac308f8b819c4a.lean#L194).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ca83846355bb18f6af94af916fdb3fd812a15601` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
