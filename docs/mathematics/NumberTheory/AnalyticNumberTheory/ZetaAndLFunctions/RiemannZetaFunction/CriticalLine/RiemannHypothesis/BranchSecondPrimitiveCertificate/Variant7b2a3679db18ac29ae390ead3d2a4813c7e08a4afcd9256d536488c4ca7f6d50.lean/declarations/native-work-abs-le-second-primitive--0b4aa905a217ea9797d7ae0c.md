# native_work_abs_le_second_primitive

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5df3fc56-0431-55c2-b956-4733cd354941",
  "kind": "theorem",
  "lexical_name": "native_work_abs_le_second_primitive",
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
  "slug": "native-work-abs-le-second-primitive--0b4aa905a217ea9797d7ae0c",
  "source": {
    "blob": "ce6f383d1e2429b10d9b048e343499c30ddcfdc1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 199,
    "line": 192,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/BranchSecondPrimitiveCertificate/Variant7b2a3679db18ac29ae390ead3d2a4813c7e08a4afcd9256d536488c4ca7f6d50.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0b4aa905a217ea9797d7ae0c054279add031e2a8add7a3de705ac9b3c5b5b8bd",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/BranchSecondPrimitiveCertificate/Variant7b2a3679db18ac29ae390ead3d2a4813c7e08a4afcd9256d536488c4ca7f6d50.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5df3fc56-0431-55c2-b956-4733cd354941`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 192–199.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem native_work_abs_le_second_primitive {A B : ℝ} (hA : 1 ≤ A) (hB0 : 0 ≤ B)
    (hB : ∀ t ∈ Icc (2 * Real.log A) (2 * A), |nativeSecondPrimitive A t| ≤ B) :
    |mertensKernelIntegral A (sourceMobiusKernel A)| ≤ (9336 / A) * B := by
  apply (native_work_abs_le_second_variation hA hB).trans
  simpa only [mul_comm] using mul_le_mul_of_nonneg_left
    ((actual_secondVariationPrice_le hA).trans (secondPrimitivePrice_le hA)) hB0

/-- The full scale-dependent Q price is already proved for the actual source. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/BranchSecondPrimitiveCertificate/Variant7b2a3679db18ac29ae390ead3d2a4813c7e08a4afcd9256d536488c4ca7f6d50.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/BranchSecondPrimitiveCertificate/Variant7b2a3679db18ac29ae390ead3d2a4813c7e08a4afcd9256d536488c4ca7f6d50.lean#L192).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ce6f383d1e2429b10d9b048e343499c30ddcfdc1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
