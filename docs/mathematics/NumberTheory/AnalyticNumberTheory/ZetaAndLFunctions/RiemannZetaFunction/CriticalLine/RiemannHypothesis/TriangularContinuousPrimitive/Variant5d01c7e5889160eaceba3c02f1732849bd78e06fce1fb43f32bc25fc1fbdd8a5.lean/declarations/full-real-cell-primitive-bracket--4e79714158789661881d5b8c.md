# full_real_cell_primitive_bracket

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:03eb44ff-1821-1bd1-e6b1-a758e18d2cf7",
  "kind": "theorem",
  "lexical_name": "full_real_cell_primitive_bracket",
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
  "slug": "full-real-cell-primitive-bracket--4e79714158789661881d5b8c",
  "source": {
    "blob": "bb8794583f3e168f66e0e98e4f48837984a787b5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 67,
    "line": 56,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TriangularContinuousPrimitive/Variant5d01c7e5889160eaceba3c02f1732849bd78e06fce1fb43f32bc25fc1fbdd8a5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4e79714158789661881d5b8cc04d5d656cf464d6e3542ad3479e1a8c19a1c40a",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TriangularContinuousPrimitive/Variant5d01c7e5889160eaceba3c02f1732849bd78e06fce1fb43f32bc25fc1fbdd8a5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:03eb44ff-1821-1bd1-e6b1-a758e18d2cf7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 56–67.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem full_real_cell_primitive_bracket (M : ℕ → ℕ) (hM : ∀ j, j + 2 ≤ M j)
    {n : ℕ} (hn : 1 ≤ n) {a x : ℝ} (ha : 0 ≤ a)
    (hx : (n : ℝ) ≤ x) (hx1 : x < (n : ℝ) + 1) :
    path M a n ≤ primitive M a x ∧ primitive M a x ≤ path M a (n + 1) := by
  rw [exact_closed_bank_cell M hM hn hx hx1]
  have hB := (bank_square_root_storage M n ha).1
  have hlo := mul_nonneg hB (cellClock_nonneg hn hx)
  have hhi := mul_le_mul_of_nonneg_left
    (cellClock_le_full hn hx (by simpa only [Nat.cast_add, Nat.cast_one] using hx1.le)) hB
  have hs := unchanged_bank_primitive_increment M hM hn a
  constructor <;> linarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TriangularContinuousPrimitive/Variant5d01c7e5889160eaceba3c02f1732849bd78e06fce1fb43f32bc25fc1fbdd8a5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TriangularContinuousPrimitive/Variant5d01c7e5889160eaceba3c02f1732849bd78e06fce1fb43f32bc25fc1fbdd8a5.lean#L56).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bb8794583f3e168f66e0e98e4f48837984a787b5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
