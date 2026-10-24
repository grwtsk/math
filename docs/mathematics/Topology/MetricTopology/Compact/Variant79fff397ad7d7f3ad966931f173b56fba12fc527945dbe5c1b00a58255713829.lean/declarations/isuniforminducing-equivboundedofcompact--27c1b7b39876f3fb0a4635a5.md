# isUniformInducing_equivBoundedOfCompact

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3659d35b-2b41-9ede-0e82-0e4191555ba7",
  "kind": "theorem",
  "lexical_name": "isUniformInducing_equivBoundedOfCompact",
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
  "slug": "isuniforminducing-equivboundedofcompact--27c1b7b39876f3fb0a4635a5",
  "source": {
    "blob": "c478f756cbb46f1a6d18cec9f7eab18d92ee4c25",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 70,
    "line": 59,
    "path": "GRWTSK/Topology/MetricTopology/Compact/Variant79fff397ad7d7f3ad966931f173b56fba12fc527945dbe5c1b00a58255713829.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:27c1b7b39876f3fb0a4635a5e216deeff9d02b7153cdf7a29cd1db62e57063ce",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Compact/Variant79fff397ad7d7f3ad966931f173b56fba12fc527945dbe5c1b00a58255713829.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3659d35b-2b41-9ede-0e82-0e4191555ba7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 59–70.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isUniformInducing_equivBoundedOfCompact : IsUniformInducing (equivBoundedOfCompact α β) :=
  IsUniformInducing.mk'
    (by
      simp only [hasBasis_compactConvergenceUniformity.mem_iff, uniformity_basis_dist_le.mem_iff]
      exact fun s =>
        ⟨fun ⟨⟨a, b⟩, ⟨_, ⟨ε, hε, hb⟩⟩, hs⟩ =>
          ⟨{ p | ∀ x, (p.1 x, p.2 x) ∈ b }, ⟨ε, hε, fun _ h x => hb ((dist_le hε.le).mp h x)⟩,
            fun f g h => hs fun x _ => h x⟩,
          fun ⟨_, ⟨ε, hε, ht⟩, hs⟩ =>
          ⟨⟨Set.univ, { p | dist p.1 p.2 ≤ ε }⟩, ⟨isCompact_univ, ⟨ε, hε, fun _ h => h⟩⟩,
            fun ⟨f, g⟩ h => hs _ _ (ht ((dist_le hε.le).mpr fun x => h x (mem_univ x)))⟩⟩)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Compact/Variant79fff397ad7d7f3ad966931f173b56fba12fc527945dbe5c1b00a58255713829.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Compact/Variant79fff397ad7d7f3ad966931f173b56fba12fc527945dbe5c1b00a58255713829.lean#L59).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c478f756cbb46f1a6d18cec9f7eab18d92ee4c25` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
