# ODE_solution_unique_univ

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
      "line": 340,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/12/1292496cc956302be52e934fd23c72ac414d82963177ebcac88faff4f6cec0a0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a3d03aae-9ff1-4f2c-8beb-01eaef8dad5b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:047d870c-1f3b-5107-80a0-3299634db780",
  "kind": "theorem",
  "lexical_name": "ODE_solution_unique_univ",
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
  "slug": "ode-solution-unique-univ--ba49584a6a4367a1831a1158",
  "source": {
    "blob": "4303a59264d27308dbe232496454d61b9bab767b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 350,
    "line": 340,
    "path": "GRWTSK/DifferentialEquationsAndDynamicalSystems/ExistUnique/Variant1292496cc956302be52e934fd23c72ac414d82963177ebcac88faff4f6cec0a0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ba49584a6a4367a1831a11582e9d56749fad13c1ac2f67daf88c6b3837d65dd6",
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

Occurrence: `result:047d870c-1f3b-5107-80a0-3299634db780`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 340–350.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ODE_solution_unique_univ
    (hv : ∀ t, LipschitzOnWith K (v t) (s t))
    (hf : ∀ t, HasDerivAt f (v t (f t)) t ∧ f t ∈ s t)
    (hg : ∀ t, HasDerivAt g (v t (g t)) t ∧ g t ∈ s t)
    (heq : f t₀ = g t₀) : f = g := by
  ext t
  obtain ⟨A, B, Ht, Ht₀⟩ : ∃ A B, t ∈ Set.Ioo A B ∧ t₀ ∈ Set.Ioo A B := by
    use (min (-|t|) (-|t₀|) - 1), (max |t| |t₀| + 1)
    grind
  exact ODE_solution_unique_of_mem_Ioo
    (fun t _ => hv t) Ht₀ (fun t _ => hf t) (fun t _ => hg t) heq Ht
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/DifferentialEquationsAndDynamicalSystems/ExistUnique/Variant1292496cc956302be52e934fd23c72ac414d82963177ebcac88faff4f6cec0a0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/DifferentialEquationsAndDynamicalSystems/ExistUnique/Variant1292496cc956302be52e934fd23c72ac414d82963177ebcac88faff4f6cec0a0.lean#L340).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4303a59264d27308dbe232496454d61b9bab767b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
