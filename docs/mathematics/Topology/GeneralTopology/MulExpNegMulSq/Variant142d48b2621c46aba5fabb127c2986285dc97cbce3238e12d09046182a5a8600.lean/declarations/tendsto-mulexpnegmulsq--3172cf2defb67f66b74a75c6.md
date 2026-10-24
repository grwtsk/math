# tendsto_mulExpNegMulSq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fd28983d-6b3d-8d9b-986c-1b3180361e62",
  "kind": "theorem",
  "lexical_name": "tendsto_mulExpNegMulSq",
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
  "slug": "tendsto-mulexpnegmulsq--3172cf2defb67f66b74a75c6",
  "source": {
    "blob": "8770f79d53c521ca2456c1d3d418782326995dcd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 166,
    "line": 158,
    "path": "GRWTSK/Topology/GeneralTopology/MulExpNegMulSq/Variant142d48b2621c46aba5fabb127c2986285dc97cbce3238e12d09046182a5a8600.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3172cf2defb67f66b74a75c6214ef0e5287f85cca98e31a9615e1211a2a21c76",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/MulExpNegMulSq/Variant142d48b2621c46aba5fabb127c2986285dc97cbce3238e12d09046182a5a8600.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fd28983d-6b3d-8d9b-986c-1b3180361e62`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 158–166.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendsto_mulExpNegMulSq {x : ℝ} :
    Tendsto (fun ε => mulExpNegMulSq ε x) (𝓝 0) (𝓝 x) := by
  have : x = (fun ε : ℝ => mulExpNegMulSq ε x) 0 := by
    simp only [mulExpNegMulSq, zero_mul, neg_zero, exp_zero, mul_one]
  nth_rw 2 [this]
  apply Continuous.tendsto (Continuous.mul continuous_const (by fun_prop))

/-- For a fixed bounded function `g`, `mulExpNegMulSq ε ∘ g` is bounded by `norm g`,
uniformly in `ε ≥ 0`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/MulExpNegMulSq/Variant142d48b2621c46aba5fabb127c2986285dc97cbce3238e12d09046182a5a8600.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/MulExpNegMulSq/Variant142d48b2621c46aba5fabb127c2986285dc97cbce3238e12d09046182a5a8600.lean#L158).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8770f79d53c521ca2456c1d3d418782326995dcd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
