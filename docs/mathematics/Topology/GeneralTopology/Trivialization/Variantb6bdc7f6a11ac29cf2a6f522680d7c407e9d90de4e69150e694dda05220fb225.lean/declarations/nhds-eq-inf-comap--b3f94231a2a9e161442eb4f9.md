# nhds_eq_inf_comap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:beffd75b-ff03-fb8b-ce53-7d69b1c10e18",
  "kind": "theorem",
  "lexical_name": "nhds_eq_inf_comap",
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
  "slug": "nhds-eq-inf-comap--b3f94231a2a9e161442eb4f9",
  "source": {
    "blob": "7abb9a7e47d2672a8c5875c34e97dbebde5f0ff0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 486,
    "line": 480,
    "path": "GRWTSK/Topology/GeneralTopology/Trivialization/Variantb6bdc7f6a11ac29cf2a6f522680d7c407e9d90de4e69150e694dda05220fb225.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b3f94231a2a9e161442eb4f93671fc32454e22e24dd31d668fb130777961c598",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Trivialization/Variantb6bdc7f6a11ac29cf2a6f522680d7c407e9d90de4e69150e694dda05220fb225.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:beffd75b-ff03-fb8b-ce53-7d69b1c10e18`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 480–486.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem nhds_eq_inf_comap {z : Z} (hz : z ∈ e.source) :
    𝓝 z = comap proj (𝓝 (proj z)) ⊓ comap (Prod.snd ∘ e) (𝓝 (e z).2) := by
  refine eq_of_forall_le_iff fun l ↦ ?_
  rw [le_inf_iff, ← tendsto_iff_comap, ← tendsto_iff_comap]
  exact e.tendsto_nhds_iff hz

/-- The preimage of a subset of the base set is homeomorphic to the product with the fiber. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Trivialization/Variantb6bdc7f6a11ac29cf2a6f522680d7c407e9d90de4e69150e694dda05220fb225.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Trivialization/Variantb6bdc7f6a11ac29cf2a6f522680d7c407e9d90de4e69150e694dda05220fb225.lean#L480).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7abb9a7e47d2672a8c5875c34e97dbebde5f0ff0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
