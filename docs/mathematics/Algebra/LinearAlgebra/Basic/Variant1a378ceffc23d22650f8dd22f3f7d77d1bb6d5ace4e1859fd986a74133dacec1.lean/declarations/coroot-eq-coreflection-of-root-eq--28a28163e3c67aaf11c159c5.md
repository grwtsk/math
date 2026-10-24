# coroot_eq_coreflection_of_root_eq'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d1f31e1ffebefdf4d9fd498ada9444ac169b1d8c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 131,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1a/1a378ceffc23d22650f8dd22f3f7d77d1bb6d5ace4e1859fd986a74133dacec1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2917f7ec-dce8-cd82-58ce-0533a594a53c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6934a00c-2332-ed60-2e12-34a060981500",
  "kind": "lemma",
  "lexical_name": "coroot_eq_coreflection_of_root_eq'",
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
  "slug": "coroot-eq-coreflection-of-root-eq--28a28163e3c67aaf11c159c5",
  "source": {
    "blob": "d1f31e1ffebefdf4d9fd498ada9444ac169b1d8c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 173,
    "line": 131,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant1a378ceffc23d22650f8dd22f3f7d77d1bb6d5ace4e1859fd986a74133dacec1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:28a28163e3c67aaf11c159c5e91c24f10638f85d96ab95be9a2a43bacea9070e",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variant1a378ceffc23d22650f8dd22f3f7d77d1bb6d5ace4e1859fd986a74133dacec1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6934a00c-2332-ed60-2e12-34a060981500`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 131–173.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma coroot_eq_coreflection_of_root_eq' [CharZero R] [IsDomain R]
    (p : M →ₗ[R] N →ₗ[R] R) [p.IsPerfPair]
    (root : ι ↪ M)
    (coroot : ι ↪ N)
    (hp : ∀ i, p (root i) (coroot i) = 2)
    (hr : ∀ i, MapsTo (preReflection (root i) (p.flip (coroot i))) (range root) (range root))
    (hc : ∀ i, MapsTo (preReflection (coroot i) (p (root i))) (range coroot) (range coroot))
    {i j k : ι} (hk : root k = preReflection (root i) (p.flip (coroot i)) (root j)) :
    coroot k = preReflection (coroot i) (p (root i)) (coroot j) := by
  have : IsReflexive R M := .of_isPerfPair p
  set α := root i
  set β := root j
  set α' := coroot i
  set β' := coroot j
  set sα := preReflection α (p.flip α')
  set sβ := preReflection β (p.flip β')
  let sα' := preReflection α' (p α)
  have hij : preReflection (sα β) (p.flip (sα' β')) = sα ∘ₗ sβ ∘ₗ sα := by
    ext
    have hpi : (p.flip (coroot i)) (root i) = 2 := by simp [hp i]
    simp [α, β, α', β', sα, sβ, sα', ← preReflection_preReflection β (p.flip β') hpi,
      preReflection_apply]
  obtain ⟨l, hl⟩ := hc i (mem_range_self j)
  rw [← hl]
  have hkl : (p.flip (coroot l)) (root k) = 2 := by
    simp only [hl, preReflection_apply, map_sub, map_smul, hk, LinearMap.flip_apply,
      LinearMap.sub_apply, hp j, LinearMap.smul_apply, smul_eq_mul, hp i, mul_two,
      sub_add_cancel_right, mul_neg, sub_neg_eq_add, sα, α, α', β]
    rw [mul_comm (p (root i) (coroot j))]
    abel
  suffices p.flip (coroot k) = p.flip (coroot l) from p.flip.toPerfPair.injective this
  have : IsAddTorsionFree M := .of_isTorsionFree R M
  have := injOn_dualMap_subtype_span_range_range (finite_range root)
    (c := p.flip ∘ coroot) hp hr
  apply this (mem_range_self k) (mem_range_self l)
  refine Dual.eq_of_preReflection_mapsTo' (finite_range root)
    (Submodule.subset_span <| mem_range_self k) (hp k) (hr k) hkl ?_
  rw [comp_apply, hl, hk, hij]
  exact (hr i).comp <| (hr j).comp (hr i)

set_option backward.isDefEq.respectTransparency false in
/-- In characteristic zero over an integral domain, to check that two finite families of roots and
coroots form a root pairing, it is sufficient to check that they are stable under reflections. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variant1a378ceffc23d22650f8dd22f3f7d77d1bb6d5ace4e1859fd986a74133dacec1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variant1a378ceffc23d22650f8dd22f3f7d77d1bb6d5ace4e1859fd986a74133dacec1.lean#L131).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d1f31e1ffebefdf4d9fd498ada9444ac169b1d8c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
