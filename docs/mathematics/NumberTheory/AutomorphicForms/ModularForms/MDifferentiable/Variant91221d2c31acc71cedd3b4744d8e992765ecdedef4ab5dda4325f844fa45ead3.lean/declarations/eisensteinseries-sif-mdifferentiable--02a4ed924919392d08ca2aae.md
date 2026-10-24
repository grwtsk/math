# eisensteinSeries_SIF_MDifferentiable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "bcc2172a330d9700d8980e3d8f10ad7714cf7653",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 49,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/91/91221d2c31acc71cedd3b4744d8e992765ecdedef4ab5dda4325f844fa45ead3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f847fb42-701a-4a14-5091-39c1518e46d5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ef8956c0-b7f8-7c98-6c57-e26a6dea31e8",
  "kind": "theorem",
  "lexical_name": "eisensteinSeries_SIF_MDifferentiable",
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
  "slug": "eisensteinseries-sif-mdifferentiable--02a4ed924919392d08ca2aae",
  "source": {
    "blob": "bcc2172a330d9700d8980e3d8f10ad7714cf7653",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 62,
    "line": 49,
    "path": "GRWTSK/NumberTheory/AutomorphicForms/ModularForms/MDifferentiable/Variant91221d2c31acc71cedd3b4744d8e992765ecdedef4ab5dda4325f844fa45ead3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:02a4ed924919392d08ca2aae79f8f7bbd8a836aeec3ca2ae713b164b3a2e7bf8",
  "verification": {
    "reference": "docs/verification/NumberTheory/AutomorphicForms/ModularForms/MDifferentiable/Variant91221d2c31acc71cedd3b4744d8e992765ecdedef4ab5dda4325f844fa45ead3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ef8956c0-b7f8-7c98-6c57-e26a6dea31e8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 49–62.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eisensteinSeries_SIF_MDifferentiable {k : ℤ} {N : ℕ} (hk : 3 ≤ k) (a : Fin 2 → ZMod N) :
    MDifferentiable 𝓘(ℂ) 𝓘(ℂ) (eisensteinSeries_SIF a k) := by
  intro τ
  suffices DifferentiableAt ℂ (↑ₕeisensteinSeries_SIF a k) τ.1 by
    convert MDifferentiableAt.comp τ (DifferentiableAt.mdifferentiableAt this) τ.mdifferentiable_coe
    exact funext fun z ↦ (comp_ofComplex (eisensteinSeries_SIF a k) z).symm
  refine DifferentiableOn.differentiableAt ?_
    ((isOpen_lt continuous_const Complex.continuous_im).mem_nhds τ.2)
  exact (eisensteinSeries_tendstoLocallyUniformlyOn hk a).differentiableOn
    (Eventually.of_forall fun s ↦ DifferentiableOn.sum
      fun _ _ ↦ eisSummand_extension_differentiableOn _ _)
        (isOpen_lt continuous_const continuous_im)

end EisensteinSeries
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AutomorphicForms/ModularForms/MDifferentiable/Variant91221d2c31acc71cedd3b4744d8e992765ecdedef4ab5dda4325f844fa45ead3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AutomorphicForms/ModularForms/MDifferentiable/Variant91221d2c31acc71cedd3b4744d8e992765ecdedef4ab5dda4325f844fa45ead3.lean#L49).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bcc2172a330d9700d8980e3d8f10ad7714cf7653` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
