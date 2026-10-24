# uniformInducing_equivBoundedOfCompact

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "44372ea4077fd0b88ed63fdb6296bc228aab8e6c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 58,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/33/33aac1b2a8ed6706a9a67948421594eab7c76c43a6b00459add955d491879cca.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5f39c357-6557-af2d-aff4-e00930ea3df4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:fc39d956-0f78-6659-b491-34a658818a2f",
  "kind": "theorem",
  "lexical_name": "uniformInducing_equivBoundedOfCompact",
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
  "slug": "uniforminducing-equivboundedofcompact--beccee6be1bf2840d8b37ab7",
  "source": {
    "blob": "44372ea4077fd0b88ed63fdb6296bc228aab8e6c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 70,
    "line": 58,
    "path": "GRWTSK/Topology/GeneralTopology/Compact/Variant33aac1b2a8ed6706a9a67948421594eab7c76c43a6b00459add955d491879cca.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:beccee6be1bf2840d8b37ab7c08401c4d84de5f07588e927bf14b0a928c9d9b5",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Compact/Variant33aac1b2a8ed6706a9a67948421594eab7c76c43a6b00459add955d491879cca.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fc39d956-0f78-6659-b491-34a658818a2f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 58–70.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem uniformInducing_equivBoundedOfCompact : UniformInducing (equivBoundedOfCompact α β) :=
  UniformInducing.mk'
    (by
      simp only [hasBasis_compactConvergenceUniformity.mem_iff, uniformity_basis_dist_le.mem_iff]
      exact fun s =>
        ⟨fun ⟨⟨a, b⟩, ⟨_, ⟨ε, hε, hb⟩⟩, hs⟩ =>
          ⟨{ p | ∀ x, (p.1 x, p.2 x) ∈ b }, ⟨ε, hε, fun _ h x => hb ((dist_le hε.le).mp h x)⟩,
            fun f g h => hs fun x _ => h x⟩,
          fun ⟨_, ⟨ε, hε, ht⟩, hs⟩ =>
          ⟨⟨Set.univ, { p | dist p.1 p.2 ≤ ε }⟩, ⟨isCompact_univ, ⟨ε, hε, fun _ h => h⟩⟩,
            fun ⟨f, g⟩ h => hs _ _ (ht ((dist_le hε.le).mpr fun x => h x (mem_univ x)))⟩⟩)
#align continuous_map.uniform_inducing_equiv_bounded_of_compact ContinuousMap.uniformInducing_equivBoundedOfCompact

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Compact/Variant33aac1b2a8ed6706a9a67948421594eab7c76c43a6b00459add955d491879cca.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Compact/Variant33aac1b2a8ed6706a9a67948421594eab7c76c43a6b00459add955d491879cca.lean#L58).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `44372ea4077fd0b88ed63fdb6296bc228aab8e6c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
