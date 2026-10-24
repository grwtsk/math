# uniformContinuous_quotient_lift₂

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4eda8293-2ae9-602f-a5d9-208f2b93e782",
  "kind": "theorem",
  "lexical_name": "uniformContinuous_quotient_lift₂",
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
  "slug": "uniformcontinuous-quotient-lift--6f05bbbf6688535f5616e50e",
  "source": {
    "blob": "9ea6eaf03cfed2bdd437e882d412373fb6098323",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 320,
    "line": 312,
    "path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/Separation/Variant52743748b50d941f7cdef5a592e88984c486e5beffa3a7dad591711f96cbbb25.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6f05bbbf6688535f5616e50ed8b0d05707eed6e2bdd479116b361fc0ce8efef0",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UniformSpaces/Separation/Variant52743748b50d941f7cdef5a592e88984c486e5beffa3a7dad591711f96cbbb25.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4eda8293-2ae9-602f-a5d9-208f2b93e782`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 312–320.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem uniformContinuous_quotient_lift₂ {f : α → β → γ}
    {h : ∀ a c b d, (a, b) ∈ 𝓢 α → (c, d) ∈ 𝓢 β → f a c = f b d}
    (hf : UniformContinuous fun p : α × β => f p.1 p.2) :
    UniformContinuous fun p : _ × _ => Quotient.lift₂ f h p.1 p.2 := by
  rw [UniformContinuous, uniformity_prod_eq_prod, uniformity_quotient, uniformity_quotient,
    Filter.prod_map_map_eq, Filter.tendsto_map'_iff, Filter.tendsto_map'_iff]
  rwa [UniformContinuous, uniformity_prod_eq_prod, Filter.tendsto_map'_iff] at hf
#align uniform_space.uniform_continuous_quotient_lift₂ UniformSpace.uniformContinuous_quotient_lift₂

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Topology/GeneralTopology/UniformSpaces/Separation/Variant52743748b50d941f7cdef5a592e88984c486e5beffa3a7dad591711f96cbbb25.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UniformSpaces/Separation/Variant52743748b50d941f7cdef5a592e88984c486e5beffa3a7dad591711f96cbbb25.lean#L312).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9ea6eaf03cfed2bdd437e882d412373fb6098323` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
