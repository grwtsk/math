# ODE_solution_unique_of_mem_Icc_right

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4303a59264d27308dbe232496454d61b9bab767b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 193,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/12/1292496cc956302be52e934fd23c72ac414d82963177ebcac88faff4f6cec0a0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:bb9b00ff-0969-90f1-2685-5a376deafe26",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5fd64990-5884-7b6e-6767-29a2b8b21e20",
  "kind": "theorem",
  "lexical_name": "ODE_solution_unique_of_mem_Icc_right",
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
  "slug": "ode-solution-unique-of-mem-icc-right--ea6c8cbd8bdf6ec36dc61c7a",
  "source": {
    "blob": "4303a59264d27308dbe232496454d61b9bab767b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 207,
    "line": 193,
    "path": "GRWTSK/DifferentialEquationsAndDynamicalSystems/ExistUnique/Variant1292496cc956302be52e934fd23c72ac414d82963177ebcac88faff4f6cec0a0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ea6c8cbd8bdf6ec36dc61c7a800b38aa9d4dfcb38b360af6418a67d46decf08a",
  "verification": {
    "reference": "docs/verification/DifferentialEquationsAndDynamicalSystems/ExistUnique/Variant1292496cc956302be52e934fd23c72ac414d82963177ebcac88faff4f6cec0a0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5fd64990-5884-7b6e-6767-29a2b8b21e20`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 193–207.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ODE_solution_unique_of_mem_Icc_right
    (hv : ∀ t ∈ Ico a b, LipschitzOnWith K (v t) (s t))
    (hf : ContinuousOn f (Icc a b))
    (hf' : ∀ t ∈ Ico a b, HasDerivWithinAt f (v t (f t)) (Ici t) t)
    (hfs : ∀ t ∈ Ico a b, f t ∈ s t)
    (hg : ContinuousOn g (Icc a b))
    (hg' : ∀ t ∈ Ico a b, HasDerivWithinAt g (v t (g t)) (Ici t) t)
    (hgs : ∀ t ∈ Ico a b, g t ∈ s t)
    (ha : f a = g a) :
    EqOn f g (Icc a b) := fun t ht ↦ by
  have := dist_le_of_trajectories_ODE_of_mem hv hf hf' hfs hg hg' hgs (dist_le_zero.2 ha) t ht
  rwa [zero_mul, dist_le_zero] at this

/-- A time-reversed version of `ODE_solution_unique_of_mem_Icc_right`. Uniqueness is shown in a
closed interval `Icc a b`, where `b` is the "initial" time. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/DifferentialEquationsAndDynamicalSystems/ExistUnique/Variant1292496cc956302be52e934fd23c72ac414d82963177ebcac88faff4f6cec0a0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/DifferentialEquationsAndDynamicalSystems/ExistUnique/Variant1292496cc956302be52e934fd23c72ac414d82963177ebcac88faff4f6cec0a0.lean#L193).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4303a59264d27308dbe232496454d61b9bab767b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
