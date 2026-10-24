# tensorProductFanIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e7b7ca82252f16750a7039097f6ec965c1d106d5e7ff090772f1e8fe0802b848",
  "kind": "def",
  "lexical_name": "tensorProductFanIso",
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
  "slug": "tensorproductfaniso--e669e20cc96b637099b4bd2d",
  "source": {
    "blob": "182e7eb24c73307a9d82ee7368dd95b758f257b9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 79,
    "line": 64,
    "path": "GRWTSK/Algebra/Limits/Variant677c66a940582de1feff8688999f0e0d72f33c9acfd7d165db0205f3975e93ca.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e669e20cc96b637099b4bd2d5cb3d8acd19236bc0b3e40adac45aade09da790a",
  "verification": {
    "reference": "docs/verification/Algebra/Limits/Variant677c66a940582de1feff8688999f0e0d72f33c9acfd7d165db0205f3975e93ca.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e7b7ca82252f16750a7039097f6ec965c1d106d5e7ff090772f1e8fe0802b848`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 64–79.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def tensorProductFanIso [Fintype ι] [DecidableEq ι] :
    tensorProductFan S P ≅ tensorProductFan' S P :=
  Fan.ext (Algebra.TensorProduct.piRight R S _ _).toUnder <| fun i ↦ by
    dsimp only [tensorProductFan, Fan.mk_pt, fan_mk_proj, tensorProductFan']
    apply CommRingCat.mkUnder_ext
    intro c
    induction c
    · simp only [AlgHom.toUnder_right, map_zero, Under.comp_right, comp_apply,
        AlgEquiv.toUnder_hom_right_apply, Pi.evalAlgHom_apply, Pi.zero_apply]
    · simp only [AlgHom.toUnder_right, Algebra.TensorProduct.map_tmul, AlgHom.coe_id, id_eq,
        Pi.evalAlgHom_apply, Under.comp_right, comp_apply, AlgEquiv.toUnder_hom_right_apply,
        Algebra.TensorProduct.piRight_tmul]
    · simp_all

open Classical in
/-- The fan on `i ↦ S ⊗[R] P i` given by `S ⊗[R] ∀ i, P i` is limiting if `ι` is finite. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Limits/Variant677c66a940582de1feff8688999f0e0d72f33c9acfd7d165db0205f3975e93ca.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Limits/Variant677c66a940582de1feff8688999f0e0d72f33c9acfd7d165db0205f3975e93ca.lean#L64).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `182e7eb24c73307a9d82ee7368dd95b758f257b9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
