# absorbs_iff_eventually_nhds_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0f7aa6b8-6e09-f544-7798-d5f26d675076",
  "kind": "theorem",
  "lexical_name": "absorbs_iff_eventually_nhds_zero",
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
  "slug": "absorbs-iff-eventually-nhds-zero--7b6b580f37b446a61f4bd57b",
  "source": {
    "blob": "d92d33a5ece91fed015b7c766248dd5f203ad2b8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 191,
    "line": 185,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant14e3a0136290798752e013bb05b4757dd7aaaa9799b17b2c115edadd68baa6f0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7b6b580f37b446a61f4bd57b4097ccd0a995d1de5bac256cf8f6e15db92a27ef",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant14e3a0136290798752e013bb05b4757dd7aaaa9799b17b2c115edadd68baa6f0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0f7aa6b8-6e09-f544-7798-d5f26d675076`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 185–191.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem absorbs_iff_eventually_nhds_zero (h₀ : 0 ∈ s) :
    Absorbs 𝕜 s t ↔ ∀ᶠ c : 𝕜 in 𝓝 0, MapsTo (c • ·) t s := by
  rw [← nhdsNE_sup_pure, Filter.eventually_sup, Filter.eventually_pure,
    ← absorbs_iff_eventually_nhdsNE_zero, and_iff_left]
  intro x _
  simpa only [zero_smul]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant14e3a0136290798752e013bb05b4757dd7aaaa9799b17b2c115edadd68baa6f0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant14e3a0136290798752e013bb05b4757dd7aaaa9799b17b2c115edadd68baa6f0.lean#L185).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d92d33a5ece91fed015b7c766248dd5f203ad2b8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
