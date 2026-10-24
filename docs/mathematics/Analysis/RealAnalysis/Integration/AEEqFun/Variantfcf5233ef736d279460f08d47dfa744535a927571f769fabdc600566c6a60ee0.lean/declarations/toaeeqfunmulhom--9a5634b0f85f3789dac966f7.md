# toAEEqFunMulHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:eba9289e2e176d240e48081d2406b712d76806e5fd7b1ffc36c7d68c36669192",
  "kind": "def",
  "lexical_name": "toAEEqFunMulHom",
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
  "slug": "toaeeqfunmulhom--9a5634b0f85f3789dac966f7",
  "source": {
    "blob": "da3f364e9b6f02913a4c456ed87c250f51426478",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1023,
    "line": 1009,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/AEEqFun/Variantfcf5233ef736d279460f08d47dfa744535a927571f769fabdc600566c6a60ee0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9a5634b0f85f3789dac966f799a38c274cfc48a1d8ff81d6717a815909e7c4fe",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/AEEqFun/Variantfcf5233ef736d279460f08d47dfa744535a927571f769fabdc600566c6a60ee0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:eba9289e2e176d240e48081d2406b712d76806e5fd7b1ffc36c7d68c36669192`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1009–1023.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def toAEEqFunMulHom : C(α, β) →* α →ₘ[μ] β where
  toFun := ContinuousMap.toAEEqFun μ
  map_one' := rfl
  map_mul' f g :=
    AEEqFun.mk_mul_mk _ _ f.continuous.aestronglyMeasurable g.continuous.aestronglyMeasurable
#align continuous_map.to_ae_eq_fun_mul_hom ContinuousMap.toAEEqFunMulHom
#align continuous_map.to_ae_eq_fun_add_hom ContinuousMap.toAEEqFunAddHom

variable {𝕜 : Type*} [Semiring 𝕜]

variable [TopologicalSpace γ] [PseudoMetrizableSpace γ] [AddCommGroup γ] [Module 𝕜 γ]
  [TopologicalAddGroup γ] [ContinuousConstSMul 𝕜 γ] [SecondCountableTopologyEither α γ]

/-- The linear map from the group of continuous maps from `α` to `β` to the group of equivalence
classes of `μ`-almost-everywhere measurable functions. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/AEEqFun/Variantfcf5233ef736d279460f08d47dfa744535a927571f769fabdc600566c6a60ee0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/AEEqFun/Variantfcf5233ef736d279460f08d47dfa744535a927571f769fabdc600566c6a60ee0.lean#L1009).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `da3f364e9b6f02913a4c456ed87c250f51426478` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
