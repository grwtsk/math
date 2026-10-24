# monotone_iff_continuous

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "64d933828a26a83076699e25819d76f4f7389e8b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 390,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/28/28d8ec3da4884d2369a3c226b4c7f1e7c24e27b873aa4b589b7020cdef83bfb6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f333ad6e-ef2e-31d9-33e6-899671ddc10f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f67d6b18-2fd6-b094-eaf6-0329c7478ade",
  "kind": "lemma",
  "lexical_name": "monotone_iff_continuous",
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
  "slug": "monotone-iff-continuous--d9e49f8292cff3bc0c98bbe2",
  "source": {
    "blob": "64d933828a26a83076699e25819d76f4f7389e8b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 395,
    "line": 390,
    "path": "GRWTSK/Topology/GeneralTopology/UpperLowerSetTopology/Variant28d8ec3da4884d2369a3c226b4c7f1e7c24e27b873aa4b589b7020cdef83bfb6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d9e49f8292cff3bc0c98bbe256eff9f2b7be55186ce2923c50dd0786ff49bbbd",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UpperLowerSetTopology/Variant28d8ec3da4884d2369a3c226b4c7f1e7c24e27b873aa4b589b7020cdef83bfb6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f67d6b18-2fd6-b094-eaf6-0329c7478ade`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 390–395.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected lemma monotone_iff_continuous [TopologicalSpace α] [TopologicalSpace β]
    [Topology.IsLowerSet α] [Topology.IsLowerSet β] {f : α → β} : Monotone f ↔ Continuous f := by
  rw [← monotone_dual_iff]
  exact IsUpperSet.monotone_iff_continuous (α := αᵒᵈ) (β := βᵒᵈ)
    (f := (toDual ∘ f ∘ ofDual : αᵒᵈ → βᵒᵈ))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/UpperLowerSetTopology/Variant28d8ec3da4884d2369a3c226b4c7f1e7c24e27b873aa4b589b7020cdef83bfb6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UpperLowerSetTopology/Variant28d8ec3da4884d2369a3c226b4c7f1e7c24e27b873aa4b589b7020cdef83bfb6.lean#L390).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `64d933828a26a83076699e25819d76f4f7389e8b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
