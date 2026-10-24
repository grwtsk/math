# LinearIndependent.linearIndependent_of_exact_of_retraction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3b6d3781-6742-251f-32cd-4093a2fdc800",
  "kind": "lemma",
  "lexical_name": "LinearIndependent.linearIndependent_of_exact_of_retraction",
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
  "slug": "linearindependent-linearindependent-of-exact-of-retraction--e2a5069a50cce16c96bdfa12",
  "source": {
    "blob": "6f1220a2482bf3f8450ee4225ae4fabc767526c1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 55,
    "line": 36,
    "path": "GRWTSK/Algebra/LinearAlgebra/Exact/Variant9c6434559f402b5dbc4919cb93b6c9c506bee812e9daa2508cbb5d4fd46d0e70.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e2a5069a50cce16c96bdfa12c4fc9da2e5caad03f068d19563e4003962f8d135",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Exact/Variant9c6434559f402b5dbc4919cb93b6c9c506bee812e9daa2508cbb5d4fd46d0e70.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3b6d3781-6742-251f-32cd-4093a2fdc800`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 36–55.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma LinearIndependent.linearIndependent_of_exact_of_retraction
    (hainj : Function.Injective a) (hsa : ∀ i, s (v (a i)) = 0)
    (hli : LinearIndependent R v) :
    LinearIndependent R (g ∘ v ∘ a) := by
  apply (LinearIndependent.comp hli a hainj).map
  rw [Submodule.disjoint_def, hfg.linearMap_ker_eq]
  rintro - hy ⟨y, rfl⟩
  have hz : s (f y) = 0 := by
    revert hy
    generalize f y = x
    intro hy
    induction hy using Submodule.span_induction with
    | mem m hm => obtain ⟨i, rfl⟩ := hm; apply hsa
    | zero => simp_all
    | add => simp_all
    | smul => simp_all
  replace hs := DFunLike.congr_fun hs y
  simp only [LinearMap.coe_comp, Function.comp_apply, LinearMap.id_coe, id_eq] at hs
  rw [← hs, hz, map_zero]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Exact/Variant9c6434559f402b5dbc4919cb93b6c9c506bee812e9daa2508cbb5d4fd46d0e70.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Exact/Variant9c6434559f402b5dbc4919cb93b6c9c506bee812e9daa2508cbb5d4fd46d0e70.lean#L36).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6f1220a2482bf3f8450ee4225ae4fabc767526c1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
