# LoopInv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:24a7f83823002f6f15aec87f09815e9093e738212ef6feb873431d3c3f42e774",
  "kind": "structure",
  "lexical_name": "LoopInv",
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
  "slug": "loopinv--8ebb4714f9f40f77aab00d04",
  "source": {
    "blob": "2c34ebf406adcf64d891fdb369f7cdcd9e52100f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 156,
    "line": 148,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/NumericCert/Varianteeae8d2c6073eaaad9438010e1788545d4334a933b5c5aca95492cac48d9fc29.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8ebb4714f9f40f77aab00d04d5f84ab741852297787c0e979832ac8084d2b6e9",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/NumericCert/Varianteeae8d2c6073eaaad9438010e1788545d4334a933b5c5aca95492cac48d9fc29.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:24a7f83823002f6f15aec87f09815e9093e738212ef6feb873431d3c3f42e774`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 148–156.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure LoopInv (S : ℕ → ℝ) (N K : ℕ) (s : St) : Prop where
  tlo : (s.Tlo : ℝ) ≤ K * T S s.j
  thi : (K : ℝ) * T S s.j ≤ s.Thi
  ulo : (s.Ulo : ℝ) ≤ K * U S s.j
  uhi : (K : ℝ) * U S s.j ≤ s.Uhi
  dl : ∀ i, 1 ≤ i → i ≤ s.j → |(2 * (N : ℝ) ^ 2 * K) * Dleft S N i| ≤ (s.M1 : ℝ)
  dr : ∀ i, 1 ≤ i → i ≤ s.j → |(2 * (N : ℝ) ^ 2 * K) * Dright S N i| ≤ (s.M1 : ℝ)
  eg : ∀ i, 1 ≤ i → i ≤ s.j → |(6 * (N : ℝ) ^ 3 * K) * Egrid S N i| ≤ (s.M2 : ℝ)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/NumericCert/Varianteeae8d2c6073eaaad9438010e1788545d4334a933b5c5aca95492cac48d9fc29.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/NumericCert/Varianteeae8d2c6073eaaad9438010e1788545d4334a933b5c5aca95492cac48d9fc29.lean#L148).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2c34ebf406adcf64d891fdb369f7cdcd9e52100f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
