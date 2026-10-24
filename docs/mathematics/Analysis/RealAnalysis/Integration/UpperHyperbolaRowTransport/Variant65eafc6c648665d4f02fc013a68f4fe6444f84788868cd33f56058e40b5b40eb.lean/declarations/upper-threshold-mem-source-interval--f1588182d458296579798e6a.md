# upper_threshold_mem_source_interval

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1ff9f487-730c-7134-b78d-8d209b7bf0e5",
  "kind": "theorem",
  "lexical_name": "upper_threshold_mem_source_interval",
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
  "slug": "upper-threshold-mem-source-interval--f1588182d458296579798e6a",
  "source": {
    "blob": "52a9e039e04c410a5f3e82f41978041651b71a76",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 65,
    "line": 46,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/UpperHyperbolaRowTransport/Variant65eafc6c648665d4f02fc013a68f4fe6444f84788868cd33f56058e40b5b40eb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f1588182d458296579798e6a81cb30d4f16cfac2eb9818ba23b662fc965dd167",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/UpperHyperbolaRowTransport/Variant65eafc6c648665d4f02fc013a68f4fe6444f84788868cd33f56058e40b5b40eb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1ff9f487-730c-7134-b78d-8d209b7bf0e5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 46–65.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem upper_threshold_mem_source_interval (A : ℝ) (i j : ℕ)
    (hi : i ∈ Ioc (⌊Real.exp A⌋₊ / 2) ⌊Real.exp A⌋₊)
    (hj : j ∈ Ioc (⌊Real.exp A⌋₊ / 2) ⌊Real.exp A⌋₊) :
    ((i * max i j : ℕ) : ℝ) ∈ Set.Icc 1 (Real.exp (2 * A)) := by
  have hi1 : 1 ≤ i := by have := (mem_Ioc.mp hi).1; omega
  have hj1 : 1 ≤ j := by have := (mem_Ioc.mp hj).1; omega
  have ht1 : 1 ≤ i * max i j := by nlinarith [le_max_left i j]
  have htN : i * max i j ≤ ⌊Real.exp A⌋₊ * ⌊Real.exp A⌋₊ :=
    Nat.mul_le_mul (mem_Ioc.mp hi).2 (max_le (mem_Ioc.mp hi).2 (mem_Ioc.mp hj).2)
  have hN := Nat.floor_le (Real.exp_pos A).le
  have hN0 : (0 : ℝ) ≤ ⌊Real.exp A⌋₊ := Nat.cast_nonneg _
  have htN' : ((i * max i j : ℕ) : ℝ) ≤ (⌊Real.exp A⌋₊ : ℝ) ^ 2 := by
    exact_mod_cast (show i * max i j ≤ ⌊Real.exp A⌋₊ ^ 2 by simpa [pow_two] using htN)
  have he : Real.exp (2 * A) = Real.exp A * Real.exp A := by
    rw [two_mul, Real.exp_add]
  refine ⟨by exact_mod_cast ht1, ?_⟩
  rw [he]
  nlinarith [Real.exp_pos A]

/-- A closed tail of an integrable derivative is genuinely integrable, including its endpoint. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/UpperHyperbolaRowTransport/Variant65eafc6c648665d4f02fc013a68f4fe6444f84788868cd33f56058e40b5b40eb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/UpperHyperbolaRowTransport/Variant65eafc6c648665d4f02fc013a68f4fe6444f84788868cd33f56058e40b5b40eb.lean#L46).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `52a9e039e04c410a5f3e82f41978041651b71a76` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
