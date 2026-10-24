# sierpinski_pathological_family

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:856b7026-009e-ead5-dc69-2f3a8b478dac",
  "kind": "theorem",
  "lexical_name": "sierpinski_pathological_family",
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
  "slug": "sierpinski-pathological-family--9f35abd0376311f5392e5847",
  "source": {
    "blob": "9a04c1930d85357b652259a54d97b96776d007e3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 530,
    "line": 506,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Phillips/Variant9de58849f145640b8cc93f8b45ede345cd38526bf081d22184104b25e77511ec.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9f35abd0376311f5392e5847c635e444fd0a80d3f79aedf27f0f9bb2411a9cb1",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Phillips/Variant9de58849f145640b8cc93f8b45ede345cd38526bf081d22184104b25e77511ec.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:856b7026-009e-ead5-dc69-2f3a8b478dac`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 506–530.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sierpinski_pathological_family (Hcont : #ℝ = aleph 1) :
    ∃ f : ℝ → Set ℝ, (∀ x, (univ \ f x).Countable) ∧ ∀ y, {x : ℝ | y ∈ f x}.Countable := by
  rcases Cardinal.ord_eq ℝ with ⟨r, hr, H⟩
  skip
  refine' ⟨fun x => {y | r x y}, fun x => _, fun y => _⟩
  · have : univ \ {y | r x y} = {y | r y x} ∪ {x} := by
      ext y
      simp only [true_and_iff, mem_univ, mem_setOf_eq, mem_insert_iff, union_singleton, mem_diff]
      rcases trichotomous_of r x y with (h | rfl | h)
      · simp only [h, not_or, false_iff_iff, not_true]
        constructor
        · rintro rfl; exact irrefl_of r y h
        · exact asymm h
      · simp only [true_or_iff, eq_self_iff_true, iff_true_iff]; exact irrefl x
      · simp only [h, iff_true_iff, or_true_iff]; exact asymm h
    rw [this]
    apply Countable.union _ (countable_singleton _)
    rw [Cardinal.countable_iff_lt_aleph_one, ← Hcont]
    exact Cardinal.card_typein_lt r x H
  · rw [Cardinal.countable_iff_lt_aleph_one, ← Hcont]
    exact Cardinal.card_typein_lt r y H
#align counterexample.phillips_1940.sierpinski_pathological_family Counterexample.Phillips1940.sierpinski_pathological_family

/-- A family of sets in `ℝ` which only miss countably many points, but such that any point is
contained in only countably many of them. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Phillips/Variant9de58849f145640b8cc93f8b45ede345cd38526bf081d22184104b25e77511ec.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Phillips/Variant9de58849f145640b8cc93f8b45ede345cd38526bf081d22184104b25e77511ec.lean#L506).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9a04c1930d85357b652259a54d97b96776d007e3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
