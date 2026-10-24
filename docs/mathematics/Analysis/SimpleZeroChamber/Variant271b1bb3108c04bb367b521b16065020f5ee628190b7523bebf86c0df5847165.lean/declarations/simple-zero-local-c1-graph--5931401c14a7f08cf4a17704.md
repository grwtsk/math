# simple_zero_local_c1_graph

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2e0e7be0-5a14-bd9b-8168-900977c8120b",
  "kind": "theorem",
  "lexical_name": "simple_zero_local_c1_graph",
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
  "slug": "simple-zero-local-c1-graph--5931401c14a7f08cf4a17704",
  "source": {
    "blob": "71fc6f579601025d6621d8fee82118e3f49a1c24",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 61,
    "line": 49,
    "path": "GRWTSK/Analysis/SimpleZeroChamber/Variant271b1bb3108c04bb367b521b16065020f5ee628190b7523bebf86c0df5847165.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5931401c14a7f08cf4a177046ba4fd768c03f461ab03a333d81a3b294ca0be34",
  "verification": {
    "reference": "docs/verification/Analysis/SimpleZeroChamber/Variant271b1bb3108c04bb367b521b16065020f5ee628190b7523bebf86c0df5847165.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2e0e7be0-5a14-bd9b-8168-900977c8120b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 49–61.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem simple_zero_local_c1_graph {g : ℝ × ℝ → ℝ} {u : ℝ × ℝ}
    (hc : ContDiffAt ℝ 1 g u) (hz : g u = 0)
    (hs : spatialSlope g u ≠ 0) :
    ∃ z : ℝ → ℝ, z u.1 = u.2 ∧ ContDiffAt ℝ 1 z u.1 ∧
      (∀ᶠ l in 𝓝 u.1, g (l,z l) = 0) ∧
      (∀ᶠ v in 𝓝 u, g v = 0 ↔ z v.1 = v.2) := by
  let hi := spatial_map_invertible hs
  let z := hc.implicitFunction (by decide) hi
  refine ⟨z, hc.implicitFunction_apply_self _ hi,
    hc.contDiffAt_implicitFunction _ hi, ?_, ?_⟩
  · simpa only [hz] using hc.eventually_apply_implicitFunction (by decide) hi
  · simpa only [hz] using hc.eventually_apply_eq_iff_implicitFunction (by decide) hi

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/SimpleZeroChamber/Variant271b1bb3108c04bb367b521b16065020f5ee628190b7523bebf86c0df5847165.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/SimpleZeroChamber/Variant271b1bb3108c04bb367b521b16065020f5ee628190b7523bebf86c0df5847165.lean#L49).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `71fc6f579601025d6621d8fee82118e3f49a1c24` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
