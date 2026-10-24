# inf_sup

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:423a2124-ee7f-2ea6-0bef-bc8697e4dc7b",
  "kind": "theorem",
  "lexical_name": "inf_sup",
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
  "slug": "inf-sup--acf5d83b620aab2e2b8caf86",
  "source": {
    "blob": "3f473823ca8101101c03122bf5cc75e1ce3e4c1b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 62,
    "line": 36,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Pi/Variant773e7b564658d3c432026e9b3d4377fcbee8f044bf24356160588c83bfe49a6d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:acf5d83b620aab2e2b8caf86a1c0492e607e99c32644c03193bbf9144e32a554",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Pi/Variant773e7b564658d3c432026e9b3d4377fcbee8f044bf24356160588c83bfe49a6d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:423a2124-ee7f-2ea6-0bef-bc8697e4dc7b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 36–62.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem inf_sup {κ : ι → Type*} (s : Finset ι) (t : ∀ i, Finset (κ i)) (f : ∀ i, κ i → α) :
    (s.inf fun i => (t i).sup (f i)) =
      (s.pi t).sup fun g => s.attach.inf fun i => f _ <| g _ i.2 := by
  induction s using Finset.induction with
  | empty => simp
  | insert i s hi ih => ?_
  rw [inf_insert, ih, attach_insert, sup_inf_sup]
  refine eq_of_forall_ge_iff fun c => ?_
  simp only [Finset.sup_le_iff, mem_product, mem_pi, and_imp, Prod.forall,
    inf_insert, inf_image]
  refine
    ⟨fun h g hg =>
      h (g i <| mem_insert_self _ _) (fun j hj => g j <| mem_insert_of_mem hj)
        (hg _ <| mem_insert_self _ _) fun j hj => hg _ <| mem_insert_of_mem hj,
      fun h a g ha hg => ?_⟩
  -- TODO: This `have` must be named to prevent it being shadowed by the internal `this` in `simpa`
  have aux : ∀ j : { x // x ∈ s }, ↑j ≠ i := fun j : s => ne_of_mem_of_not_mem j.2 hi
  -- `simpa` doesn't support placeholders in proof terms
  have := h (fun j hj => if hji : j = i then cast (congr_arg κ hji.symm) a
      else g _ <| mem_of_mem_insert_of_ne hj hji) (fun j hj => ?_)
  · simpa only [cast_eq, dite_eq_left, Function.comp_def, Subtype.coe_mk, dite_eq_right,
      aux] using! this
  rw [mem_insert] at hj
  obtain (rfl | hj) := hj
  · simpa
  · simpa [ne_of_mem_of_not_mem hj hi] using! hg _ _

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Pi/Variant773e7b564658d3c432026e9b3d4377fcbee8f044bf24356160588c83bfe49a6d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Pi/Variant773e7b564658d3c432026e9b3d4377fcbee8f044bf24356160588c83bfe49a6d.lean#L36).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3f473823ca8101101c03122bf5cc75e1ce3e4c1b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
