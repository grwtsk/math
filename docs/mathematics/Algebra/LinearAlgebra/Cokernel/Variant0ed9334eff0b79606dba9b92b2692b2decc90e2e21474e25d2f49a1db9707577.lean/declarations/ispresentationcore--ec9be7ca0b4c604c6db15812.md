# isPresentationCore

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:456061e5c3fdcb37b5afffa091efdb5ee2207b236e33a6ed203f6399d340591f",
  "kind": "def",
  "lexical_name": "isPresentationCore",
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
  "slug": "ispresentationcore--ec9be7ca0b4c604c6db15812",
  "source": {
    "blob": "d9f2c84e6cd05a60f6a9ef3b89484c3482715f38",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 118,
    "line": 98,
    "path": "GRWTSK/Algebra/LinearAlgebra/Cokernel/Variant0ed9334eff0b79606dba9b92b2692b2decc90e2e21474e25d2f49a1db9707577.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ec9be7ca0b4c604c6db15812e89e081eb183fef08959870b5409003e65161e41",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Cokernel/Variant0ed9334eff0b79606dba9b92b2692b2decc90e2e21474e25d2f49a1db9707577.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:456061e5c3fdcb37b5afffa091efdb5ee2207b236e33a6ed203f6399d340591f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 98–118.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def isPresentationCore :
    Relations.Solution.IsPresentationCore.{w}
      (pres₂.cokernelSolution data) where
  desc s := (LinearMap.range f).liftQ (pres₂.desc
    { var := s.var
      linearCombination_var_relation :=
        fun r ↦ s.linearCombination_var_relation (.inl r) }) (by
          rw [LinearMap.range_eq_map, ← hg₁, Submodule.map_span, Submodule.span_le,
            Set.image_subset_iff]
          rintro _ ⟨i, rfl⟩
          rw [Set.mem_preimage, SetLike.mem_coe, LinearMap.mem_ker, ← data.π_lift,
            Relations.Solution.IsPresentation.π_desc_apply]
          exact s.linearCombination_var_relation (.inr i))
  postcomp_desc s := by aesop
  postcomp_injective h := by
    ext : 1
    apply pres₂.toIsPresentation.postcomp_injective
    ext g
    exact Relations.Solution.congr_var h g

include hg₁ in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Cokernel/Variant0ed9334eff0b79606dba9b92b2692b2decc90e2e21474e25d2f49a1db9707577.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Cokernel/Variant0ed9334eff0b79606dba9b92b2692b2decc90e2e21474e25d2f49a1db9707577.lean#L98).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d9f2c84e6cd05a60f6a9ef3b89484c3482715f38` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
