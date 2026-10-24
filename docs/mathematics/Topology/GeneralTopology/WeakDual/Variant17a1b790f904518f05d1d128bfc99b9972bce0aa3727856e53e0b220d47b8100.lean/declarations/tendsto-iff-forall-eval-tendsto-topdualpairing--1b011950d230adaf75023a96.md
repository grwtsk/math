# tendsto_iff_forall_eval_tendsto_topDualPairing

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a33f3abd77d951bdeefc78718f1a6af2545d4742",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 254,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/17/17a1b790f904518f05d1d128bfc99b9972bce0aa3727856e53e0b220d47b8100.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:942a992c-83c9-2902-f5cd-3b97dab9bcc6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4cfed1f4-5b56-bfac-4509-aefbe46adc59",
  "kind": "theorem",
  "lexical_name": "tendsto_iff_forall_eval_tendsto_topDualPairing",
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
  "slug": "tendsto-iff-forall-eval-tendsto-topdualpairing--1b011950d230adaf75023a96",
  "source": {
    "blob": "a33f3abd77d951bdeefc78718f1a6af2545d4742",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 268,
    "line": 254,
    "path": "GRWTSK/Topology/GeneralTopology/WeakDual/Variant17a1b790f904518f05d1d128bfc99b9972bce0aa3727856e53e0b220d47b8100.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1b011950d230adaf75023a9653576cd0b5489583ca676514fc0abbe7bbb21e69",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/WeakDual/Variant17a1b790f904518f05d1d128bfc99b9972bce0aa3727856e53e0b220d47b8100.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4cfed1f4-5b56-bfac-4509-aefbe46adc59`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 254–268.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendsto_iff_forall_eval_tendsto_topDualPairing {l : Filter α} {f : α → WeakDual 𝕜 E}
    {x : WeakDual 𝕜 E} :
    Tendsto f l (𝓝 x) ↔
      ∀ y, Tendsto (fun i => topDualPairing 𝕜 E (f i) y) l (𝓝 (topDualPairing 𝕜 E x y)) :=
  WeakBilin.tendsto_iff_forall_eval_tendsto _ ContinuousLinearMap.coe_injective

end Semiring

section Ring

namespace WeakSpace

variable [CommRing 𝕜] [TopologicalSpace 𝕜] [IsTopologicalAddGroup 𝕜] [ContinuousConstSMul 𝕜 𝕜]
variable [AddCommGroup E] [Module 𝕜 E] [TopologicalSpace E] [IsTopologicalAddGroup E]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/WeakDual/Variant17a1b790f904518f05d1d128bfc99b9972bce0aa3727856e53e0b220d47b8100.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/WeakDual/Variant17a1b790f904518f05d1d128bfc99b9972bce0aa3727856e53e0b220d47b8100.lean#L254).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a33f3abd77d951bdeefc78718f1a6af2545d4742` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
