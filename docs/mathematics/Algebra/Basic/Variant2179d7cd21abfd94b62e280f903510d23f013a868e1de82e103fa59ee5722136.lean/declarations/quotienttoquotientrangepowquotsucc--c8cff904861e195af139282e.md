# quotientToQuotientRangePowQuotSucc

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1d7e84a738c1a06e55d6865ced37e499f54c433904ee7d789ea11574326beeee",
  "kind": "def",
  "lexical_name": "quotientToQuotientRangePowQuotSucc",
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
  "slug": "quotienttoquotientrangepowquotsucc--c8cff904861e195af139282e",
  "source": {
    "blob": "83b7ec0fd879c386ae3d6e7aedb74acd0b899622",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 379,
    "line": 360,
    "path": "GRWTSK/Algebra/Basic/Variant2179d7cd21abfd94b62e280f903510d23f013a868e1de82e103fa59ee5722136.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c8cff904861e195af139282edbc4879146a45f537f9d3a84a662d769577d1270",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variant2179d7cd21abfd94b62e280f903510d23f013a868e1de82e103fa59ee5722136.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1d7e84a738c1a06e55d6865ced37e499f54c433904ee7d789ea11574326beeee`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 360–379.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def quotientToQuotientRangePowQuotSucc
    {i : ℕ} {a : S} (a_mem : a ∈ P ^ i) :
    S ⧸ P →ₗ[R ⧸ p]
      (P ^ i).map (Ideal.Quotient.mk (P ^ e)) ⧸ LinearMap.range (powQuotSuccInclusion p P i) where
  toFun := quotientToQuotientRangePowQuotSuccAux p P a_mem
  map_add' x y := by
    induction x, y using Quotient.inductionOn₂' with | _ x y
    simp only [Submodule.Quotient.mk''_eq_mk, ← Submodule.Quotient.mk_add,
      quotientToQuotientRangePowQuotSuccAux_mk, mul_add, map_add, map_mul, AddMemClass.mk_add_mk]
  map_smul' x y := by
    induction x, y using Quotient.inductionOn₂' with | _ x y
    simp only [Submodule.Quotient.mk''_eq_mk, RingHom.id_apply,
      quotientToQuotientRangePowQuotSuccAux_mk]
    refine congr_arg Submodule.Quotient.mk ?_
    ext
    simp only [map_mul, Quotient.mk_eq_mk, Submodule.coe_smul_of_tower,
      Algebra.smul_def, Quotient.algebraMap_quotient_pow_ramificationIdx]
    ring

@[deprecated "Use results of RingTheory.RamificationInertia.Basic" (since := "2026-07-01")]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variant2179d7cd21abfd94b62e280f903510d23f013a868e1de82e103fa59ee5722136.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variant2179d7cd21abfd94b62e280f903510d23f013a868e1de82e103fa59ee5722136.lean#L360).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `83b7ec0fd879c386ae3d6e7aedb74acd0b899622` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
