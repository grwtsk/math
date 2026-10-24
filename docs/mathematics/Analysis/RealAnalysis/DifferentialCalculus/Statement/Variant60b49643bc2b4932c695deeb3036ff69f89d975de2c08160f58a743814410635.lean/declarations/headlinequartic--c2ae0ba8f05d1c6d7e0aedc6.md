# HeadlineQuartic

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:250bdcfb5196ba7cf488a4751e3261dc1c4c55190305abee592e8c68e0a526b3",
  "kind": "def",
  "lexical_name": "HeadlineQuartic",
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
  "slug": "headlinequartic--c2ae0ba8f05d1c6d7e0aedc6",
  "source": {
    "blob": "58ea6529763ece5155f34750beea02c85c5f784c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 318,
    "line": 312,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Statement/Variant60b49643bc2b4932c695deeb3036ff69f89d975de2c08160f58a743814410635.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c2ae0ba8f05d1c6d7e0aedc6b20a618f7127c8308e48acfe9a757c0745f85c8d",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Statement/Variant60b49643bc2b4932c695deeb3036ff69f89d975de2c08160f58a743814410635.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:250bdcfb5196ba7cf488a4751e3261dc1c4c55190305abee592e8c68e0a526b3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 312–318.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def HeadlineQuartic : Prop :=
  ∃ T₀ : ℝ, ∀ T : ℝ, T₀ ≤ T →
    (0.86864 : ℝ) * (Ncount T (2 * T) : ℝ) ≤ (N0simple T (2 * T) : ℝ) ∧
    (0.93432 : ℝ) * (Ncount T (2 * T) : ℝ) ≤ (Ndist T (2 * T) : ℝ)

/-- cumulative form (liminf over (0,T]):  c·N_{ξ′}(0,T) ≤ N⁰ˢ_{ξ′}(0,T) for large T, c = 0.85838 resp.
0.86864 — from the dyadic form by Zeta23.Assembly.dyadic, given H-RvM for ξ′ (N_{ξ′}(0,T) → ∞). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Statement/Variant60b49643bc2b4932c695deeb3036ff69f89d975de2c08160f58a743814410635.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Statement/Variant60b49643bc2b4932c695deeb3036ff69f89d975de2c08160f58a743814410635.lean#L312).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `58ea6529763ece5155f34750beea02c85c5f784c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
