# firstPrimeMoment_eq_baseline_sub_storage

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b0565be9-e899-e401-489f-6dbc84e84e0b",
  "kind": "theorem",
  "lexical_name": "firstPrimeMoment_eq_baseline_sub_storage",
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
  "slug": "firstprimemoment-eq-baseline-sub-storage--5bf60b0b489c90a963eeb720",
  "source": {
    "blob": "29a6dc4eec43d49605a0a955d00fc3d0a87533c0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 157,
    "line": 144,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/0cccba42bc282be2e393d8fd79ded37d59ee9c2162fabb19f82b6ee9cde808e1SourceMangoldtSt/Varianteb765fe4fddf670b39fc05bb4e4e36b12372fe3debe130b4caec7c879e0aeb65.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5bf60b0b489c90a963eeb72004537b75313e6fc5fb065d1b9846538ecc33bfc5",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/0cccba42bc282be2e393d8fd79ded37d59ee9c2162fabb19f82b6ee9cde808e1SourceMangoldtSt/Varianteb765fe4fddf670b39fc05bb4e4e36b12372fe3debe130b4caec7c879e0aeb65.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b0565be9-e899-e401-489f-6dbc84e84e0b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 144–157.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem firstPrimeMoment_eq_baseline_sub_storage {A : ℝ} (hA : 0 < A) :
    firstPrimeMoment A = firstPrimeBaseline A - firstPrimeStorage A := by
  unfold firstPrimeMoment firstPrimeBaseline firstPrimeStorage
  have h := finiteMangoldt_reconstruction (primeLogInventory (2 * A)) (originalSourceState A)
  rw [originalSourceState_norm hA] at h
  simp only [one_pow, mul_one] at h
  rw [← h]
  apply Finset.sum_congr rfl
  intro p hp
  rw [← sourceCorrelation_eq_inner hA]
  unfold closedPrimeWeight exponentialTest mangoldtCoefficient
  ring

/-- Disjoint translated support has square complement one, not zero. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/0cccba42bc282be2e393d8fd79ded37d59ee9c2162fabb19f82b6ee9cde808e1SourceMangoldtSt/Varianteb765fe4fddf670b39fc05bb4e4e36b12372fe3debe130b4caec7c879e0aeb65.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/0cccba42bc282be2e393d8fd79ded37d59ee9c2162fabb19f82b6ee9cde808e1SourceMangoldtSt/Varianteb765fe4fddf670b39fc05bb4e4e36b12372fe3debe130b4caec7c879e0aeb65.lean#L144).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `29a6dc4eec43d49605a0a955d00fc3d0a87533c0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
