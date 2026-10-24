# theta_indices_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:52bd8c73-3890-c4f4-a4cf-cbd0ba5b4037",
  "kind": "theorem",
  "lexical_name": "theta_indices_iff",
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
  "slug": "theta-indices-iff--1e7edb26a35b9f8128a2eb07",
  "source": {
    "blob": "ff7a54ab935c2fec7644c039196d0bca32c91eed",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 182,
    "line": 163,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaKernelTransport/Variant6688729af13f6abe238d69b623e13872bce183c443e7055754845cdcad673213.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1e7edb26a35b9f8128a2eb07f1277995ecf4bf3da5b74b6c3115a458233dfcb3",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaKernelTransport/Variant6688729af13f6abe238d69b623e13872bce183c443e7055754845cdcad673213.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:52bd8c73-3890-c4f4-a4cf-cbd0ba5b4037`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 163–182.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem theta_indices_iff (A : ℝ) (q k l : ℕ) (hq : 1 ≤ q) :
    (k ∈ Icc 1 ⌊Real.exp (2 * A)⌋₊ ∧
      l ∈ (Icc 1 ⌊Real.exp (2 * A)⌋₊).filter
        (fun l : ℕ ↦ ((q * k * l : ℕ) : ℝ) < Real.exp (2 * A))) ↔
      1 ≤ k ∧ 1 ≤ l ∧ ((q * k * l : ℕ) : ℝ) < Real.exp (2 * A) := by
  constructor
  · rintro ⟨hk, hl⟩
    exact ⟨(mem_Icc.mp hk).1, (mem_Icc.mp (mem_filter.mp hl).1).1,
      (mem_filter.mp hl).2⟩
  · rintro ⟨hk, hl, hcut⟩
    have hprod : q * k * l ≤ ⌊Real.exp (2 * A)⌋₊ :=
      (Nat.le_floor_iff (Real.exp_pos _).le).mpr hcut.le
    have hqk : 0 < q * k := Nat.mul_pos (by omega) (by omega)
    have hkprod : k ≤ q * k * l :=
      (Nat.le_mul_of_pos_left _ (by omega : 0 < q)).trans
        (Nat.le_mul_of_pos_right _ (by omega : 0 < l))
    have hlprod : l ≤ q * k * l := Nat.le_mul_of_pos_left _ hqk
    exact ⟨mem_Icc.mpr ⟨hk, hkprod.trans hprod⟩,
      mem_filter.mpr ⟨mem_Icc.mpr ⟨hl, hlprod.trans hprod⟩, hcut⟩⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaKernelTransport/Variant6688729af13f6abe238d69b623e13872bce183c443e7055754845cdcad673213.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaKernelTransport/Variant6688729af13f6abe238d69b623e13872bce183c443e7055754845cdcad673213.lean#L163).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ff7a54ab935c2fec7644c039196d0bca32c91eed` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
