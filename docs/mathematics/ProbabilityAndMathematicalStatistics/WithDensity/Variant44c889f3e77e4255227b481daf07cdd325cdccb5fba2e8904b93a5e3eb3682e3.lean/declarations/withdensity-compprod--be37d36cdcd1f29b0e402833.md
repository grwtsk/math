# withDensity_compProd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3e725e7d-aa46-e6ad-1e78-f4857702325a",
  "kind": "lemma",
  "lexical_name": "withDensity_compProd",
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
  "slug": "withdensity-compprod--be37d36cdcd1f29b0e402833",
  "source": {
    "blob": "0b34fa666fc27e47424c8be06049ab6bbd2c161b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 139,
    "line": 127,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/WithDensity/Variant44c889f3e77e4255227b481daf07cdd325cdccb5fba2e8904b93a5e3eb3682e3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:be37d36cdcd1f29b0e4028331df8b996ae2728093587e700c8c81c44cce882a3",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/WithDensity/Variant44c889f3e77e4255227b481daf07cdd325cdccb5fba2e8904b93a5e3eb3682e3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3e725e7d-aa46-e6ad-1e78-f4857702325a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 127–139.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma withDensity_compProd {η : Kernel (𝓧 × 𝓨) 𝓩} [IsSFiniteKernel η]
    [IsSFiniteKernel (κ.withDensity g)] (hg : Measurable (Function.uncurry g)) :
    (κ.withDensity g) ⊗ₖ η = (κ ⊗ₖ η).withDensity (fun a bc ↦ g a bc.1) := by
  ext a : 1
  calc ((κ.withDensity g) ⊗ₖ η) a
  _ = (κ a).withDensity (g a) ⊗ₘ η.sectR a := by
      rw [compProd_apply_eq_compProd_sectR, Kernel.withDensity_apply _ hg]
  _ = ((κ a) ⊗ₘ (η.sectR a)).withDensity (fun bc ↦ g a bc.1) :=
      Measure.withDensity_compProd (by fun_prop)
  _ = ((κ ⊗ₖ η).withDensity (fun a bc ↦ g a bc.1)) a := by
      rw [← compProd_apply_eq_compProd_sectR, Kernel.withDensity_apply _ (by fun_prop)]

end ProbabilityTheory.Kernel
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/ProbabilityAndMathematicalStatistics/WithDensity/Variant44c889f3e77e4255227b481daf07cdd325cdccb5fba2e8904b93a5e3eb3682e3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/WithDensity/Variant44c889f3e77e4255227b481daf07cdd325cdccb5fba2e8904b93a5e3eb3682e3.lean#L127).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0b34fa666fc27e47424c8be06049ab6bbd2c161b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
