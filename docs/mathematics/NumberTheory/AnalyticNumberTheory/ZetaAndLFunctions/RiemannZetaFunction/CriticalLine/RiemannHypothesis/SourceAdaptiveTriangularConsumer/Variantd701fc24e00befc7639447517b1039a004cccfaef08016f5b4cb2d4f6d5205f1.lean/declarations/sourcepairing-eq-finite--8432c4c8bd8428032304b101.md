# sourcePairing_eq_finite

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8677b543-037f-a935-1a93-f75d1072f4ed",
  "kind": "theorem",
  "lexical_name": "sourcePairing_eq_finite",
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
  "slug": "sourcepairing-eq-finite--8432c4c8bd8428032304b101",
  "source": {
    "blob": "c1fce7ccbbd1420c8378d77535fb6029f500f557",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 160,
    "line": 146,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceAdaptiveTriangularConsumer/Variantd701fc24e00befc7639447517b1039a004cccfaef08016f5b4cb2d4f6d5205f1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8432c4c8bd8428032304b101a978d0c1ffbab36f729ac1ca1076d9b661059900",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceAdaptiveTriangularConsumer/Variantd701fc24e00befc7639447517b1039a004cccfaef08016f5b4cb2d4f6d5205f1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8677b543-037f-a935-1a93-f75d1072f4ed`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 146–160.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sourcePairing_eq_finite (A : ℝ) (hA : 1 ≤ A) :
    sourceHankelPairing A = ∑ m ∈ longInventory A, ∑ n ∈ longInventory A,
      coefficient A m n * sourceCorrelation explicitSecondDerivative A (frequency m n) := by
  unfold sourceHankelPairing mangoldtForwardProfile centeredMobiusReflectedProfile
  rw [finite_hankel_pairing (by linarith : 0 < A) _ _ _ _
    (fun _ hm => longInventory_pos A hm) (fun _ hn => longInventory_pos A hn)]
  apply Finset.sum_congr rfl
  intro m hm
  apply Finset.sum_congr rfl
  intro n hn
  have hmpos : 0 < (m : ℝ) := by exact_mod_cast longInventory_pos A hm
  have hnpos : 0 < (n : ℝ) := by exact_mod_cast longInventory_pos A hn
  rw [Real.log_mul hmpos.ne' hnpos.ne']
  rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceAdaptiveTriangularConsumer/Variantd701fc24e00befc7639447517b1039a004cccfaef08016f5b4cb2d4f6d5205f1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceAdaptiveTriangularConsumer/Variantd701fc24e00befc7639447517b1039a004cccfaef08016f5b4cb2d4f6d5205f1.lean#L146).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c1fce7ccbbd1420c8378d77535fb6029f500f557` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
