# _root_.IsFractional.mapEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "dd6730c6a47630e985c9af8d188432478b0c8295",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 932,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a1/a1654cbaee27fcfeb35a0acc76b74040c1e7488a9e5edb65fd2587cfeeaaae1e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1d552bb4-0521-aa34-bcc0-c5b8da733a97",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4136ab36-27e8-8c4c-1afe-c9917d566c34",
  "kind": "theorem",
  "lexical_name": "_root_.IsFractional.mapEquiv",
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
  "slug": "root-isfractional-mapequiv--e8bc4714e6410409384c7057",
  "source": {
    "blob": "dd6730c6a47630e985c9af8d188432478b0c8295",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 952,
    "line": 932,
    "path": "GRWTSK/Algebra/Operations/Varianta1654cbaee27fcfeb35a0acc76b74040c1e7488a9e5edb65fd2587cfeeaaae1e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e8bc4714e6410409384c7057312c518f7bb32736a20d6377c43d21fd6b472588",
  "verification": {
    "reference": "docs/verification/Algebra/Operations/Varianta1654cbaee27fcfeb35a0acc76b74040c1e7488a9e5edb65fd2587cfeeaaae1e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4136ab36-27e8-8c4c-1afe-c9917d566c34`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 932–952.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.IsFractional.mapEquiv {I : Submodule R K} (hI : IsFractional R⁰ I) :
    IsFractional S⁰ (I.map (semilinearEquivOfRingEquiv K L f).toLinearMap) := by
  simp only [IsFractional, mem_nonZeroDivisors_iff_ne_zero, ne_eq, Submodule.mem_map,
    forall_exists_index, and_imp, forall_apply_eq_imp_iff₂] at hI ⊢
  obtain ⟨r, hr0, hr⟩ := hI
  use f r
  refine ⟨by simp [hr0], ?_⟩
  intro x hx
  specialize hr x hx
  simp only [IsLocalization.IsInteger, RingHom.mem_rangeS] at hr ⊢
  obtain ⟨r', hr'⟩ := hr
  use f r'
  simp only [semilinearEquivOfRingEquiv, RingEquiv.toEquiv_eq_coe, Equiv.toFun_as_coe,
    EquivLike.coe_coe, Equiv.invFun_as_coe, LinearMap.coe_mk, AddHom.coe_mk]
  rw [Algebra.smul_def, ← ringEquivOfRingEquiv_algebraMap f (K := K) (L := L) r,
    ← map_mul, ← Algebra.smul_def, ← hr', ringEquivOfRingEquiv_algebraMap]

set_option backward.isDefEq.respectTransparency.types false in
/-- The equiv `FractionalIdeal R⁰ K ≃+* FractionalIdeal S⁰ L`
  induced by a ring isomorphism `f : R ≃+* S`. -/
@[simps -isSimp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Operations/Varianta1654cbaee27fcfeb35a0acc76b74040c1e7488a9e5edb65fd2587cfeeaaae1e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Operations/Varianta1654cbaee27fcfeb35a0acc76b74040c1e7488a9e5edb65fd2587cfeeaaae1e.lean#L932).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dd6730c6a47630e985c9af8d188432478b0c8295` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
