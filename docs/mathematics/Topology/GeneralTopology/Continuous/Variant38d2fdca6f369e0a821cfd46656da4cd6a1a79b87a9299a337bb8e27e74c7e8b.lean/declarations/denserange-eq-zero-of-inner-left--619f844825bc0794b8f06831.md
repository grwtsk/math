# DenseRange.eq_zero_of_inner_left

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b65e9dea-ad45-2d0e-16ba-7a5ab00c2201",
  "kind": "theorem",
  "lexical_name": "DenseRange.eq_zero_of_inner_left",
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
  "slug": "denserange-eq-zero-of-inner-left--619f844825bc0794b8f06831",
  "source": {
    "blob": "33b52055ec9a812e2a2bc1c8e9f56068f36329a6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 140,
    "line": 138,
    "path": "GRWTSK/Topology/GeneralTopology/Continuous/Variant38d2fdca6f369e0a821cfd46656da4cd6a1a79b87a9299a337bb8e27e74c7e8b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:619f844825bc0794b8f06831e4cc500d689ca288f54edd10752cbdc81981bb77",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Continuous/Variant38d2fdca6f369e0a821cfd46656da4cd6a1a79b87a9299a337bb8e27e74c7e8b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b65e9dea-ad45-2d0e-16ba-7a5ab00c2201`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 138–140.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
nonrec theorem DenseRange.eq_zero_of_inner_left (hf : DenseRange f) (h : ∀ i, ⟪x, f i⟫ = 0) :
    x = 0 := hf.eq_zero_of_inner_left 𝕜 (by simpa)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Continuous/Variant38d2fdca6f369e0a821cfd46656da4cd6a1a79b87a9299a337bb8e27e74c7e8b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Continuous/Variant38d2fdca6f369e0a821cfd46656da4cd6a1a79b87a9299a337bb8e27e74c7e8b.lean#L138).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `33b52055ec9a812e2a2bc1c8e9f56068f36329a6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
