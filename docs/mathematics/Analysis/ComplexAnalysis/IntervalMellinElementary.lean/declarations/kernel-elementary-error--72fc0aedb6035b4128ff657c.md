# kernel_elementary_error

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f8fd1819-55d3-6a3b-426b-9983ef95f3be",
  "kind": "theorem",
  "lexical_name": "kernel_elementary_error",
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
  "slug": "kernel-elementary-error--72fc0aedb6035b4128ff657c",
  "source": {
    "blob": "97ddc927d85898a7f4df2932bf32d3cbe72b05a5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 128,
    "line": 114,
    "path": "GRWTSK/Analysis/Complex/IntervalMellinElementary.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:72fc0aedb6035b4128ff657c3a7ff38d9ede253dd63e23c4b989623f4ce5e2f4",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/IntervalMellinElementary.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f8fd1819-55d3-6a3b-426b-9983ef95f3be`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 114–128.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem kernel_elementary_error (x : ℕ → ℝ) (N : ℕ) (hx : Monotone x)
    (ha : 1 < x 0) {β : ℝ} {z : ℂ} (hz : z.re ≤ β)
    (L M : ℕ → ℕ) (hL : ∀ i < N, 0 < L i)
    (hguard : ∀ i < N, nodeBound z (x i) (L i) / (M i + 1 : ℕ) ≤ (1 / 2 : ℝ)) :
    ‖kernel (x 0) (x N) z -
      ∑ i ∈ Finset.range N, (x (i + 1) - x i) • nodeValue z (x i) (L i) (M i)‖ ≤
      partitionError x N β z +
        ∑ i ∈ Finset.range N, (x (i + 1) - x i) * nodeError z (x i) (L i) (M i) := by
  apply kernel_sample_error x N hx ha hz
  intro i hi
  exact density_node_error z (ha.le.trans (hx (Nat.zero_le i)))
    (L i) (M i) (hL i hi) (hguard i hi)

/-- For Re(z)<=2 the inherited spatial density majorant is exactly one.
This gives a finite arithmetic mesh radius, without another exponential call. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ComplexAnalysis/IntervalMellinElementary.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Complex/IntervalMellinElementary.lean#L114).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `97ddc927d85898a7f4df2932bf32d3cbe72b05a5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
