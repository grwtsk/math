# CauchySeq.mul_norm_bddAbove

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e77b7593-9c14-915c-2fbe-f21ca6bcf50b",
  "kind": "lemma",
  "lexical_name": "CauchySeq.mul_norm_bddAbove",
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
  "slug": "cauchyseq-mul-norm-bddabove--e4ed0ffab5930de324ac06dc",
  "source": {
    "blob": "097ffada12534e9bbfe212d5a1a33596997de4a6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 451,
    "line": 439,
    "path": "GRWTSK/Topology/MetricTopology/Uniform/Variant15a84abaaf24ee1cfd1b44835962d8ad9d89e948d2f54626f7b09ab17f53f998.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e4ed0ffab5930de324ac06dccc5ec37b4332225d05f888cd2931e77a6c8f6522",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Uniform/Variant15a84abaaf24ee1cfd1b44835962d8ad9d89e948d2f54626f7b09ab17f53f998.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e77b7593-9c14-915c-2fbe-f21ca6bcf50b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 439–451.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma CauchySeq.mul_norm_bddAbove {G : Type*} [SeminormedGroup G] {u : ℕ → G}
    (hu : CauchySeq u) : BddAbove (Set.range (fun n ↦ ‖u n‖)) := by
  obtain ⟨C, -, hC⟩ := cauchySeq_bdd hu
  simp_rw [SeminormedGroup.dist_eq] at hC
  have : ∀ n, ‖u n‖ ≤ C + ‖u 0‖ := by
    intro n
    rw [add_comm]
    refine (norm_le_norm_add_norm_inv_mul (u n) (u 0)).trans ?_
    simp [(hC _ _).le]
  rw [bddAbove_def]
  exact ⟨C + ‖u 0‖, by simpa using this⟩

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Uniform/Variant15a84abaaf24ee1cfd1b44835962d8ad9d89e948d2f54626f7b09ab17f53f998.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Uniform/Variant15a84abaaf24ee1cfd1b44835962d8ad9d89e948d2f54626f7b09ab17f53f998.lean#L439).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `097ffada12534e9bbfe212d5a1a33596997de4a6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
