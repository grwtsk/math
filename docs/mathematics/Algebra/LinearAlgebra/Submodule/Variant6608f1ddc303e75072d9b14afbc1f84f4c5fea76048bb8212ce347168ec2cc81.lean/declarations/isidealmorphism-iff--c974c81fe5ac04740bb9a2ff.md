# isIdealMorphism_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4186be2a-3285-4d51-d080-b51916732201",
  "kind": "theorem",
  "lexical_name": "isIdealMorphism_iff",
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
  "slug": "isidealmorphism-iff--c974c81fe5ac04740bb9a2ff",
  "source": {
    "blob": "a2ce33549a29e0ab8210a9bc343b024214dadfbb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 944,
    "line": 934,
    "path": "GRWTSK/Algebra/LinearAlgebra/Submodule/Variant6608f1ddc303e75072d9b14afbc1f84f4c5fea76048bb8212ce347168ec2cc81.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c974c81fe5ac04740bb9a2ff99106fafc03867844599b0ce352f8cce1b57bf7e",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Submodule/Variant6608f1ddc303e75072d9b14afbc1f84f4c5fea76048bb8212ce347168ec2cc81.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4186be2a-3285-4d51-d080-b51916732201`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 934–944.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isIdealMorphism_iff : f.IsIdealMorphism ↔ ∀ (x : L') (y : L), ∃ z : L, ⁅x, f y⁆ = f z := by
  simp only [isIdealMorphism_def, idealRange_eq_lieSpan_range, ←
    LieSubalgebra.coe_to_submodule_eq_iff, ← f.range.coe_to_submodule,
    LieIdeal.coe_to_lieSubalgebra_to_submodule, LieSubmodule.coe_lieSpan_submodule_eq_iff,
    LieSubalgebra.mem_coe_submodule, mem_range, exists_imp,
    Submodule.exists_lieSubmodule_coe_eq_iff]
  constructor
  · intro h x y; obtain ⟨z, hz⟩ := h x (f y) y rfl; use z; exact hz.symm
  · intro h x y z hz; obtain ⟨w, hw⟩ := h x z; use w; rw [← hw, hz]
#align lie_hom.is_ideal_morphism_iff LieHom.isIdealMorphism_iff

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Submodule/Variant6608f1ddc303e75072d9b14afbc1f84f4c5fea76048bb8212ce347168ec2cc81.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Submodule/Variant6608f1ddc303e75072d9b14afbc1f84f4c5fea76048bb8212ce347168ec2cc81.lean#L934).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a2ce33549a29e0ab8210a9bc343b024214dadfbb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
