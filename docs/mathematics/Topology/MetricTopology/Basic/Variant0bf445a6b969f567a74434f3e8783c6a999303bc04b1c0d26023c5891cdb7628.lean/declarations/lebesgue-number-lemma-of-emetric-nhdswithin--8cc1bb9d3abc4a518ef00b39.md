# lebesgue_number_lemma_of_emetric_nhdsWithin

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "882ecde0e689acafe0b31b3c3bda122235166f8d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 343,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0b/0bf445a6b969f567a74434f3e8783c6a999303bc04b1c0d26023c5891cdb7628.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:da3e8475-3c7e-673c-a981-2e7975482ede",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7667bf44-d3a0-0680-033e-e3d7b0d42bec",
  "kind": "theorem",
  "lexical_name": "lebesgue_number_lemma_of_emetric_nhdsWithin",
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
  "slug": "lebesgue-number-lemma-of-emetric-nhdswithin--8cc1bb9d3abc4a518ef00b39",
  "source": {
    "blob": "882ecde0e689acafe0b31b3c3bda122235166f8d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 347,
    "line": 343,
    "path": "GRWTSK/Topology/MetricTopology/Basic/Variant0bf445a6b969f567a74434f3e8783c6a999303bc04b1c0d26023c5891cdb7628.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8cc1bb9d3abc4a518ef00b39c5ddf2ba0edfc3c24950c84ed3559a0edcb93977",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Basic/Variant0bf445a6b969f567a74434f3e8783c6a999303bc04b1c0d26023c5891cdb7628.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7667bf44-d3a0-0680-033e-e3d7b0d42bec`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 343–347.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lebesgue_number_lemma_of_emetric_nhdsWithin {c : γ → Set γ} (hs : IsCompact s)
    (hc : ∀ x ∈ s, c x ∈ 𝓝[s] x) : ∃ δ > 0, ∀ x ∈ s, ∃ y, eball x δ ∩ s ⊆ c y := by
  simpa only [eball, UniformSpace.ball, preimage_ofPred_eq, edist_comm]
    using uniformity_basis_edist.lebesgue_number_lemma_nhdsWithin hs hc

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Basic/Variant0bf445a6b969f567a74434f3e8783c6a999303bc04b1c0d26023c5891cdb7628.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Basic/Variant0bf445a6b969f567a74434f3e8783c6a999303bc04b1c0d26023c5891cdb7628.lean#L343).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `882ecde0e689acafe0b31b3c3bda122235166f8d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
