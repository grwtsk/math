# odd_upper_interval_theta_eq_sampling

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:654ff887-ffed-89b8-7275-b44e5f3033ea",
  "kind": "theorem",
  "lexical_name": "odd_upper_interval_theta_eq_sampling",
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
  "slug": "odd-upper-interval-theta-eq-sampling--1ce01266acc8b923071642a2",
  "source": {
    "blob": "8a97ddf6856ef369fb7bcca605c63cbb3dc4c47a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 156,
    "line": 143,
    "path": "GRWTSK/Topology/GeneralTopology/OddUpperRowDyadic/Variantc5c5f9c62cafbb44a5144a965ef27bccd9d63ea8942e31b6e4382197fbb2a18e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1ce01266acc8b923071642a25613df9ffffc8f88c656ce21f8c40e68b87a20a4",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/OddUpperRowDyadic/Variantc5c5f9c62cafbb44a5144a965ef27bccd9d63ea8942e31b6e4382197fbb2a18e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:654ff887-ffed-89b8-7275-b44e5f3033ea`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 143–156.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem odd_upper_interval_theta_eq_sampling (A : ℝ) (i L U : ℕ)
    (hA : 1 ≤ A) (hi : ⌊Real.exp A⌋₊/2 < i) (hL : ⌊Real.exp A⌋₊/2 ≤ L) :
    (∑ j ∈ (Ioc L U).filter (fun j ↦ Nat.Coprime j 2),
      (ArithmeticFunction.moebius j : ℝ)*ThetaKernelTransport.thetaKernel A (i*j)) =
      ∑ j ∈ (Ioc L U).filter (fun j ↦ Nat.Coprime j 2),
        (ArithmeticFunction.moebius j : ℝ)*SourceSampling.sourceSamplingKernel A ((i*j:ℕ):ℝ) := by
  apply sum_congr rfl
  intro j hj
  have hjhi : ⌊Real.exp A⌋₊/2 < j := hL.trans_lt (mem_Ioc.mp (mem_filter.mp hj).1).1
  rw [SourceUpperSupport.thetaKernel_eq_sourceSamplingKernel A (i*j) hA
    (Nat.mul_pos (by omega) (by omega))
    (UpperRowInversion.upper_square_product_threshold A i j hi hjhi)]

/-- A clipped odd upper row retains the full lower-column kernel and every omitted upper term. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/OddUpperRowDyadic/Variantc5c5f9c62cafbb44a5144a965ef27bccd9d63ea8942e31b6e4382197fbb2a18e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/OddUpperRowDyadic/Variantc5c5f9c62cafbb44a5144a965ef27bccd9d63ea8942e31b6e4382197fbb2a18e.lean#L143).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8a97ddf6856ef369fb7bcca605c63cbb3dc4c47a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
