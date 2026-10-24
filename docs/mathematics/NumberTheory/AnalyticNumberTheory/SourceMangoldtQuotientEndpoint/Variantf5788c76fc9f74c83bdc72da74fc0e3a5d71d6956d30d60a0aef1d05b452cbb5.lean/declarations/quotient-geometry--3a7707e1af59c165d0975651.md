# quotient_geometry

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ad77e0b9-54a8-073b-a5b4-f09631eb36b6",
  "kind": "theorem",
  "lexical_name": "quotient_geometry",
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
  "slug": "quotient-geometry--3a7707e1af59c165d0975651",
  "source": {
    "blob": "9fb96680ff30c7595c0d48bf7517e20493618e45",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 86,
    "line": 63,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/SourceMangoldtQuotientEndpoint/Variantf5788c76fc9f74c83bdc72da74fc0e3a5d71d6956d30d60a0aef1d05b452cbb5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3a7707e1af59c165d0975651de74472d1f6ac73ab1ced3bc2a6e371e62e2fdd1",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/SourceMangoldtQuotientEndpoint/Variantf5788c76fc9f74c83bdc72da74fc0e3a5d71d6956d30d60a0aef1d05b452cbb5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ad77e0b9-54a8-073b-a5b4-f09631eb36b6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 63–86.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem quotient_geometry (A : ℝ) (hA : 1 ≤ A) :
    let a := vaughanCutoff A + 1
    let N := sourceKernelCutoff A
    let K := N / a
    2 ≤ a ∧ a ≤ K ∧ N / K = a ∧ N < 2 * (a * K) := by
  let a := vaughanCutoff A + 1
  let N := sourceKernelCutoff A
  let K := N / a
  have ha : 2 ≤ a := by have := vaughanCutoff_pos A hA; omega
  have ha0 : 0 < a := by omega
  have hs : a * a ≤ N := square_adjacent_le_upper A hA
  have hK : a ≤ K := (Nat.le_div_iff_mul_le ha0).2 hs
  have hk0 : 0 < K := by omega
  have hlo : a * K ≤ N := by simpa only [Nat.mul_comm] using Nat.div_mul_le_self N a
  have hhi : N < (K + 1) * a := (Nat.div_lt_iff_lt_mul ha0).1 (Nat.lt_succ_self K)
  have hnext : N < (a + 1) * K := by nlinarith
  have hqlo : a ≤ N / K := (Nat.le_div_iff_mul_le hk0).2 hlo
  have hqhi : N / K < a + 1 := (Nat.div_lt_iff_lt_mul hk0).2 hnext
  have hq : N / K = a := by omega
  have hp : a ≤ a * K := by
    simpa using Nat.mul_le_mul_left a (show 1 ≤ K by omega)
  have hdouble : N < 2 * (a * K) := by nlinarith
  exact ⟨ha, hK, hq, hdouble⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/SourceMangoldtQuotientEndpoint/Variantf5788c76fc9f74c83bdc72da74fc0e3a5d71d6956d30d60a0aef1d05b452cbb5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/SourceMangoldtQuotientEndpoint/Variantf5788c76fc9f74c83bdc72da74fc0e3a5d71d6956d30d60a0aef1d05b452cbb5.lean#L63).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9fb96680ff30c7595c0d48bf7517e20493618e45` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
