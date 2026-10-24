# iInfKerProjEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7e838eadee8d17cc5750bfdd3b8d35211cd9f79bde22a34578b5010ea12af8ee",
  "kind": "def",
  "lexical_name": "iInfKerProjEquiv",
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
  "slug": "iinfkerprojequiv--5c75cd6fcebdc1f1012bb9f0",
  "source": {
    "blob": "e60bf5fb2621cad6e6988bde409a14016462c3b9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 305,
    "line": 273,
    "path": "GRWTSK/Algebra/LinearAlgebra/Pi/Variant01a09e66f1aeb757912a1d135b6608ded4b64511444fdf8ab88a563bd010df63.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5c75cd6fcebdc1f1012bb9f0bf3574cbe2c21e566d1ff3089dbd6d247f44cf22",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Pi/Variant01a09e66f1aeb757912a1d135b6608ded4b64511444fdf8ab88a563bd010df63.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7e838eadee8d17cc5750bfdd3b8d35211cd9f79bde22a34578b5010ea12af8ee`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 273–305.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def iInfKerProjEquiv {I J : Set ι} [DecidablePred fun i => i ∈ I] (hd : Disjoint I J)
    (hu : Set.univ ⊆ I ∪ J) :
    (⨅ i ∈ J, ker (proj i : ((i : ι) → φ i) →ₗ[R] φ i) :
    Submodule R ((i : ι) → φ i)) ≃ₗ[R] (i : I) → φ i := by
  refine
    LinearEquiv.ofLinear (pi fun i => (proj (i : ι)).comp (Submodule.subtype _))
      (codRestrict _ (pi fun i => if h : i ∈ I then proj (⟨i, h⟩ : I) else 0) ?_) ?_ ?_
  · intro b
    simp only [mem_iInf, mem_ker, funext_iff, proj_apply, pi_apply]
    intro j hjJ
    have : j ∉ I := fun hjI => hd.le_bot ⟨hjI, hjJ⟩
    rw [dif_neg this, zero_apply]
  · simp only [pi_comp, comp_assoc, subtype_comp_codRestrict, proj_pi, Subtype.coe_prop]
    ext b ⟨j, hj⟩
    simp only [dif_pos, Function.comp_apply, Function.eval_apply, LinearMap.codRestrict_apply,
      LinearMap.coe_comp, LinearMap.coe_proj, LinearMap.pi_apply, Submodule.subtype_apply,
      Subtype.coe_prop]
    rfl
  · ext1 ⟨b, hb⟩
    apply Subtype.ext
    ext j
    have hb : ∀ i ∈ J, b i = 0 := by
      simpa only [mem_iInf, mem_ker, proj_apply] using (mem_iInf _).1 hb
    simp only [comp_apply, pi_apply, id_apply, proj_apply, subtype_apply, codRestrict_apply]
    split_ifs with h
    · rfl
    · exact (hb _ <| (hu trivial).resolve_left h).symm

end

section

/-- `diag i j` is the identity map if `i = j`. Otherwise it is the constant 0 map. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Pi/Variant01a09e66f1aeb757912a1d135b6608ded4b64511444fdf8ab88a563bd010df63.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Pi/Variant01a09e66f1aeb757912a1d135b6608ded4b64511444fdf8ab88a563bd010df63.lean#L273).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e60bf5fb2621cad6e6988bde409a14016462c3b9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
