# source_upper_square_eq_sampling

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fcd71a73-f1c8-72cf-cbfd-fc71b8c500c5",
  "kind": "theorem",
  "lexical_name": "source_upper_square_eq_sampling",
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
  "slug": "source-upper-square-eq-sampling--259f60a3d8d73bc07659282b",
  "source": {
    "blob": "2202929344c6c0b07f8012228ee33e49862b7076",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 210,
    "line": 192,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/UpperRowInversionStatements/Variant28671d16eedcb65853fb6cb6716c6781ebe44c47398b7b846f3f6bf1cf87bdba.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:259f60a3d8d73bc07659282b9ed8c52ce33676420cf6fea5898995dc69749f02",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/UpperRowInversionStatements/Variant28671d16eedcb65853fb6cb6716c6781ebe44c47398b7b846f3f6bf1cf87bdba.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fcd71a73-f1c8-72cf-cbfd-fc71b8c500c5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 192–210.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem source_upper_square_eq_sampling (A : ℝ) (hA : 1 ≤ A) :
    JointBoundaryTransport.rectangle
      (Ioc (⌊Real.exp A⌋₊ / 2) ⌊Real.exp A⌋₊)
      (Ioc (⌊Real.exp A⌋₊ / 2) ⌊Real.exp A⌋₊) (ThetaKernelTransport.thetaKernel A) =
      JointBoundaryTransport.rectangle
        (Ioc (⌊Real.exp A⌋₊ / 2) ⌊Real.exp A⌋₊)
        (Ioc (⌊Real.exp A⌋₊ / 2) ⌊Real.exp A⌋₊)
        (fun q ↦ SourceSampling.sourceSamplingKernel A q) := by
  unfold JointBoundaryTransport.rectangle
  apply sum_congr rfl
  intro i hi
  apply sum_congr rfl
  intro j hj
  rw [SourceUpperSupportScratch.thetaKernel_eq_sourceSamplingKernel A (i * j) hA
    (Nat.mul_pos (show 1 ≤ i by have := (mem_Ioc.mp hi).1; omega)
      (show 1 ≤ j by have := (mem_Ioc.mp hj).1; omega))
    (upper_square_product_threshold A i j (mem_Ioc.mp hi).1 (mem_Ioc.mp hj).1)]

/-- The unchanged source Q retains its smaller core and subtracts the complete upper Φ square. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/UpperRowInversionStatements/Variant28671d16eedcb65853fb6cb6716c6781ebe44c47398b7b846f3f6bf1cf87bdba.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/UpperRowInversionStatements/Variant28671d16eedcb65853fb6cb6716c6781ebe44c47398b7b846f3f6bf1cf87bdba.lean#L192).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2202929344c6c0b07f8012228ee33e49862b7076` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
