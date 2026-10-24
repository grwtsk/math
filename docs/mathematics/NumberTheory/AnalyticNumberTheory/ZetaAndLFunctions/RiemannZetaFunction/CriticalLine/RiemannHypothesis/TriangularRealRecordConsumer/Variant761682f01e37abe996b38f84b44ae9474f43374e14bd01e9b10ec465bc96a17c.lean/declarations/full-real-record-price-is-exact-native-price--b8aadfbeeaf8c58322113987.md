# full_real_record_price_is_exact_native_price

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1160a0f3-8469-e487-4474-248af6514aef",
  "kind": "theorem",
  "lexical_name": "full_real_record_price_is_exact_native_price",
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
  "slug": "full-real-record-price-is-exact-native-price--b8aadfbeeaf8c58322113987",
  "source": {
    "blob": "357859146583c87516a9db9ffdcff4f8793c157b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 67,
    "line": 53,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TriangularRealRecordConsumer/Variant761682f01e37abe996b38f84b44ae9474f43374e14bd01e9b10ec465bc96a17c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b8aadfbeeaf8c58322113987bdf6af9b81f6eebeb6a5d231bd1a132274a49039",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TriangularRealRecordConsumer/Variant761682f01e37abe996b38f84b44ae9474f43374e14bd01e9b10ec465bc96a17c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1160a0f3-8469-e487-4474-248af6514aef`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 53–67.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem full_real_record_price_is_exact_native_price (j : ℕ) {a : ℝ}
    (ha : 0 ≤ a) (p : ℝ) : realRecordPrice j a p = recordPrice j a p := by
  have hM : 2 ≤ linearSize j := by unfold linearSize; omega
  have hlo : (1 : ℝ) ≤ ((linearSize j) ^ 2 : ℕ) := by
    exact_mod_cast (show 1 ≤ (linearSize j) ^ 2 by nlinarith)
  have hhi : (1 : ℝ) ≤ ((linearSize j) ^ 2 + 2 * linearSize j + 1 : ℕ) := by
    exact_mod_cast (show 1 ≤ (linearSize j) ^ 2 + 2 * linearSize j + 1 by omega)
  unfold realRecordPrice recordPrice
  rw [full_real_running_record_is_unchanged_primitive linearSize linear_size_sufficient ha hhi,
    full_real_running_record_is_unchanged_primitive linearSize linear_size_sufficient ha hlo,
    exact_integer_bank_primitive, exact_integer_bank_primitive,
    every_endpoint_is_its_bank_record linearSize linear_size_sufficient ha,
    complete_native_width_is_exact_real_width]
  simp only [Nat.add_assoc]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TriangularRealRecordConsumer/Variant761682f01e37abe996b38f84b44ae9474f43374e14bd01e9b10ec465bc96a17c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TriangularRealRecordConsumer/Variant761682f01e37abe996b38f84b44ae9474f43374e14bd01e9b10ec465bc96a17c.lean#L53).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `357859146583c87516a9db9ffdcff4f8793c157b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
