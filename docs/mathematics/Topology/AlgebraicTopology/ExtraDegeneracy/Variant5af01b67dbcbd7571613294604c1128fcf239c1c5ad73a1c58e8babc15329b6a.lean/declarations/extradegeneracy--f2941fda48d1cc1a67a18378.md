# extraDegeneracy

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a43515860c72d0e47d21e5909993298c7cadafd58d9901e857d5e67b9ca7c766",
  "kind": "def",
  "lexical_name": "extraDegeneracy",
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
  "slug": "extradegeneracy--f2941fda48d1cc1a67a18378",
  "source": {
    "blob": "91f8bd351d5db58c2d7329efe8a105319c911808",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 362,
    "line": 293,
    "path": "GRWTSK/Topology/AlgebraicTopology/ExtraDegeneracy/Variant5af01b67dbcbd7571613294604c1128fcf239c1c5ad73a1c58e8babc15329b6a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f2941fda48d1cc1a67a18378ee4b3c8299c12a4ffe67c85dd64f416a1d7e2991",
  "verification": {
    "reference": "docs/verification/Topology/AlgebraicTopology/ExtraDegeneracy/Variant5af01b67dbcbd7571613294604c1128fcf239c1c5ad73a1c58e8babc15329b6a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a43515860c72d0e47d21e5909993298c7cadafd58d9901e857d5e67b9ca7c766`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 293–362.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def extraDegeneracy :
    SimplicialObject.Augmented.ExtraDegeneracy f.augmentedCechNerve where
  s' := S.section_ ≫ WidePullback.lift f.hom (fun _ => 𝟙 _) fun i => by rw [id_comp]
  s n := ExtraDegeneracy.s f S n
  s'_comp_ε := by
    dsimp
    simp only [augmentedCechNerve_hom_app, assoc, WidePullback.lift_base, SplitEpi.id]
  s₀_comp_δ₁ := by
    dsimp [cechNerve, SimplicialObject.δ, SimplexCategory.δ]
    ext j
    · fin_cases j
      simpa only [assoc, WidePullback.lift_π, comp_id] using ExtraDegeneracy.s_comp_π_0 f S 0
    · simpa only [assoc, WidePullback.lift_base, SplitEpi.id, comp_id] using
        ExtraDegeneracy.s_comp_base f S 0
  s_comp_δ₀ n := by
    dsimp [cechNerve, SimplicialObject.δ, SimplexCategory.δ]
    ext j
    · simpa only [assoc, WidePullback.lift_π, id_comp] using ExtraDegeneracy.s_comp_π_succ f S n j
    · simpa only [assoc, WidePullback.lift_base, id_comp] using ExtraDegeneracy.s_comp_base f S n
  s_comp_δ n i := by
    dsimp [SimplicialObject.δ, SimplexCategory.δ]
    ext j
    · simp only [assoc, WidePullback.lift_π]
      cases j using Fin.cases with
      | zero =>
        rw [Fin.succ_succAbove_zero]
        erw [ExtraDegeneracy.s_comp_π_0, ExtraDegeneracy.s_comp_π_0]
        dsimp
        simp only [WidePullback.lift_base_assoc]
      | succ k =>
        erw [Fin.succ_succAbove_succ, ExtraDegeneracy.s_comp_π_succ,
          ExtraDegeneracy.s_comp_π_succ]
        simp only [WidePullback.lift_π]
    · simp only [assoc, WidePullback.lift_base]
      erw [ExtraDegeneracy.s_comp_base, ExtraDegeneracy.s_comp_base]
      dsimp
      simp only [WidePullback.lift_base]
  s_comp_σ n i := by
    dsimp [cechNerve, SimplicialObject.σ, SimplexCategory.σ]
    ext j
    · simp only [assoc, WidePullback.lift_π]
      cases j using Fin.cases with
      | zero =>
        erw [ExtraDegeneracy.s_comp_π_0, ExtraDegeneracy.s_comp_π_0]
        dsimp
        simp only [WidePullback.lift_base_assoc]
      | succ k =>
        erw [Fin.succ_predAbove_succ, ExtraDegeneracy.s_comp_π_succ,
          ExtraDegeneracy.s_comp_π_succ]
        simp only [WidePullback.lift_π]
    · simp only [assoc, WidePullback.lift_base]
      erw [ExtraDegeneracy.s_comp_base, ExtraDegeneracy.s_comp_base]
      dsimp
      simp only [WidePullback.lift_base]

end AugmentedCechNerve

end Arrow

namespace SimplicialObject

namespace Augmented

namespace ExtraDegeneracy

open AlgebraicTopology CategoryTheory Limits
variable {C : Type*} [Category C]

/-- The constant augmented simplicial object has an extra degeneracy. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/AlgebraicTopology/ExtraDegeneracy/Variant5af01b67dbcbd7571613294604c1128fcf239c1c5ad73a1c58e8babc15329b6a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/AlgebraicTopology/ExtraDegeneracy/Variant5af01b67dbcbd7571613294604c1128fcf239c1c5ad73a1c58e8babc15329b6a.lean#L293).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `91f8bd351d5db58c2d7329efe8a105319c911808` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
