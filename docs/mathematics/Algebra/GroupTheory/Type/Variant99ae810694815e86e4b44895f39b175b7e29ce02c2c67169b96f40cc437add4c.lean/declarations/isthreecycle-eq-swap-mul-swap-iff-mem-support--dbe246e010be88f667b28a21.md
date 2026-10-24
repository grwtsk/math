# IsThreeCycle.eq_swap_mul_swap_iff_mem_support

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:964f1dde-a476-0ec5-39f2-f61efaa04f06",
  "kind": "theorem",
  "lexical_name": "IsThreeCycle.eq_swap_mul_swap_iff_mem_support",
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
  "slug": "isthreecycle-eq-swap-mul-swap-iff-mem-support--dbe246e010be88f667b28a21",
  "source": {
    "blob": "af97715d678218318df33e17c0ede8dad02f2b0f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 764,
    "line": 736,
    "path": "GRWTSK/Algebra/GroupTheory/Type/Variant99ae810694815e86e4b44895f39b175b7e29ce02c2c67169b96f40cc437add4c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dbe246e010be88f667b28a217cec4daa20402b6c7cc063cedccfd160ea97c477",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Type/Variant99ae810694815e86e4b44895f39b175b7e29ce02c2c67169b96f40cc437add4c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:964f1dde-a476-0ec5-39f2-f61efaa04f06`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 736–764.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsThreeCycle.eq_swap_mul_swap_iff_mem_support
    {g : Perm α} {a : α} (hg3 : g.IsThreeCycle) :
    g = (swap a (g a)) * (swap (g a) (g (g a))) ↔ a ∈ g.support := by
  constructor
  · intro hg
    rw [mem_support]
    intro hx
    apply hg3.isCycle.ne_one
    simpa [hx] using! hg
  intro ha
  have ha' := hg3.support_eq_iff_mem_support.mpr ha
  have ha'' := hg3.nodup_iff_mem_support.mpr ha
  ext x
  simp only [coe_mul, Function.comp_apply]
  by_cases h : x ∈ g.support
  · simp only [ha', Finset.mem_insert, Finset.mem_singleton] at h
    rcases h with rfl | (rfl | rfl)
    · rw [swap_apply_of_ne_of_ne (x := x) (by grind) (by grind)]
      simp
    · rw [swap_apply_left, swap_apply_of_ne_of_ne (by grind) (by grind)]
    · simp only [swap_apply_right]
      suffices (g ^ 3) a = a by simpa
      simp [← hg3.orderOf]
  · rw [swap_apply_of_ne_of_ne (x := x) (by grind) (by grind)]
    rw [swap_apply_of_ne_of_ne (x := x) (by grind) (by grind)]
    simpa [notMem_support] using! h

open Subgroup

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Type/Variant99ae810694815e86e4b44895f39b175b7e29ce02c2c67169b96f40cc437add4c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Type/Variant99ae810694815e86e4b44895f39b175b7e29ce02c2c67169b96f40cc437add4c.lean#L736).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `af97715d678218318df33e17c0ede8dad02f2b0f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
