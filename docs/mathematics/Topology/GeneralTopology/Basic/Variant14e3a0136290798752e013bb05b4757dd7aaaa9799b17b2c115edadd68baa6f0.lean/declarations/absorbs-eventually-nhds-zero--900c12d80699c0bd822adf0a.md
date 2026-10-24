# Absorbs.eventually_nhds_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5f46c605-a78f-6d5f-3845-4443a20aff78",
  "kind": "theorem",
  "lexical_name": "Absorbs.eventually_nhds_zero",
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
  "slug": "absorbs-eventually-nhds-zero--900c12d80699c0bd822adf0a",
  "source": {
    "blob": "d92d33a5ece91fed015b7c766248dd5f203ad2b8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 199,
    "line": 192,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant14e3a0136290798752e013bb05b4757dd7aaaa9799b17b2c115edadd68baa6f0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:900c12d80699c0bd822adf0a87a463b76d124e09ccacd4dea8725fe54409a5e1",
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

Occurrence: `result:5f46c605-a78f-6d5f-3845-4443a20aff78`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 192–199.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Absorbs.eventually_nhds_zero (h : Absorbs 𝕜 s t) (h₀ : 0 ∈ s) :
    ∀ᶠ c : 𝕜 in 𝓝 0, MapsTo (c • ·) t s :=
  (absorbs_iff_eventually_nhds_zero h₀).1 h

variable [NormedRing 𝕝] [Module 𝕜 𝕝] [NormSMulClass 𝕜 𝕝] [SMulWithZero 𝕝 E] [IsScalarTower 𝕜 𝕝 E]
  {a b : 𝕜} {x : E}

/-- Scalar multiplication (by possibly different types) of a balanced set is monotone. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant14e3a0136290798752e013bb05b4757dd7aaaa9799b17b2c115edadd68baa6f0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant14e3a0136290798752e013bb05b4757dd7aaaa9799b17b2c115edadd68baa6f0.lean#L192).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d92d33a5ece91fed015b7c766248dd5f203ad2b8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
