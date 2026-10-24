# _root_.GRWTSK.Topology.GeneralTopology.IsEmbeddingCoe.Variantccdcd9c3c9bbf8bb06e8cf25628c7bb177a5b52aad1f2d6b15964cf337975438.Continuous.upperHalfPlaneMk

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:34d45c6d-4a1d-f345-5ac4-c230ebf16fa6",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.Topology.GeneralTopology.IsEmbeddingCoe.Variantccdcd9c3c9bbf8bb06e8cf25628c7bb177a5b52aad1f2d6b15964cf337975438.Continuous.upperHalfPlaneMk",
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
  "slug": "root-grwtsk-topology-generaltopology-isembeddingcoe-variantccdcd9c3c9bbf--ec08097d90043b6046d09601",
  "source": {
    "blob": "ed91f45a4a754ef94d07c6aefed1a8115a866355",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 68,
    "line": 64,
    "path": "GRWTSK/Topology/GeneralTopology/Topology/Variantd2d81d497569e37feb1727b1e19cd609f1d83a6d3c6204d6fe9378b4ec152e6f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ec08097d90043b6046d09601c5329c9d98d1b54f2a563ec408a4c763ccd75249",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Topology/Variantd2d81d497569e37feb1727b1e19cd609f1d83a6d3c6204d6fe9378b4ec152e6f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:34d45c6d-4a1d-f345-5ac4-c230ebf16fa6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 64–68.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.Topology.GeneralTopology.IsEmbeddingCoe.Variantccdcd9c3c9bbf8bb06e8cf25628c7bb177a5b52aad1f2d6b15964cf337975438.Continuous.upperHalfPlaneMk {X : Type*} [TopologicalSpace X] {f : X → ℂ}
    (hf : Continuous f) (hf₀ : ∀ x, 0 < (f x).im) :
    Continuous fun x ↦ mk (f x) (hf₀ x) :=
  isEmbedding_coe.continuous_iff.mpr hf

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Topology/Variantd2d81d497569e37feb1727b1e19cd609f1d83a6d3c6204d6fe9378b4ec152e6f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Topology/Variantd2d81d497569e37feb1727b1e19cd609f1d83a6d3c6204d6fe9378b4ec152e6f.lean#L64).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ed91f45a4a754ef94d07c6aefed1a8115a866355` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
