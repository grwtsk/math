# native_scaled_deficit_square

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ad40fcb8-2f61-ecbf-7ee5-b617d08269dd",
  "kind": "theorem",
  "lexical_name": "native_scaled_deficit_square",
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
  "slug": "native-scaled-deficit-square--b1cd469d8f1396d78d56d589",
  "source": {
    "blob": "6fc7e2929a98b6a41527ca982e2ccb32023d0274",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 57,
    "line": 45,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TailEnergyBarrier/Variant034ed4fc2bd6a0d48db3daf6e858c3f7710b8e1e58f63bdaeadc641107ff581e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b1cd469d8f1396d78d56d589cda8fdef5f53b7ce1db4ae54f6e418af31de3f1a",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TailEnergyBarrier/Variant034ed4fc2bd6a0d48db3daf6e858c3f7710b8e1e58f63bdaeadc641107ff581e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ad40fcb8-2f61-ecbf-7ee5-b617d08269dd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 45–57.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem native_scaled_deficit_square {Δ E T : ℝ}
    (henergy : Δ ^ 2 ≤ (2 * Real.exp (-T / 2)) * E) :
    (Δ * Real.exp (T / 4)) ^ 2 ≤ 2 * E := by
  have hexp : Real.exp (-T / 2) * (Real.exp (T / 4)) ^ 2 = 1 := by
    rw [pow_two, ← mul_assoc, ← Real.exp_add, ← Real.exp_add]
    rw [show -T / 2 + T / 4 + T / 4 = 0 by ring, Real.exp_zero]
  calc
    _ = Δ ^ 2 * (Real.exp (T / 4)) ^ 2 := by ring
    _ ≤ ((2 * Real.exp (-T / 2)) * E) * (Real.exp (T / 4)) ^ 2 :=
      mul_le_mul_of_nonneg_right henergy (sq_nonneg _)
    _ = 2 * E * (Real.exp (-T / 2) * (Real.exp (T / 4)) ^ 2) := by ring
    _ = 2 * E := by rw [hexp]; ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TailEnergyBarrier/Variant034ed4fc2bd6a0d48db3daf6e858c3f7710b8e1e58f63bdaeadc641107ff581e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TailEnergyBarrier/Variant034ed4fc2bd6a0d48db3daf6e858c3f7710b8e1e58f63bdaeadc641107ff581e.lean#L45).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6fc7e2929a98b6a41527ca982e2ccb32023d0274` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
