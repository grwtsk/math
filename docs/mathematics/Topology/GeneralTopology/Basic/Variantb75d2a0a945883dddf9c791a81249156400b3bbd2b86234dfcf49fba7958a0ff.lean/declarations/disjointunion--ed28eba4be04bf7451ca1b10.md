# disjointUnion

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:cea488b985c54a3baf3a34e039386db3aca28e24f467a086bef9149fa3992e03",
  "kind": "instance",
  "lexical_name": "disjointUnion",
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
  "slug": "disjointunion--ed28eba4be04bf7451ca1b10",
  "source": {
    "blob": "f0cb153a5bdcbc6cea6e97ac3f6447d88c871eee",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 995,
    "line": 971,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variantb75d2a0a945883dddf9c791a81249156400b3bbd2b86234dfcf49fba7958a0ff.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ed28eba4be04bf7451ca1b1050b61f6557c16513372ad8b9cfc73103086002d8",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variantb75d2a0a945883dddf9c791a81249156400b3bbd2b86234dfcf49fba7958a0ff.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:cea488b985c54a3baf3a34e039386db3aca28e24f467a086bef9149fa3992e03`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 971–995.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance disjointUnion : IsManifold I n (M ⊕ M') where
  compatible {e} e' he he' := by
    obtain (h | h) := isEmpty_or_nonempty H
    · exact ContDiffGroupoid.mem_of_source_eq_empty _ (eq_empty_of_isEmpty _)
    obtain (⟨f, hf, hef⟩ | ⟨f, hf, hef⟩) := ChartedSpace.mem_atlas_sum he
    · obtain (⟨f', hf', he'f'⟩ | ⟨f', hf', he'f'⟩) := ChartedSpace.mem_atlas_sum he'
      · rw [hef, he'f', f.lift_openEmbedding_trans f' IsOpenEmbedding.inl]
        exact hM.compatible hf hf'
      · rw [hef, he'f']
        apply ContDiffGroupoid.mem_of_source_eq_empty
        ext x
        exact ⟨fun ⟨hx₁, hx₂⟩ ↦ by simp_all, fun hx ↦ hx.elim⟩
    · -- Analogous argument to the first case: is there a way to deduplicate?
      obtain (⟨f', hf', he'f'⟩ | ⟨f', hf', he'f'⟩) := ChartedSpace.mem_atlas_sum he'
      · rw [hef, he'f']
        apply ContDiffGroupoid.mem_of_source_eq_empty
        ext x
        exact ⟨fun ⟨hx₁, hx₂⟩ ↦ by simp_all, fun hx ↦ hx.elim⟩
      · rw [hef, he'f', f.lift_openEmbedding_trans f' IsOpenEmbedding.inr]
        exact hM'.compatible hf hf'

end DisjointUnion

end IsManifold

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variantb75d2a0a945883dddf9c791a81249156400b3bbd2b86234dfcf49fba7958a0ff.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variantb75d2a0a945883dddf9c791a81249156400b3bbd2b86234dfcf49fba7958a0ff.lean#L971).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f0cb153a5bdcbc6cea6e97ac3f6447d88c871eee` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
