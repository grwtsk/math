# list_cycles_perm_list_cycles

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2d41ef9f-2be0-2e6c-ecc2-81b069fef1c0",
  "kind": "theorem",
  "lexical_name": "list_cycles_perm_list_cycles",
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
  "slug": "list-cycles-perm-list-cycles--154eb67d1676a4d49da9b2de",
  "source": {
    "blob": "22bcdd88db207682520dfc42779dcca1dbf6b45a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 467,
    "line": 454,
    "path": "GRWTSK/Algebra/GroupTheory/Factors/Variante6508ef027ebd3ec8eed3351afaa52f32195a33ecfa4bf873ddbb913513dfcf1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:154eb67d1676a4d49da9b2def0fc497f5b73385d35dfcb6ae921a306d8f76605",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Factors/Variante6508ef027ebd3ec8eed3351afaa52f32195a33ecfa4bf873ddbb913513dfcf1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2d41ef9f-2be0-2e6c-ecc2-81b069fef1c0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 454–467.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem list_cycles_perm_list_cycles {α : Type*} [Finite α] {l₁ l₂ : List (Perm α)}
    (h₀ : l₁.prod = l₂.prod) (h₁l₁ : ∀ σ : Perm α, σ ∈ l₁ → σ.IsCycle)
    (h₁l₂ : ∀ σ : Perm α, σ ∈ l₂ → σ.IsCycle) (h₂l₁ : l₁.Pairwise Disjoint)
    (h₂l₂ : l₂.Pairwise Disjoint) : l₁ ~ l₂ := by
  refine
    (List.perm_ext_iff_of_nodup (nodup_of_pairwise_disjoint_cycles h₁l₁ h₂l₁)
          (nodup_of_pairwise_disjoint_cycles h₁l₂ h₂l₂)).mpr
      fun σ => ?_
  by_cases hσ : σ.IsCycle
  · obtain _ := not_forall.mp (mt ext hσ.ne_one)
    rw [mem_list_cycles_iff h₁l₁ h₂l₁, mem_list_cycles_iff h₁l₂ h₂l₂, h₀]
  · exact iff_of_false (mt (h₁l₁ σ) hσ) (mt (h₁l₂ σ) hσ)

/-- Factors a permutation `f` into a list of disjoint cyclic permutations that multiply to `f`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Factors/Variante6508ef027ebd3ec8eed3351afaa52f32195a33ecfa4bf873ddbb913513dfcf1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Factors/Variante6508ef027ebd3ec8eed3351afaa52f32195a33ecfa4bf873ddbb913513dfcf1.lean#L454).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `22bcdd88db207682520dfc42779dcca1dbf6b45a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
