# kerParam_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a011688a-2d3f-d88b-0190-58ad2df6c9e1",
  "kind": "theorem",
  "lexical_name": "kerParam_apply",
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
  "slug": "kerparam-apply--2be9deffcfa2bd824dc3041d",
  "source": {
    "blob": "d69eedbbaa6aea3acbc9778d6e1be02643b802a3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 529,
    "line": 501,
    "path": "GRWTSK/Algebra/GroupTheory/Centralizer/Variantf6fcb1686c18ff6f09b3e6e2a3f3f5bbb964ae44484775422fb131f916740df3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2be9deffcfa2bd824dc3041d7e782d1b7c6a4255fba9e5f90b12155ed879aba7",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Centralizer/Variantf6fcb1686c18ff6f09b3e6e2a3f3f5bbb964ae44484775422fb131f916740df3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a011688a-2d3f-d88b-0190-58ad2df6c9e1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 501–529.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem kerParam_apply {u : Perm (Function.fixedPoints g)}
    {v : (c : g.cycleFactorsFinset) → Subgroup.zpowers c.val} {x : α} :
    kerParam g (u, v) x =
    if hx : g.cycleOf x ∈ g.cycleFactorsFinset
    then (v ⟨g.cycleOf x, hx⟩ : Perm α) x
    else ofSubtype u x := by
  split_ifs with hx
  · have hx' := hx
    rw [cycleOf_mem_cycleFactorsFinset_iff, mem_support, Ne, ← Function.mem_fixedPoints_iff] at hx'
    rw [kerParam, MonoidHom.noncommCoprod_apply', mul_apply, ofSubtype_apply_of_not_mem u hx',
      noncommPiCoprod_apply, ← Finset.noncommProd_erase_mul _ (Finset.mem_univ ⟨g.cycleOf x, hx⟩),
      mul_apply, ← notMem_support]
    contrapose hx'
    obtain ⟨a, ha1, ha2⟩ := mem_support_of_mem_noncommProd_support hx'
    simp only [Finset.mem_erase, Finset.mem_univ, and_true, Ne, Subtype.ext_iff] at ha1
    have key := cycleFactorsFinset_pairwise_disjoint g a.2 hx ha1
    rw [disjoint_iff_disjoint_support, Finset.disjoint_left] at key
    obtain ⟨k, hk⟩ := mem_zpowers_iff.mp (v a).2
    replace ha2 := key (support_zpow_le a.1 k (hk ▸ ha2))
    obtain ⟨k, hk⟩ := mem_zpowers_iff.mp (v ⟨g.cycleOf x, hx⟩).2
    rwa [← hk, zpow_apply_mem_support, notMem_support, cycleOf_apply_self] at ha2
  · rw [cycleOf_mem_cycleFactorsFinset_iff] at hx
    rw [kerParam, MonoidHom.noncommCoprod_apply, mul_apply, Equiv.apply_eq_iff_eq,
      ← notMem_support]
    contrapose hx
    obtain ⟨a, -, ha⟩ := mem_support_of_mem_noncommProd_support
      (comm := fun a ha b hb h ↦ g.pairwise_commute_of_mem_zpowers h (v a) (v b) (v a).2 (v b).2) hx
    exact support_zpowers_of_mem_cycleFactorsFinset_le (v a) ha

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Centralizer/Variantf6fcb1686c18ff6f09b3e6e2a3f3f5bbb964ae44484775422fb131f916740df3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Centralizer/Variantf6fcb1686c18ff6f09b3e6e2a3f3f5bbb964ae44484775422fb131f916740df3.lean#L501).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d69eedbbaa6aea3acbc9778d6e1be02643b802a3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
