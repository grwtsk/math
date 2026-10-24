# exact_common_inventory_tent

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ca2b3859-1253-6dce-da6f-d6f92d625c70",
  "kind": "theorem",
  "lexical_name": "exact_common_inventory_tent",
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
  "slug": "exact-common-inventory-tent--4cc05884bf1732ccb70e19fe",
  "source": {
    "blob": "25b8042b0b769b00aa886c7a6267f1abdbefbe57",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 146,
    "line": 111,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FiniteTentPrimitiveIdentity/Variant48263fce10fe7ee1813e661a86c32ecebdda93a9838a4c3ee1724e61845505f4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4cc05884bf1732ccb70e19fe1d234a2734671a9e8daa84a134f4868a8573eac9",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FiniteTentPrimitiveIdentity/Variant48263fce10fe7ee1813e661a86c32ecebdda93a9838a4c3ee1724e61845505f4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ca2b3859-1253-6dce-da6f-d6f92d625c70`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 111–146.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exact_common_inventory_tent (b : ℕ → ℝ) (M : ℕ) {x : ℝ}
    (hx : 0 < x) (hM : 16 * x ≤ M) :
    closedPrimitive b (16 * x) - (3 / 2) * closedPrimitive b (4 * x) +
      (1 / 2) * closedPrimitive b x =
        (1 / Real.sqrt x) * ∑ n ∈ Finset.Icc 2 M, b n * tentWeight (n / x) := by
  have h4 : 4 * x ≤ M := by linarith
  have h1 : x ≤ M := by linarith
  calc
    _ = 2 * (∑ n ∈ Finset.Icc 2 M,
        b n * max (1 / Real.sqrt n - 1 / Real.sqrt (16 * x)) 0) -
      3 * (∑ n ∈ Finset.Icc 2 M,
        b n * max (1 / Real.sqrt n - 1 / Real.sqrt (4 * x)) 0) +
      (∑ n ∈ Finset.Icc 2 M, b n * max (1 / Real.sqrt n - 1 / Real.sqrt x) 0) := by
        rw [closedPrimitive_eq_hinge b M (by positivity : 0 < 16 * x) hM,
          closedPrimitive_eq_hinge b M (by positivity : 0 < 4 * x) h4,
          closedPrimitive_eq_hinge b M hx h1]
        unfold hingePrimitive
        ring
    _ = ∑ n ∈ Finset.Icc 2 M,
        (2 * (b n * max (1 / Real.sqrt n - 1 / Real.sqrt (16 * x)) 0) -
          3 * (b n * max (1 / Real.sqrt n - 1 / Real.sqrt (4 * x)) 0) +
          b n * max (1 / Real.sqrt n - 1 / Real.sqrt x) 0) := by
        rw [Finset.sum_add_distrib, Finset.sum_sub_distrib,
          ← Finset.mul_sum, ← Finset.mul_sum]
    _ = ∑ n ∈ Finset.Icc 2 M, (1 / Real.sqrt x) * (b n * tentWeight (n / x)) := by
        apply Finset.sum_congr rfl
        intro n hn
        have hn2 := (Finset.mem_Icc.mp hn).1
        have he := exact_scaled_three_hinges hx (by omega : 1 ≤ n)
        calc
          _ = b n * (2 * max (1 / Real.sqrt n - 1 / Real.sqrt (16 * x)) 0 -
              3 * max (1 / Real.sqrt n - 1 / Real.sqrt (4 * x)) 0 +
              max (1 / Real.sqrt n - 1 / Real.sqrt x) 0) := by ring
          _ = _ := by rw [he]; ring
    _ = _ := (Finset.mul_sum _ _ _).symm

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FiniteTentPrimitiveIdentity/Variant48263fce10fe7ee1813e661a86c32ecebdda93a9838a4c3ee1724e61845505f4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FiniteTentPrimitiveIdentity/Variant48263fce10fe7ee1813e661a86c32ecebdda93a9838a4c3ee1724e61845505f4.lean#L111).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `25b8042b0b769b00aa886c7a6267f1abdbefbe57` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
