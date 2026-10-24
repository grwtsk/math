# monotone_iff_continuous

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7081f518-f0c5-1e6b-9f61-782d78422a54",
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
  "slug": "monotone-iff-continuous--a20074cea2f21ebbd06fce74",
  "source": {
    "blob": "86e36b31a651d8b3a9ae9481c0eb1b74aa598507",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 283,
    "line": 271,
    "path": "GRWTSK/Topology/GeneralTopology/UpperLowerSetTopology/Variant4adbdf39cdfe4bc148a255694d7b5abce6f4456a030afd3f20f631b59af2afe2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a20074cea2f21ebbd06fce740f94cd45a37a3d935bd611d37caecce65d18a6da",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UpperLowerSetTopology/Variant4adbdf39cdfe4bc148a255694d7b5abce6f4456a030afd3f20f631b59af2afe2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7081f518-f0c5-1e6b-9f61-782d78422a54`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 271–283.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected lemma monotone_iff_continuous [TopologicalSpace α] [TopologicalSpace β]
    [Topology.IsUpperSet α] [Topology.IsUpperSet β] {f : α → β} : Monotone f ↔ Continuous f := by
  constructor
  · intro hf
    simp_rw [continuous_def, isOpen_iff_isUpperSet]
    exact fun _ hs ↦ IsUpperSet.preimage hs hf
  · intro hf a b hab
    rw [← mem_Iic, ← closure_singleton] at hab ⊢
    apply Continuous.closure_preimage_subset hf {f b}
    apply mem_of_mem_of_subset hab
    apply closure_mono
    rw [singleton_subset_iff, mem_preimage, mem_singleton_iff]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/UpperLowerSetTopology/Variant4adbdf39cdfe4bc148a255694d7b5abce6f4456a030afd3f20f631b59af2afe2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UpperLowerSetTopology/Variant4adbdf39cdfe4bc148a255694d7b5abce6f4456a030afd3f20f631b59af2afe2.lean#L271).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `86e36b31a651d8b3a9ae9481c0eb1b74aa598507` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
