# scheduled_cycle_zero_nndist

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "45b6e751df667391795201d5e96ded7ef2fbc6a4",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 415,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c8/c8ea9bfd7179dbc437eb0ddda1d5084bd3f5274c9dfa1d87a149e2ba917e485f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:40a08cc0-09aa-1463-6f0d-53e4f78c0cf0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:53e69aa5-8afa-65cc-d20a-aba657a46c96",
  "kind": "theorem",
  "lexical_name": "scheduled_cycle_zero_nndist",
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
  "slug": "scheduled-cycle-zero-nndist--15d86b59a7ab7197ef8cd57c",
  "source": {
    "blob": "45b6e751df667391795201d5e96ded7ef2fbc6a4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 455,
    "line": 415,
    "path": "GRWTSK/Topology/GeneralTopology/ContractiveBoundary/Variantc8ea9bfd7179dbc437eb0ddda1d5084bd3f5274c9dfa1d87a149e2ba917e485f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:15d86b59a7ab7197ef8cd57c75fad30424f3721d8445e713192d98422ac2b81f",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ContractiveBoundary/Variantc8ea9bfd7179dbc437eb0ddda1d5084bd3f5274c9dfa1d87a149e2ba917e485f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:53e69aa5-8afa-65cc-d20a-aba657a46c96`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 415–455.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem scheduled_cycle_zero_nndist
    (certificate :
      ContractiveBoundaryCertificate State Schedule)
    (schedule : ℕ → Schedule)
    {state : State}
    (state_mem : state ∈ certificate.basin)
    (period : ℕ)
    (period_pos : 0 < period)
    (cycle :
      iterateSchedule
        certificate.step schedule period state = state) :
    nndist state certificate.boundary = 0 := by
  have period_contracts :
      certificate.contraction ^ period < 1 :=
    pow_lt_one_of_lt
      certificate.contraction_lt_one
      (Nat.ne_of_gt period_pos)
  have bounded :=
    certificate.nndist_to_boundary_le_pow
      schedule state_mem period
  rw [cycle] at bounded
  by_contra nonzero
  have positive :
      0 < nndist state certificate.boundary :=
    lt_of_le_of_ne bot_le (Ne.symm nonzero)
  have strict :
      certificate.contraction ^ period *
          nndist state certificate.boundary <
        nndist state certificate.boundary := by
    exact
      mul_lt_mul_of_pos_right
        period_contracts positive
  exact (not_lt_of_ge bounded) strict

end ContractiveBoundaryCertificate

section MetricUniqueness

variable {State : Type u} {Schedule : Type v}
variable [MetricSpace State]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ContractiveBoundary/Variantc8ea9bfd7179dbc437eb0ddda1d5084bd3f5274c9dfa1d87a149e2ba917e485f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ContractiveBoundary/Variantc8ea9bfd7179dbc437eb0ddda1d5084bd3f5274c9dfa1d87a149e2ba917e485f.lean#L415).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `45b6e751df667391795201d5e96ded7ef2fbc6a4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
