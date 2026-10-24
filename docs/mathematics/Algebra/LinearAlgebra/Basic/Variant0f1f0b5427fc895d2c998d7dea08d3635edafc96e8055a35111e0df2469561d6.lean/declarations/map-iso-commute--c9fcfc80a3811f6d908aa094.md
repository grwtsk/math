# map_iso_commute

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:51c7a907-0b78-4cc4-2b96-f661e74a543f",
  "kind": "lemma",
  "lexical_name": "map_iso_commute",
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
  "slug": "map-iso-commute--c9fcfc80a3811f6d908aa094",
  "source": {
    "blob": "9645b989a209b907145a8aaefc766e42ac419797",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1268,
    "line": 1249,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant0f1f0b5427fc895d2c998d7dea08d3635edafc96e8055a35111e0df2469561d6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c9fcfc80a3811f6d908aa09444689af2d5879ffa0a63053cd7d9bdfc3d398f4c",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variant0f1f0b5427fc895d2c998d7dea08d3635edafc96e8055a35111e0df2469561d6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:51c7a907-0b78-4cc4-2b96-f661e74a543f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1249–1268.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma map_iso_commute (g : M₀ →ₗ[R] M₁) : (map S f₀ f₁) g ∘ₗ (iso S f₀) =
    (iso S f₁) ∘ₗ (map S (mkLinearMap S M₀) (mkLinearMap S M₁)) g := by
  ext x
  refine induction_on (fun m s ↦ ((Module.End.isUnit_iff _).1 (map_units f₁ s)).1 ?_) x
  repeat rw [Module.algebraMap_end_apply, ← CompatibleSMul.map_smul, smul'_mk, ← mk_smul, mk_cancel]
  simp -- Can't be combined with next simp. This uses map_apply, which would be preempted by map.
  simp [map, lift, iso_localizedModule_eq_refl, lift_mk]

end IsLocalizedModule

namespace IsLocalizedModule

variable {M₀ M₀'} [AddCommMonoid M₀] [AddCommMonoid M₀'] [Module R M₀] [Module R M₀']
variable (f₀ : M₀ →ₗ[R] M₀') [IsLocalizedModule S f₀]
variable {M₁ M₁'} [AddCommMonoid M₁] [AddCommMonoid M₁'] [Module R M₁] [Module R M₁']
variable (f₁ : M₁ →ₗ[R] M₁') [IsLocalizedModule S f₁]
variable {M₂ M₂'} [AddCommMonoid M₂] [AddCommMonoid M₂'] [Module R M₂] [Module R M₂']
variable (f₂ : M₂ →ₗ[R] M₂') [IsLocalizedModule S f₂]

/-- Localization of composition is the composition of localization -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variant0f1f0b5427fc895d2c998d7dea08d3635edafc96e8055a35111e0df2469561d6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variant0f1f0b5427fc895d2c998d7dea08d3635edafc96e8055a35111e0df2469561d6.lean#L1249).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9645b989a209b907145a8aaefc766e42ac419797` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
