# vsq_bounds_negative

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2ce017ad-1ef9-d49b-8453-db21cb05fb7b",
  "kind": "theorem",
  "lexical_name": "vsq_bounds_negative",
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
  "slug": "vsq-bounds-negative--7e86ca178516f02eb2dc3d0b",
  "source": {
    "blob": "a0f8fb1906130fa6d1676c152247b89e724a5532",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 69,
    "line": 61,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Lyapunov/Variant91c1b656f7765af4ad5de5cafaa4adf878d9c0ccf42d510a990add39267b2762.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7e86ca178516f02eb2dc3d0b094a082a4f3167da2858890a4ebb1c084fb2eb2b",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Lyapunov/Variant91c1b656f7765af4ad5de5cafaa4adf878d9c0ccf42d510a990add39267b2762.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2ce017ad-1ef9-d49b-8453-db21cb05fb7b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 61–69.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem vsq_bounds_negative :
    ∀ v ∈ Set.Icc (-1:ℝ) 0, v * v ≤ (1 : ℚ) := by
  certify_bound

-- For the energy derivative bound, we use a different formulation
-- -(2/5) * v² ≤ 0 is equivalent to proving v² ≥ 0
-- But we'll prove the min of -(2/5)v² is -2/5 (at v=±1) which is < 0

-- On [0, 1]: -2/5 * v * v has min at v=1 giving -2/5, max at v=0 giving 0
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Lyapunov/Variant91c1b656f7765af4ad5de5cafaa4adf878d9c0ccf42d510a990add39267b2762.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Lyapunov/Variant91c1b656f7765af4ad5de5cafaa4adf878d9c0ccf42d510a990add39267b2762.lean#L61).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a0f8fb1906130fa6d1676c152247b89e724a5532` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
