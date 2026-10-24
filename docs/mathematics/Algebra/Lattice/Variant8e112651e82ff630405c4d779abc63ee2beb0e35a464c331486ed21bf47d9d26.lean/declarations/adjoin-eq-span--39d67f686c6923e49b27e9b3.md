# adjoin_eq_span

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a02b1ac8-6dc9-1b23-8a9b-da4a049d5091",
  "kind": "theorem",
  "lexical_name": "adjoin_eq_span",
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
  "slug": "adjoin-eq-span--39d67f686c6923e49b27e9b3",
  "source": {
    "blob": "85defdbbd40b7abc8a065ac810117f7de2e8ecb2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 724,
    "line": 692,
    "path": "GRWTSK/Algebra/Lattice/Variant8e112651e82ff630405c4d779abc63ee2beb0e35a464c331486ed21bf47d9d26.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:39d67f686c6923e49b27e9b378a8164e2469da233c3ffb152701a5478b1e0db1",
  "verification": {
    "reference": "docs/verification/Algebra/Lattice/Variant8e112651e82ff630405c4d779abc63ee2beb0e35a464c331486ed21bf47d9d26.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a02b1ac8-6dc9-1b23-8a9b-da4a049d5091`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 692–724.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem adjoin_eq_span : Subalgebra.toSubmodule (adjoin R s) = span R (Submonoid.closure s) := by
  apply le_antisymm
  · intro r hr
    rcases Subsemiring.mem_closure_iff_exists_list.1 hr with ⟨L, HL, rfl⟩
    clear hr
    induction L with
    | nil => exact zero_mem _
    | cons hd tl ih => ?_
    rw [List.forall_mem_cons] at HL
    rw [List.map_cons, List.sum_cons]
    refine Submodule.add_mem _ ?_ (ih HL.2)
    replace HL := HL.1
    clear ih tl
    suffices ∃ (z r : _) (_hr : r ∈ Submonoid.closure s), z • r = List.prod hd by
      rcases this with ⟨z, r, hr, hzr⟩
      rw [← hzr]
      exact smul_mem _ _ (subset_span hr)
    induction hd with
    | nil => exact ⟨1, 1, (Submonoid.closure s).one_mem', one_smul _ _⟩
    | cons hd tl ih => ?_
    rw [List.forall_mem_cons] at HL
    rcases ih HL.2 with ⟨z, r, hr, hzr⟩
    rw [List.prod_cons, ← hzr]
    rcases HL.1 with (⟨hd, rfl⟩ | hs)
    · refine ⟨hd * z, r, hr, ?_⟩
      rw [Algebra.smul_def, Algebra.smul_def, (algebraMap _ _).map_mul, _root_.mul_assoc]
    · exact
        ⟨z, hd * r, Submonoid.mul_mem _ (Submonoid.subset_closure hs) hr,
          (mul_smul_comm _ _ _).symm⟩
  refine span_le.2 ?_
  change Submonoid.closure s ≤ (adjoin R s).toSubsemiring.toSubmonoid
  exact Submonoid.closure_le.2 subset_adjoin

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Lattice/Variant8e112651e82ff630405c4d779abc63ee2beb0e35a464c331486ed21bf47d9d26.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Lattice/Variant8e112651e82ff630405c4d779abc63ee2beb0e35a464c331486ed21bf47d9d26.lean#L692).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `85defdbbd40b7abc8a065ac810117f7de2e8ecb2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
